import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo/src/feature/edit_add_task/bloc/bloc.dart';
import 'package:todo/src/feature/edit_add_task/view/edit_add_task_screen.dart';

class TextFieldTaskNameWidget extends StatelessWidget {
  const TextFieldTaskNameWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  final EditAddTaskState state;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: EditTaskScreenConfigure.textFormFieldBorderRadius,
      ),
      child: Padding(
        padding: EditTaskScreenConfigure.paddingH16V16,
        child: TextFormField(
          initialValue: state.title,
          onChanged: (value) {
            context.read<EditAddTaskBloc>().add(EditTaskTitleChanged(value));
          },
          keyboardType: TextInputType.multiline,
          maxLines: null,
          decoration: InputDecoration.collapsed(
            hintText: AppLocalizations.of(context)!.buy_something,
          ),
        ),
      ),
    );
  }
}
