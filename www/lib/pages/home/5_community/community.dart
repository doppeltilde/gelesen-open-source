import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../../../components/link_button.dart';
import '../../../constants/theme.dart';

class Community extends StatelessComponent {
  const Community({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'community', [
      h2([Component.text('Join the Community')]),
      div(classes: 'community-card', [
        div([
          h4([Component.text('Discord')]),
          p([
            Component.text(
              'Have any suggestions, feedback or just want to chat? Join our Discord community.',
            ),
          ]),
          div(classes: 'actions', [
            LinkButton.outlined(
              icon: 'custom-discord',
              label: 'Join Discord',
              to: 'https://discord.gg/dSC639j3up',
            ),
          ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('#community', [
      css('&').styles(
        display: Display.flex,
        padding: Padding.only(
          top: sectionPadding,
          left: contentPadding,
          right: contentPadding,
          bottom: sectionPadding,
        ),
        flexDirection: FlexDirection.column,
        alignItems: AlignItems.center,
        textAlign: TextAlign.center,
      ),
      css('.community-card', [
        css('&').styles(
          display: Display.flex,
          maxWidth: maxContentWidth,
          margin: Margin.only(top: 3.rem),
          border: Border.all(color: borderColor, width: 2.px),
          radius: BorderRadius.circular(12.px),
          shadow: BoxShadow(
            offsetX: 4.px,
            offsetY: 4.px,
            blur: 20.px,
            color: shadowColor1,
          ),
          flexDirection: FlexDirection.row,
          flexWrap: FlexWrap.wrap,
          textAlign: TextAlign.start,
          raw: {
            'background':
                'linear-gradient(180deg, ${background.value} 0%, ${surface.value} 100%)',
          },
        ),
        css('& > div').styles(
          padding: Padding.all(2.rem),
          flex: Flex(grow: 1, basis: 20.rem),
        ),
        css(
          '& > div > h4:not(:first-child)',
        ).styles(margin: Margin.only(top: 3.rem)),
        css('.sponsor', [
          css('&').styles(
            border: Border.only(
              right: BorderSide(color: borderColor, width: 2.px),
            ),
          ),
          css('h5').styles(margin: Margin.only(bottom: 0.5.rem)),
          css('.actions').styles(margin: Margin.only(top: 2.rem)),
          css(
            'p:last-child',
          ).styles(margin: Margin.only(top: 2.rem)).combine(bodySmall),
        ]),
      ]),
    ]),
  ];
}
