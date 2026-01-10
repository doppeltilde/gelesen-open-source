import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../../../../components/gradient_border.dart';
import '../../../../components/icon.dart';
import '../../../../constants/theme.dart';

class HeroPill extends StatelessComponent {
  const HeroPill({super.key});

  @override
  Component build(BuildContext context) {
    return a(
      classes: 'hero-pill',
      href: "https://blog.gelesen.app/blog/release-1-4-0/",
      target: Target.blank,
      [
        GradientBorder(
          radius: 17,
          fixed: true,
          child: div(classes: 'pill-content', [
            Component.text("Gelesen 1.4 has landed! Learn more."),
            Icon('arrow-right'),
          ]),
        ),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.hero-pill', [
      css('&').styles(
        margin: Margin.only(bottom: 1.rem),
        radius: BorderRadius.circular(20.px),
        raw: {
          'background':
              'linear-gradient(175deg, ${primaryMid.value}05 0%, ${primaryMid.value}10 80%)',
        },
      ),
      css('.pill-content').styles(
        display: Display.flex,
        padding: Padding.symmetric(vertical: 0.5.rem, horizontal: 0.8.rem),
        alignItems: AlignItems.center,
        gap: Gap(column: 0.5.rem),
        color: textBlack,
        fontSize: 0.8.rem,
        fontWeight: FontWeight.w700,
        raw: {'text-wrap': 'balance'},
      ),
    ]),
  ];
}
