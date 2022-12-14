import 'package:equatable/equatable.dart';
import 'package:todo/app/logger.dart';
import 'package:todo/navigation/router_pages.dart';
import 'package:todo/navigation/routes.dart';

class PageConfig extends Equatable {
  ///полный путь к странице
  late final Uri path;

  ///чтобы упростить использование пути с различными интерфейсами
  late final String route;

  ///идентификатор страницы (необязательно)
  final String? name;

  ///аргументы страницы: могут быть добавлены в путь в виде строкового литерала или вручную при создании маршрута
  final Map<String, dynamic> args = {};

  ///Описание маршрута
  late final CustomPageParent page;

  PageConfig({
    required String location,
    Map<String, dynamic>? args,
    this.name,
  }) {
    path = location.isNotEmpty ? Uri.parse(location) : Uri.parse('/');
    route = path.toString();
    this.args.addIfNotNull(args);

    page = getEPage(this);
  }

  @override
  String toString() {
    return 'PageConfig: path = $path, args = $args';
  }

  @override
  List<Object?> get props => [path, args];
}

CustomPageParent getEPage(PageConfig config) {
  logger.info('looking for ${config.route}');
  CustomPageParent p = _routes[config.route]?.call(config.args) ??
      UnknownScreenPage(args: config.args, route: config.route);
  logger.info('found $p');
  return p;
}

Map<String, CustomPageParent Function(Map<String, dynamic>)> _routes = {
  Routes.mainScreen: (args) => MainScreenPage(
        bannerName: args[MainScreenPageArgs.bannerName],
        args: args,
      ),
  Routes.editTask: (args) => EditAddTaskScreenPage(
        task: args[EditAddTaskScreenPageArgs.task],
        args: args,
      ),
};

extension AddNullableMap on Map {
  void addIfNotNull(Map? other) {
    if (other != null) {
      addAll(other);
    }
  }
}
