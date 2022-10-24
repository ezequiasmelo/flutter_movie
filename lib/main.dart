import 'package:flutter/material.dart';
import 'package:flutter_movie/splash/splash_page.dart';
import 'package:login/micro_app_login_resolver.dart';
import 'package:micro_core/micro_core.dart';
import 'package:movie/movie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget with BaseApp {
  MyApp() {
    super.registerInjections();
    super.registerRouters();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovieApp',
      theme: ThemeData.dark(),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/splash',
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {
        '/splash': (_, __) => SplashPage(),
      };

  @override
  List<MicroApp> get microApps => [
        MicroAppMovieResolver(),
        MicroAppLoginResolver(),
      ];
}
