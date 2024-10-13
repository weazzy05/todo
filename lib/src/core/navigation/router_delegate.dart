import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/src/core/navigation/cubit_navigation/navigation_cubit.dart';
import 'package:todo/src/core/navigation/page_config.dart';

class ERouterDelegate extends RouterDelegate<PageConfig>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<PageConfig> {
  final NavigationCubit _cubit;

  ERouterDelegate(this._cubit);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavigationCubit, NavigationStack>(
      buildWhen: (prev, cur) {
        return prev != cur;
      },
      builder: (context, stack) {
        return Navigator(
          pages: stack.pages,
          key: navigatorKey,
          onPopPage: (route, result) => _onPopPage.call(route, result),
        );
      },
      listener: (context, stack) {},
    );
  }

  bool _onPopPage(Route<dynamic> route, dynamic result) {
    final didPop = route.didPop(result);
    if (!didPop) {
      return false;
    }
    if (_cubit.canPop()) {
      _cubit.pop();
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<void> setNewRoutePath(PageConfig configuration) async {
    if (configuration.route != '/') {
      _cubit.push(configuration.route, configuration.args);
    }
  }

  @override
  PageConfig? get currentConfiguration => _cubit.state.last;

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
}
