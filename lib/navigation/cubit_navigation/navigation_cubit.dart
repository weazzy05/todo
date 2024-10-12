import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/data/models/only_task.dart';
import 'package:todo/di/injector.dart';
import 'package:todo/domain/analytic_service.dart';
import 'package:todo/navigation/page_config.dart';
import 'package:todo/navigation/router_pages.dart';
import 'package:todo/navigation/routes.dart';
import 'package:todo/src/core/utils/refined_logger.dart';

part 'navigation_stack.dart';

class NavigationCubit extends Cubit<NavigationStack> {
  NavigationCubit(List<PageConfig> initialPages)
      : super(NavigationStack(initialPages));

  Future<void> push(String path, [Map<String, dynamic>? args]) async {
    logger.info('push called with $path and $args');

    PageConfig config = PageConfig(location: path, args: args);
    final newNavigationStack = state.push(config);
    await _sendInformationToAnalytics(newNavigationStack);
    emit(newNavigationStack);
  }

  Future<void> clearAndPush(String path, [Map<String, dynamic>? args]) async {
    PageConfig config = PageConfig(location: path, args: args);
    final newNavigationStack = state.clearAndPush(config);
    await _sendInformationToAnalytics(newNavigationStack);
    emit(newNavigationStack);
  }

  Future<void> pop() async {
    final newNavigationStack = state.pop();
    await _sendInformationToAnalytics(newNavigationStack);
    emit(newNavigationStack);
  }

  Future<void> goToEditAddScreen([OnlyTaskModel? task]) async {
    await push(Routes.editTask, {EditAddTaskScreenPageArgs.task: task});
  }

  bool canPop() {
    return state.canPop();
  }

  Future<void> pushBeneathCurrent(
    String path, [
    Map<String, dynamic>? args,
  ]) async {
    final PageConfig config = PageConfig(location: path, args: args);
    final newNavigationStack = state.pushBeneathCurrent(config);
    await _sendInformationToAnalytics(newNavigationStack);
    emit(newNavigationStack);
  }

  Future<void> _sendInformationToAnalytics(NavigationStack currStack) async {
    await getIt<AnalyticsService>().setCurrentScreen(
      screenName: currStack._stack.last.route,
    );
  }
}
