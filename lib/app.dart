// ignore_for_file: unused_import
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'container', [
      h1([Component.text('Links do EMX')]),
      ul([
        li([
          a(href: 'https://github.com/emxcoder', [Component.text('GitHub')]),
        ]),
        li([
          a(href: 'https://youtube.com/@emxcoder', [Component.text('Youtube')]),
        ]),
      ]),
    ]);
  }
}
