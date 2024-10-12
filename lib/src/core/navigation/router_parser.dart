import 'package:flutter/material.dart';
import 'package:todo/src/core/navigation/page_config.dart';

class ERouteInformationParser extends RouteInformationParser<PageConfig> {
  @override
  Future<PageConfig> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    final String path = routeInformation.location ?? '';
    PageConfig config = PageConfig(location: path);
    return config;
  }

  @override
  RouteInformation? restoreRouteInformation(PageConfig configuration) {
    return RouteInformation(location: configuration.path.toString());
  }
}
