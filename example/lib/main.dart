import 'view/home.dart';
import 'package:flutter/material.dart';
import 'route/route.dart' as route;

void main() => runApp(
      MovieWidgets(),
    );

class MovieWidgets extends StatelessWidget {
  const MovieWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
      onGenerateRoute: route.controller,
    );
  }
}
