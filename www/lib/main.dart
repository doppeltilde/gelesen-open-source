import 'package:jaspr/server.dart';

import 'app.dart';

import 'jaspr_options.dart';

void main() {
  Jaspr.initializeApp(options: defaultJasprOptions);

  runApp(
    Document(
      title: 'Gelesen - Social Gaming Platform',
      lang: 'en',
      head: [
        link(rel: 'icon', type: 'image/x-icon', href: 'images/favicon.png'),
      ],
      body: App(),
    ),
  );
}
