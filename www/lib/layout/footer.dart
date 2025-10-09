import 'package:jaspr/jaspr.dart';

import '../components/logo.dart';
import '../constants/theme.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return footer([
      div(classes: 'footer-navigation', [
        div([
          Logo(),
          span(classes: 'created-by', [
            text('By '),
            a(href: 'https://doppeltilde.com', classes: 'animated-underline', [
              text('Doppeltilde'),
            ]),
          ]),
        ]),
        div([
          h5([text('Community')]),
          ul([
            li([
              a(
                href: 'https://discord.gg/dSC639j3up',
                target: Target.blank,
                classes: 'animated-underline',
                [text('Discord')],
              ),
            ]),
            li([
              a(
                href: 'https://github.com/doppeltilde/gelesen-open-source',
                target: Target.blank,
                classes: 'animated-underline',
                [text('Open Source')],
              ),
            ]),
            li([
              a(
                href: 'https://blog.gelesen.app',
                target: Target.blank,
                classes: 'animated-underline',
                [text('Blog')],
              ),
            ]),
          ]),
        ]),
        div([
          h5([text('Legal')]),
          ul([
            li([
              a(href: '/terms-of-service', classes: 'animated-underline', [
                text('Terms of Service'),
              ]),
            ]),
            li([
              a(href: '/privacy-policy', classes: 'animated-underline', [
                text('Privacy Policy'),
              ]),
            ]),
            li([
              a(href: '/community-guidelines', classes: 'animated-underline', [
                text('Community Guidelines'),
              ]),
            ]),
          ]),
        ]),
      ]),
      div(classes: 'footer-banner', [
        text('Copyright © 2025 '),
        a(href: 'https://doppeltilde.com', classes: 'animated-underline', [
          raw('Doppeltilde'),
        ]),
        raw(' | All rights reserved.'),
        div([
          a(href: "https://jaspr.site", classes: 'animated-underline', [
            raw('Built with Jaspr'),
          ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('footer', [
      css('&').styles(
        border: Border.only(
          top: BorderSide(color: borderColor, width: 2.px),
        ),
      ),
      css('.created-by', [
        css('&').styles(
          display: Display.inlineBlock,
          margin: Margin.only(top: 0.4.rem),
          color: textDim,
          fontSize: 0.7.rem,
        ),
        css('a').styles(
          color: textDark,
          fontWeight: FontWeight.w500,
          textDecoration: TextDecoration.none,
        ),
      ]),
      css('.footer-navigation', [
        css('&').styles(
          display: Display.flex,
          maxWidth: maxContentWidth,
          padding: Padding.only(
            top: 4.rem,
            left: 2.rem,
            right: 4.rem,
            bottom: 2.5.rem,
          ),
          flexDirection: FlexDirection.row,
          justifyContent: JustifyContent.spaceBetween,
          alignItems: AlignItems.start,
          gap: Gap.all(2.rem),
        ),
        css('h5').styles(margin: Margin.only(bottom: 1.rem)),
        css('ul').styles(
          padding: Padding.zero,
          listStyle: ListStyle.none,
          fontSize: 0.9.rem,
          lineHeight: 2.rem,
        ),
        css('ul a').styles(color: textDim),
      ]),
      css('.footer-banner').styles(
        padding: Padding.symmetric(vertical: 1.rem, horizontal: 2.rem),
        border: Border.only(
          top: BorderSide(color: borderColor, width: 2.px),
        ),
        color: textDim,
        fontSize: 0.8.rem,
      ),
    ]),
    css.media(MediaQuery.all(maxWidth: 600.px), [
      css('footer', [
        css(
          '.footer-navigation',
        ).styles(display: Display.flex, flexDirection: FlexDirection.column),
      ]),
    ]),
  ];
}
