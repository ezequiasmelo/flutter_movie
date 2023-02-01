import 'package:flutter/material.dart';
import 'package:flutter_movie/core/inject/inject.dart';
import 'package:flutter_movie/features/movie/presentation/ui/pages/home_page.dart';

import 'core/utils/env.dart';

void main() async {
  await Env.i.load();
  Inject.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
