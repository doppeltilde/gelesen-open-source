import 'package:jaspr/jaspr.dart';

import '../../../constants/theme.dart';

class Hero extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return section(id: "hero", [
      div([
        // HeroPill(),
        h1(
          styles: Styles(
            alignItems: AlignItems.center,
            alignContent: AlignContent.center,
            textAlign: TextAlign.center,
            fontFamily: FontFamily("Lexend"),
            fontWeight: FontWeight.bold,
          ),
          [text('An exciting new way to play interative stories')],
        ),
        p(
          styles: Styles(
            alignItems: AlignItems.center,
            alignContent: AlignContent.center,
            textAlign: TextAlign.center,
            fontFamily: FontFamily("Lexend"),
            fontSize: 18.px,
            letterSpacing: .5.px,
          ),
          [
            text(
              'Craft immersive stories shaped by choices, then share your creations to let others experience them.',
            ),
          ],
        ),
        div(styles: Styles(height: 25.px), []),
        div(
          classes: 'image-row',
          styles: Styles(flexDirection: FlexDirection.row),
          [
            a(href: "https://apps.apple.com/us/app/gelesen/id6553989171", [
              img(src: "https://gelesen.app/images/appstore.webp", width: 250),
            ]),
            a(
              href: "https://play.google.com/store/apps/details?id=gelesen.app",
              [
                img(
                  src: "https://gelesen.app/images/googleplay.png",
                  width: 250,
                ),
              ],
            ),
          ],
        ),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('#hero', [
      css('&').styles(
        display: Display.flex,
        minHeight: 100.vh,
        padding: Padding.only(
          left: contentPadding,
          right: contentPadding,
          top: 8.rem,
          bottom: 4.rem,
        ),
        boxSizing: BoxSizing.borderBox,
        justifyContent: JustifyContent.center,
        alignItems: AlignItems.center,
        textAlign: TextAlign.center,
      ),
      css('& > div').styles(
        display: Display.flex,
        maxWidth: 45.rem,
        flexDirection: FlexDirection.column,
        justifyContent: JustifyContent.center,
        alignItems: AlignItems.center,
      ),
      css('p').styles(raw: {'text-wrap': 'balance'}).combine(bodyMedium),
      css('.cta').styles(
        display: Display.flex,
        margin: Margin.only(top: 2.rem),
        flexDirection: FlexDirection.column,
        alignItems: AlignItems.center,
      ),
    ]),
    css.media(MediaQuery.all(maxWidth: mobileBreakpoint), [
      css('#hero').styles(minHeight: 95.vh),
    ]),
  ];
}
