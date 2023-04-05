import 'package:flutter/material.dart';
import 'package:quizapp/src/CategoriesPage/categories_page.dart';
import 'package:quizapp/src/HomePage/home_page.dart';

 main()  {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'home': (context) => const CategoriesPage(),
      }
    );
  }
}
