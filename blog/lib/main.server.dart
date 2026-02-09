import 'package:jaspr/server.dart';

import 'package:jaspr_content/components/header.dart';
import 'package:jaspr_content/components/image.dart';
import 'package:jaspr_content/components/sidebar.dart';
import 'package:jaspr_content/components/theme_toggle.dart';
import 'package:jaspr_content/jaspr_content.dart';
import 'package:jaspr_content/theme.dart';

import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  runApp(
    ContentApp(
      eagerlyLoadAllPages: true,
      templateEngine: MustacheTemplateEngine(),
      parsers: [
        MarkdownParser(),
      ],
      extensions: [
        HeadingAnchorsExtension(),
        TableOfContentsExtension(),
      ],
      components: [
        Image(zoom: true),
      ],
      layouts: [
        DocsLayout(
          header: Header(
            title: 'Gelesen Blog',
            logo: '/images/favicon.png',
            items: [
              ThemeToggle(),
            ],
          ),
          sidebar: Sidebar(
            groups: [
              SidebarGroup(
                title: 'Blog Posts',
                links: [
                  SidebarLink(text: "Release 1.5.5", href: '/blog/release-1-5-5'),
                  SidebarLink(text: "Release 1.5", href: '/blog/release-1-5-0'),
                  SidebarLink(text: "Release 1.4.3", href: '/blog/release-1-4-3'),
                  SidebarLink(text: "Release 1.4", href: '/blog/release-1-4-0'),
                  SidebarLink(text: "Release 1.3.20", href: '/blog/release-1-3-20'),
                  SidebarLink(text: "Release 1.3.14", href: '/blog/release-1-3-14'),
                  SidebarLink(text: "Release 1.3.7", href: '/blog/release-1-3-7'),
                  SidebarLink(text: "Release 1.3", href: '/blog/release-1-3-0'),
                  SidebarLink(text: "Release 1.2", href: '/blog/release-1-2-0'),
                  SidebarLink(text: "Release 1.1.5", href: '/blog/release-1-1-5'),
                  SidebarLink(text: "Release 1.1", href: '/blog/release-1-1-0'),
                  SidebarLink(text: "Announcement 03", href: '/blog/announcement-03'),
                  SidebarLink(text: "Announcement 02", href: '/blog/announcement-02'),
                  SidebarLink(text: "Announcement 01", href: '/blog/announcement-01'),
                ],
              ),
            ],
          ),
        ),
      ],
      theme: ContentTheme(
        // Customizes the default theme colors.
        primary: ThemeColor(ThemeColors.blue.$500, dark: ThemeColors.blue.$300),
        background: ThemeColor(ThemeColors.slate.$50, dark: ThemeColors.zinc.$950),
        colors: [
          ContentColors.quoteBorders.apply(ThemeColors.blue.$400),
        ],
      ),
    ),
  );
}
