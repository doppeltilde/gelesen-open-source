// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:jaspr_content/components/_internal/zoomable_image.dart'
    as prefix0;
import 'package:jaspr_content/components/image.dart' as prefix1;
import 'package:jaspr_content/components/sidebar_toggle_button.dart' as prefix2;
import 'package:jaspr_content/components/theme_toggle.dart' as prefix3;

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
    prefix0.ZoomableImage: ClientTarget<prefix0.ZoomableImage>(
      'jaspr_content:components/_internal/zoomable_image',
      params: _prefix0ZoomableImage,
    ),

    prefix2.SidebarToggleButton: ClientTarget<prefix2.SidebarToggleButton>(
      'jaspr_content:components/sidebar_toggle_button',
    ),

    prefix3.ThemeToggle: ClientTarget<prefix3.ThemeToggle>(
      'jaspr_content:components/theme_toggle',
    ),
  },
  styles: () => [
    ...prefix0.ZoomableImage.styles,

    ...prefix1.Image.styles,

    ...prefix3.ThemeToggleState.styles,
  ],
);

Map<String, dynamic> _prefix0ZoomableImage(prefix0.ZoomableImage c) => {
  'src': c.src,
  'alt': c.alt,
  'caption': c.caption,
};
