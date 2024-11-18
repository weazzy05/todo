import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/src/feature/edit_add_task/bloc/bloc.dart';

class SwitchForDatePickerWidget extends StatelessWidget {
  const SwitchForDatePickerWidget({
    required this.switchedDeadline,
    required this.mounted,
    super.key,
  });

  final bool switchedDeadline;
  final bool mounted;

  @override
  Widget build(BuildContext context) => Switch(
        value: switchedDeadline,
        onChanged: (bool complete) async {
          final editAddTaskBloc = context.read<EditAddTaskBloc>();
          if (complete) {
            final pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1950),
              lastDate: DateTime(2100),
            );
            if (pickedDate != null) {
              if (!mounted) return;
              editAddTaskBloc.add(
                EditTaskDeadlineChanged(pickedDate),
              );
            }
          } else {
            editAddTaskBloc.add(
              const EditTaskDeadlineChanged(null),
            );
          }
        },
      );
}
