import '../utils/dimension_constants.dart';
import '../utils/string_constants.dart';
import 'package:flutter/material.dart';

class WidgetDetail extends StatelessWidget {
  final String title;
  final Widget widget;

  const WidgetDetail({
    Key? key,
    required this.title,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          title,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: widget,
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurpleAccent,
          textStyle: TextStyle(
            fontSize: DimensionConstants.buttonFontSize,
          ),
        ),
        child: Text(
          StringConstants.returnBottom,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
