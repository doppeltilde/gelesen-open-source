import 'package:jaspr/jaspr.dart';

import '../../../constants/theme.dart';

class Meet extends StatelessComponent {
  const Meet({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'meet', [
      div(classes: 'meet-section meet-modes', [
        div([
          h3([text('Explore Stories')]),
          p([
            text(
              'Explore community created stories, or publish your own to the ”Story World” and let others play through them. '
              'Your choices shape the story and the fate of the protagonist.',
            ),
          ]),
        ]),
        div(classes: 'theme-image-swap', [
          img(
            src: 'images/main-light.png',
            alt: 'App Screen',
            height: 850,
            classes: 'light-image-only',
          ),
          img(
            src: 'images/main-dark.png',
            alt: 'App Screen',
            height: 850,
            classes: 'dark-image-only',
          ),
        ]),
      ]),
      div(classes: 'meet-section meet-components', [
        div(classes: 'theme-image-swap', [
          img(
            src: 'images/chat-light.png',
            alt: 'App Screen',
            height: 850,
            classes: 'light-image-only',
          ),
          img(
            src: 'images/chat-dark.png',
            alt: 'App Screen',
            height: 850,
            classes: 'dark-image-only',
          ),
        ]),
        div([
          h3(classes: 'select-target-1', [text('Simulated Typing & Dialogue')]),
          p(classes: 'select-target-2', [
            text(
              'Use the simulated keyboard to type out responses, '
              'or select from a curated choices list '
              "to truly feel like you're texting the person. "
              "This unique typing mechanic drives the story forward, making every heartbreak, triumph, and decision feel deeply personal.",
            ),
          ]),
        ]),
      ]),
      div(classes: 'meet-section meet-modes', [
        div([
          h3([text('Craft Captivating Narratives')]),
          p([
            text(
              "Craft interactive, chat-style stories where every choice shapes the outcome. Build characters and plotlines that respond to your reader, making each path feel personal and engaging.",
            ),
          ]),
        ]),
        div(classes: 'theme-image-swap', [
          img(
            src: 'images/interlude-light.png',
            alt: 'App Screen',
            height: 850,
            classes: 'light-image-only',
          ),
          img(
            src: 'images/interlude-dark.png',
            alt: 'App Screen',
            height: 850,
            classes: 'dark-image-only',
          ),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('#meet', [
      css('&').styles(
        display: Display.flex,
        minHeight: 100.vh,
        padding: Padding.only(
          top: 2.rem,
          left: contentPadding,
          right: contentPadding,
        ),
        flexDirection: FlexDirection.column,
        alignItems: AlignItems.center,
        gap: Gap(row: sectionPadding),
      ),
      css('.meet-section', [
        css('&').styles(
          display: Display.flex,
          maxWidth: maxContentWidth,
          flexDirection: FlexDirection.row,
          flexWrap: FlexWrap.wrap,
          alignItems: AlignItems.center,
          gap: Gap(column: 4.rem, row: 4.rem),
        ),
        css('& > *').styles(
          minWidth: Unit.zero,
          flex: Flex(grow: 1, shrink: 1, basis: 24.rem),
        ),
        css('p').combine(bodyLarge),
        css('.actions').styles(margin: Margin.only(top: 2.rem)),
      ]),
      css('.meet-components', [
        for (var i = 1; i <= 5; i++) ...[
          css('.select-target-$i').styles(position: Position.relative()),
          css(
            '&:has(.select-trigger-$i:hover) .select-target-$i::before',
          ).styles(
            content: '',
            position: Position.absolute(
              left: (-10).px,
              top: (-10).px,
              right: (-10).px,
              bottom: (-10).px,
            ),
            zIndex: ZIndex(-1),
            border: Border(color: primaryLight, width: 1.px),
            radius: BorderRadius.circular(8.px),
            backgroundColor: primaryFaded,
          ),
        ],
      ]),
      css('.meet-modes', [
        css('&').styles(flexWrap: FlexWrap.wrapReverse),
        css('& > div:first-child').styles(position: Position.relative()),
        css(
          '.put-top span:last-child',
        ).styles(position: Position.absolute(), zIndex: ZIndex(1)),
        css('.mode-highlight').styles(
          position: Position.absolute(
            bottom: 0.6.em,
            left: (-16).px,
            right: (-16).px,
          ),
          height: 3.2.em,
          border: Border(color: primaryLight, width: 2.px),
          radius: BorderRadius.circular(8.px),
          pointerEvents: PointerEvents.none,
          backgroundColor: primaryFaded,
        ),
      ]),
    ]),
  ];
}
