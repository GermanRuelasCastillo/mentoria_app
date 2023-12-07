import 'package:flutter/material.dart';
import 'package:mentoria_app/src/presentation/views/init_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: const Color.fromRGBO(77, 93, 250, 1),
            ),
      ),
      home: const InitPage(),
    );
  }
}
