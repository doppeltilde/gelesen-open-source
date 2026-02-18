---
title: Release 1.5.7
description: Gelesen Release 1.5.7
date: 2026-02-21
date_key: 20250221
sitemap:
  lastmod: 2025-02-21
---

Download the update: [gelesen.app](https://gelesen.app)

## What's new?
- The old ”Conditions” feature has been replaced with the new ”Conditional Statements” action. You can now create nonlinear paths by checking conditions against character stats and custom variables.
- Variables and Character Stats are now back and have been completely reworked.
- You can now change the grid style.
- You can now change the grid color.
- A new dialogue 

## What's changed?
- ”Choices” action has been renamed to ”Dialogue Picker”.
- To better playtest your story scenes will now continues to the next scene instead of prematurely ending.
- Fixed an issue where the story updater showed the story as updatable, even though no update was available.
- Fixed an issue where it was not possible to change the scene settings for ”Title” scene.
- Fixed an issue where it was not possible to link a ”Title” scene to another scene.
- Fixed an issue where it was not possible to link a ”Interlude” scene to another scene.
- Hidden scenes will now be skipped, even when linked to.
- The legacy database engine is now fully removed, but old story files will still continue to be migrated.

## Technical Insight
- The old ”Conditions” system was linked directly to a single message, making it tedious to work with, hard to use and prone to breaking. The new ”Conditional Statements” system builds upon the already mature and established modular ”Choices” system, allowing for nonlinear & branching conditions.
- The Variables and Character Stats were seperate systems, making it hard to internally keep track of, it also introducing overlapping code and technical debt. Both systems have been merged into one single modular system.

Download the update: [gelesen.app](https://gelesen.app)
