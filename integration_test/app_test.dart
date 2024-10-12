import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:logging/logging.dart';
import 'package:todo/di/injector.dart';
import 'package:todo/features/tasks_overview/view/main_screen.dart';
import 'package:todo/features/tasks_overview/widgets/app_bar.dart';
import 'package:todo/main.dart' as app;
import 'package:todo/utils/key_widget.dart';

final testLogger = Logger('[Test]');

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String _getRandomString(int length) => String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => _chars.codeUnitAt(
          _rnd.nextInt(_chars.length),
        ),
      ),
    );

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  late final StreamSubscription loggerSub;

  setUpAll(() {
    loggerSub = testLogger.onRecord
        // ignore: avoid_print
        .listen((event) => print('${event.time}: $event'));
  });

  tearDownAll(() async => await loggerSub.cancel());

  // Сбрасываем контейнер getIt после каждого теста
  tearDown(() {
    getIt.reset();
  });

  Future<void> restoreFlutterError(Future<void> Function() call) async {
    final originalOnError = FlutterError.onError!;
    await call();
    final overriddenOnError = FlutterError.onError!;

    // restore FlutterError.onError
    FlutterError.onError = (FlutterErrorDetails details) {
      if (overriddenOnError != originalOnError) overriddenOnError(details);
      originalOnError(details);
    };
  }

  testWidgets('startApp', (tester) async {
    await restoreFlutterError(() async {
      app.main();
      await tester.pumpAndSettle();
      await tester.pumpTimes(20, const Duration(milliseconds: 60));
      final String textName = _getRandomString(10);
      await tester.pumpAndWait(
        pumpTimes: 50,
        waitSeconds: 7,
        pumpDuration: const Duration(milliseconds: 100),
      );
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndWait(
        pumpTimes: 50,
        waitSeconds: 2,
        pumpDuration: const Duration(milliseconds: 100),
      );
      await tester.enterText(find.byType(TextFormField), textName);
      await tester.pumpAndSettle();
      await tester.tap(find.widgetWithText(TextButton, 'СОХРАНИТЬ'));
      await tester.pumpAndSettle(const Duration(seconds: 10));
      Finder finderTaskWidget = find.byWidgetPredicate(
        (widget) => (widget is TaskWidget && widget.taskModel.text == textName),
      );
      final customAppbarMain =
          tester.widget<CustomSliverAppBar>(find.byType(CustomSliverAppBar));
      final completedTask = customAppbarMain.state.competedTasks;
      expect(finderTaskWidget, findsOneWidget);

      final taskWidget = tester.widget<TaskWidget>(finderTaskWidget);
      expect(
        find.byKey(ValueKey(Keys.iconEditTask + taskWidget.taskModel.id)),
        findsOneWidget,
      );
      Finder finderDismissibleTaskWidget = find.byKey(
        ValueKey(Keys.dismissableTaskWidget + taskWidget.taskModel.id),
      );
      await tester.ensureVisible(finderDismissibleTaskWidget);
      await tester.pumpAndSettle();
      await tester.tap(
        find.byKey(ValueKey(Keys.checkBoxTask + taskWidget.taskModel.id)),
      );
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(find.text('Выполнено - ${completedTask + 1}'), findsOneWidget);

      await tester.drag(finderDismissibleTaskWidget, const Offset(-750, 0));
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(find.text(textName), findsNothing);
    });
  });
}

Future<void> waitSec(int seconds) => Future.delayed(Duration(seconds: seconds));

extension TesterExt on WidgetTester {
  Future<void> pumpAndWait({
    int pumpTimes = 60,
    int? waitSeconds,
    Duration? pumpDuration,
  }) async {
    for (var i = 0; i < pumpTimes; i++) {
      await pump(pumpDuration);
    }
    if (waitSeconds != null) {
      waitSec(waitSeconds);
    }
  }

  Future<void> pumpTimes(
    int times, [
    Duration? duration,
    EnginePhase phase = EnginePhase.sendSemanticsUpdate,
  ]) async {
    for (var i = 0; i < times; i++) {
      await pump(duration, phase);
    }
  }
}

extension SwipeTesterExt on WidgetTester {
  double percentsOfScreen(double percents, {Axis axis = Axis.horizontal}) {
    final size = MediaQuery.of(element(find.byType(Scaffold))).size;
    return (axis == Axis.horizontal ? size.width : size.height) * percents;
  }
}
