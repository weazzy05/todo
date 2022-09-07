import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo/features/tasks_overview/bloc/bloc.dart';
import 'package:todo/features/tasks_overview/view/main_screen.dart';

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
  Widget build(BuildContext context) {
    return Padding(
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
                context.read<InitializationBloc>().add(
                      FastTaskCreateInitializationEvent(
                        _taskTitleController.text,
                      ),
                    );
                _taskTitleController.clear();
              },
            ),
          ),
        ],
      ),
    );
  }
}
