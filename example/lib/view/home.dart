import '../utils/dimension_constants.dart';
import '../utils/string_constants.dart';
import '../route/route_constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringConstants.mainAppBarTitle,
        ),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: DimensionConstants.gridViewCrossAxisCount,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RouteConstants.widgetTitle,
                  );
                },
                child: Text(
                  StringConstants.titleWidget,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RouteConstants.widgetSubtitle,
                  );
                },
                child: Text(
                  StringConstants.subtitleWidget,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RouteConstants.widgetVoteAverage,
                  );
                },
                child: Text(
                  StringConstants.voteAverageWidget,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RouteConstants.widgetPoster,
                  );
                },
                child: Text(
                  StringConstants.posterWidget,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RouteConstants.widgetOverview,
                  );
                },
                child: Text(
                  StringConstants.overviewWidget,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
