import '../utils/dimension_constants.dart';
import '../utils/string_constants.dart';
import 'route_constants.dart';
import '../views/home.dart';
import '../views/widget_detail.dart';
import 'package:flutter/material.dart';
import 'package:movies_widgets/movies_widgets.dart';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case RouteConstants.homePage:
      return MaterialPageRoute(
        builder: (context) => HomePage(),
      );
    case RouteConstants.widgetTitle:
      return MaterialPageRoute(
        builder: (context) => WidgetDetail(
          title: StringConstants.titleWidget,
          widget: MovieDetailTitle(
            movieTitle: StringConstants.defaultMovieTitle,
          ),
        ),
      );
    case RouteConstants.widgetSubtitle:
      return MaterialPageRoute(
        builder: (context) => WidgetDetail(
          title: StringConstants.defaultMovieSubtitle,
          widget: MovieDetailSubtitle(
            movieOriginalLanguage: StringConstants.defaultOriginalLanguage,
            movieReleaseDate: StringConstants.defaultMovieReleaseDate,
            movieVoteCount:
                DimensionConstants.defaultMovieVoteCount.toString() +
                    StringConstants.votes,
          ),
        ),
      );
    case RouteConstants.widgetPoster:
      return MaterialPageRoute(
        builder: (context) => WidgetDetail(
          title: StringConstants.defaultMoviePoster,
          widget: MovieDetailPoster(
            moviePosterPath: StringConstants.defaultMoviePosterPath,
          ),
        ),
      );
    case RouteConstants.widgetOverview:
      return MaterialPageRoute(
        builder: (context) => WidgetDetail(
          title: StringConstants.defaultMovieOverviewTitle,
          widget: MovieDetailOverview(
            movieOverview: StringConstants.defaultMovieOverview,
          ),
        ),
      );
    case RouteConstants.widgetVoteAverage:
      return MaterialPageRoute(
        builder: (context) => WidgetDetail(
          title: StringConstants.defaultVoteAverageTitle,
          widget: MovieVoteAverage(
            voteAverage: DimensionConstants.defaultVoteAverage,
          ),
        ),
      );
    default:
      throw (StringConstants.defaultThrow);
  }
}
