import 'package:jaspr/server.dart';
import 'package:link_any_emx/app.dart';

import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  runApp(App());
}
