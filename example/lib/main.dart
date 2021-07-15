import 'routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'routes/route.dart' as route;

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
      initialRoute: RouteConstants.homePage,
      onGenerateRoute: route.controller,
    );
  }
}
