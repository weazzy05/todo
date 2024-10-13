import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo/src/core/constant/styling/text_styles.dart';
import 'package:todo/src/core/utils/extensions.dart';
import 'package:todo/src/feature/edit_add_task/bloc/bloc.dart';
import 'package:todo/src/feature/edit_add_task/view/edit_add_task_screen.dart';

class DeleteIconButtonWidget extends StatelessWidget {
  const DeleteIconButtonWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final EditTaskView widget;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return InkWell(
      splashFactory: widget.state.isNewTodo ? NoSplash.splashFactory : null,
      onTap: () {
        if (!widget.state.isNewTodo) {
          context.read<EditAddTaskBloc>().add(const EditTaskDeleted());
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.delete,
            color: widget.state.isNewTodo
                ? themeData.disabledColor
                : themeData.colorScheme.red,
          ),
          const SizedBox(width: EditTaskScreenConfigure.sizedBoxW12),
          Text(
            AppLocalizations.of(context)!.delete,
            style: TodoTextStyles.body.copyWith(
              fontWeight: FontWeight.w400,
              color: widget.state.isNewTodo
                  ? themeData.disabledColor
                  : themeData.colorScheme.red,
            ),
          )
        ],
      ),
    );
  }
}
