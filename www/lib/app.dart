import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'components/markdown_page.dart';
import 'layout/footer.dart';
import 'layout/header.dart';
import 'pages/home/home.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return Router(
      routes: [
        Route(
          path: '/',
          builder: (_, __) => Component.fragment([
            //  Banner(),
            Header(),
            main_([Home()]),
            Footer(),
          ]),
        ),
        Route(
          path: '/terms-of-service',
          title: 'Terms of Service',
          builder: (_, __) => MarkdownPage('lib/content/terms-of-service.md'),
        ),
        Route(
          path: '/privacy-policy',
          title: 'Privacy Policy',
          builder: (_, __) => MarkdownPage('lib/content/privacy_policy.md'),
        ),
        Route(
          path: '/community-guidelines',
          title: 'Community Guidelines',
          builder: (_, __) =>
              MarkdownPage('lib/content/community_guidelines.md'),
        ),
        Route(
          path: '/community-guidelines-adult-content',
          title: 'Community Guidelines - Adult Content',
          builder: (_, __) =>
              MarkdownPage('lib/content/community_guidelines_adult_content.md'),
        ),
      ],
    );
  }
}
