// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:website/components/banner.dart' as prefix0;
import 'package:website/components/github_button.dart' as prefix1;
import 'package:website/components/gradient_border.dart' as prefix2;
import 'package:website/components/icon.dart' as prefix3;
import 'package:website/components/link_button.dart' as prefix4;
import 'package:website/components/logo.dart' as prefix5;
import 'package:website/components/markdown_page.dart' as prefix6;
import 'package:website/components/menu_button.dart' as prefix7;
import 'package:website/components/theme_toggle.dart' as prefix8;
import 'package:website/constants/theme.dart' as prefix9;
import 'package:website/layout/footer.dart' as prefix10;
import 'package:website/layout/header.dart' as prefix11;
import 'package:website/pages/home/0_hero/hero.dart' as prefix12;
import 'package:website/pages/home/1_meet/meet.dart' as prefix13;
import 'package:website/pages/home/5_community/community.dart' as prefix14;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
JasprOptions get defaultJasprOptions => JasprOptions(
  clients: {
    prefix11.Header: ClientTarget<prefix11.Header>(
      'layout/header',
      params: _prefix11Header,
    ),
  },
  styles: () => [
    ...prefix0.Banner.styles,
    ...prefix1.GitHubButtonState.styles,
    ...prefix2.GradientBorder.styles,
    ...prefix3.Icon.styles,
    ...prefix4.LinkButton.styles,
    ...prefix5.LogoState.styles,
    ...prefix6.MarkdownPage.styles,
    ...prefix7.MenuButton.styles,

    ...prefix8.ThemeToggleState.styles,
    ...prefix9.root,
    ...prefix10.Footer.styles,
    ...prefix11.HeaderState.styles,

    ...prefix12.Hero.styles,
    ...prefix13.Meet.styles,

    ...prefix14.Community.styles,
  ],
);

Map<String, dynamic> _prefix11Header(prefix11.Header c) => {
  'showHome': c.showHome,
};
