import 'package:jaspr/jaspr.dart';

import '../constants/theme.dart';

class Logo extends StatefulComponent {
  const Logo({super.key});

  @override
  State createState() => LogoState();
}

class LogoState extends State<Logo> {
  @override
  Component build(BuildContext context) {
    return a(href: '/', classes: "logo", [
      div(classes: 'theme-image-swap', [
        img(
          src: 'images/app-icon-black.png',
          alt: 'logo',
          height: 40,
          classes: 'light-image-only',
        ),
        img(
          src: 'images/app-icon-white.png',
          alt: 'logo',
          height: 40,
          classes: 'dark-image-only',
        ),
      ]),
      span(
        styles: Styles(
          alignItems: AlignItems.center,
          alignContent: AlignContent.center,
          textAlign: TextAlign.center,
          fontFamily: FontFamily("Alata"),
          fontWeight: FontWeight.bold,
          letterSpacing: 5.px,
          fontSize: 25.px,
          padding: Spacing.only(bottom: 12.px),
        ),
        [text('GELESEN')],
      ),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.logo').styles(
      display: Display.flex,
      userSelect: UserSelect.none,
      alignItems: AlignItems.center,
      gap: Gap(column: 0.5.rem),
      color: textBlack,
      fontSize: 1.8.rem,
      fontWeight: FontWeight.w600,
    ),
  ];
}
