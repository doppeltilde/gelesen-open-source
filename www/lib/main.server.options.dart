// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:website/components/banner.dart' as _banner;
import 'package:website/components/github_button.dart' as _github_button;
import 'package:website/components/gradient_border.dart' as _gradient_border;
import 'package:website/components/icon.dart' as _icon;
import 'package:website/components/link_button.dart' as _link_button;
import 'package:website/components/logo.dart' as _logo;
import 'package:website/components/markdown_page.dart' as _markdown_page;
import 'package:website/components/menu_button.dart' as _menu_button;
import 'package:website/components/theme_toggle.dart' as _theme_toggle;
import 'package:website/constants/theme.dart' as _theme;
import 'package:website/layout/footer.dart' as _footer;
import 'package:website/layout/header.dart' as _header;
import 'package:website/pages/home/0_hero/components/hero_pill.dart'
    as _hero_pill;
import 'package:website/pages/home/0_hero/hero.dart' as _hero;
import 'package:website/pages/home/1_meet/meet.dart' as _meet;
import 'package:website/pages/home/5_community/community.dart' as _community;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  clients: {
    _header.Header: ClientTarget<_header.Header>(
      'header',
      params: __headerHeader,
    ),
  },
  styles: () => [
    ..._banner.Banner.styles,
    ..._github_button.GitHubButtonState.styles,
    ..._gradient_border.GradientBorder.styles,
    ..._icon.Icon.styles,
    ..._link_button.LinkButton.styles,
    ..._logo.LogoState.styles,
    ..._markdown_page.MarkdownPage.styles,
    ..._menu_button.MenuButton.styles,
    ..._theme_toggle.ThemeToggleState.styles,
    ..._theme.root,
    ..._footer.Footer.styles,
    ..._header.HeaderState.styles,
    ..._hero_pill.HeroPill.styles,
    ..._hero.Hero.styles,
    ..._meet.Meet.styles,
    ..._community.Community.styles,
  ],
);

Map<String, Object?> __headerHeader(_header.Header c) => {
  'showHome': c.showHome,
};
