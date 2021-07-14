import '../models/widget_route.dart';
import '../utils/dimension_constants.dart';
import '../utils/string_constants.dart';
import '../routes/route_constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<WidgetRoute> _routeList = [];

  void _generateRoutes() {
    _routeList.add(
      WidgetRoute(
        routeName: RouteConstants.widgetTitle,
        widgetName: StringConstants.titleWidget,
      ),
    );
    _routeList.add(
      WidgetRoute(
        routeName: RouteConstants.widgetSubtitle,
        widgetName: StringConstants.subtitleWidget,
      ),
    );
    _routeList.add(
      WidgetRoute(
        routeName: RouteConstants.widgetVoteAverage,
        widgetName: StringConstants.voteAverageWidget,
      ),
    );
    _routeList.add(
      WidgetRoute(
        routeName: RouteConstants.widgetPoster,
        widgetName: StringConstants.posterWidget,
      ),
    );
    _routeList.add(
      WidgetRoute(
        routeName: RouteConstants.widgetOverview,
        widgetName: StringConstants.overviewWidget,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _generateRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringConstants.mainAppBarTitle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: DimensionConstants.bodyTopEdgeInset,
          right: DimensionConstants.bodyRightEdgeInset,
          left: DimensionConstants.bodyLeftEdgeInset,
        ),
        child: ListView.builder(
          itemCount: _routeList.length,
          itemBuilder: (
            BuildContext context,
            int index,
          ) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurpleAccent,
                textStyle: TextStyle(
                  fontSize: DimensionConstants.buttonFontSize,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  _routeList[index].routeName,
                );
              },
              child: Text(
                _routeList[index].widgetName,
              ),
            );
          },
        ),
      ),
    );
  }
}
