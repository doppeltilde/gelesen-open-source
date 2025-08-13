document.addEventListener("DOMContentLoaded", () => {
  const owner = "doppeltilde";
  const repo = "gelesen-open-source";
  const milestoneNumber = 3;

  const issuesList = document.getElementById("issues-list");
  const loadingMessage = document.getElementById("loading");
  const darkModeToggle = document.getElementById("darkModeToggle");
  const body = document.body;

  function parseLinkHeader(header) {
    if (!header || header.length === 0) {
      return null;
    }
    const parts = header.split(",");
    const links = {};
    parts.forEach((p) => {
      const section = p.split(";");
      if (section.length !== 2) {
        return;
      }
      const url = section[0].replace(/<(.*)>/, "$1").trim();
      const name = section[1].replace(/rel="(.*)"/, "$1").trim();
      links[name] = url;
    });
    return links;
  }

  async function fetchAllMilestoneIssues() {
    let allIssues = [];
    let url = `https://api.github.com/repos/${owner}/${repo}/issues?milestone=${milestoneNumber}&state=closed&per_page=100`;

    while (url) {
      try {
        const response = await fetch(url);
        if (!response.ok) {
          if (response.status === 403) {
            const resetTime = response.headers.get("X-RateLimit-Reset");
            const now = Math.floor(Date.now() / 1000);
            const waitSeconds = resetTime ? parseInt(resetTime) - now : 60;
            throw new Error(
              `GitHub API rate limit exceeded. Please wait approximately ${waitSeconds} seconds.`,
            );
          }
          throw new Error(
            `GitHub API error: ${response.status} - ${response.statusText}`,
          );
        }
        const issues = await response.json();
        allIssues = allIssues.concat(issues);
        const linkHeader = response.headers.get("Link");
        const links = parseLinkHeader(linkHeader);
        url = links && links.next ? links.next : null;
      } catch (error) {
        console.error("Error during pagination:", error);
        throw error;
      }
    }
    return allIssues;
  }

  // --- Dark Mode Logic ---
  function setDarkMode(isDark) {
    if (isDark) {
      body.classList.add("dark-mode");
      localStorage.setItem("darkMode", "enabled");
    } else {
      body.classList.remove("dark-mode");
      localStorage.setItem("darkMode", "disabled");
    }
    darkModeToggle.checked = isDark;
  }

  const savedDarkMode = localStorage.getItem("darkMode");
  if (savedDarkMode === "enabled") {
    setDarkMode(true);
  } else {
    setDarkMode(false);
  }

  darkModeToggle.addEventListener("change", () => {
    setDarkMode(darkModeToggle.checked);
  });
  // --- End Dark Mode Logic ---

  // Main execution flow for displaying issues
  async function displayIssues() {
    try {
      loadingMessage.textContent =
        "Fetching issues (this might take a moment for many issues)...";
      const issues = await fetchAllMilestoneIssues();
      loadingMessage.style.display = "none";

      if (issues.length === 0) {
        issuesList.innerHTML =
          "<li>No closed issues found for this milestone.</li>";
        return;
      }

      issues.forEach((issue) => {
        const listItem = document.createElement("li");

        const issueLink = document.createElement("a");
        issueLink.href = issue.html_url;
        issueLink.textContent = `#${issue.number} - ${issue.title}`;
        issueLink.target = "_blank";

        // Create a div for author info to contain both image and name
        const authorContainer = document.createElement("div");
        authorContainer.classList.add("author-container");

        // Create image element for author avatar
        const authorAvatar = document.createElement("img");
        authorAvatar.classList.add("author-avatar");
        if (issue.user && issue.user.avatar_url) {
          authorAvatar.src = issue.user.avatar_url;
          authorAvatar.alt = `${issue.user.login}'s avatar`;
        } else {
          authorAvatar.src = "https://avatars.githubusercontent.com/u/1000?v=4"; // Placeholder or default
          authorAvatar.alt = "Default avatar";
        }

        // Create a span for the author name
        const authorName = document.createElement("span");
        authorName.classList.add("author-name");
        authorName.textContent = issue.user ? issue.user.login : "Unknown";

        authorContainer.appendChild(authorAvatar);
        authorContainer.appendChild(authorName);

        const issueBodyDiv = document.createElement("div");
        issueBodyDiv.classList.add("issue-body");

        if (issue.body) {
          issueBodyDiv.innerHTML = marked.parse(issue.body);
        } else {
          issueBodyDiv.innerHTML = "<p>No description provided.</p>";
        }

        listItem.appendChild(issueLink);
        listItem.appendChild(authorContainer); // Append the new author container
        listItem.appendChild(issueBodyDiv);
        issuesList.appendChild(listItem);
      });
    } catch (error) {
      console.error("Failed to display GitHub issues:", error);
      loadingMessage.textContent = `Failed to load issues: ${error.message}`;
    }
  }

  displayIssues();
});
