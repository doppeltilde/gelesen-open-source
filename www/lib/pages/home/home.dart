import 'package:jaspr/jaspr.dart';

import '0_hero/hero.dart';
import '1_meet/meet.dart';
import '5_community/community.dart';

class Home extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return fragment([
      Document.head(title: 'Gelesen: Chat Stories'),
      Hero(),
      Meet(),
      Community(),
    ]);
  }
}
