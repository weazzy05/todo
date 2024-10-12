import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo/src/feature/tasks_overview/view/main_screen.dart';
import 'package:todo/src/feature/tasks_overview/view/task_overview_scope.dart';

class NewTaskTextField extends StatefulWidget {
  const NewTaskTextField({Key? key}) : super(key: key);

  @override
  State<NewTaskTextField> createState() => _NewTaskTextFieldState();
}

class _NewTaskTextFieldState extends State<NewTaskTextField> {
  final _taskTitleController = TextEditingController();
  @override
  void dispose() {
    _taskTitleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: MainScreenConfigure.paddingH18V8,
        child: Row(
          children: [
            const SizedBox(width: MainScreenConfigure.sizedBoxW34),
            SizedBox(
              width: 230,
              child: TextField(
                controller: _taskTitleController,
                decoration: InputDecoration.collapsed(
                  hintText: AppLocalizations.of(context)!.new_task,
                ),
                onSubmitted: (String value) {
                  TaskOverviewScope.of(context)
                      .createTask(_taskTitleController.text);
                  _taskTitleController.clear();
                },
              ),
            ),
          ],
        ),
      );
}
