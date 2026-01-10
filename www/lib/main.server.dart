import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'app.dart';

import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(options: defaultServerOptions);

  runApp(
    Document(
      title: 'Gelesen: Chat Stories',
      lang: 'en',
      head: [
        link(rel: 'icon', type: 'image/x-icon', href: 'images/favicon.png'),
      ],
      body: App(),
    ),
  );
}
