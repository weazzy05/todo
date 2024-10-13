import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/src/feature/edit_add_task/bloc/bloc.dart';

class SwitchForDatePickerWidget extends StatelessWidget {
  const SwitchForDatePickerWidget({
    Key? key,
    required this.switchedDeadline,
    required this.mounted,
  }) : super(key: key);

  final bool switchedDeadline;
  final bool mounted;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: switchedDeadline,
      onChanged: (bool complete) async {
        if (complete) {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            lastDate: DateTime(2100),
          );
          if (pickedDate != null) {
            if (!mounted) return;
            context.read<EditAddTaskBloc>().add(
                  EditTaskDeadlineChanged(pickedDate),
                );
          }
        } else {
          context.read<EditAddTaskBloc>().add(
                const EditTaskDeadlineChanged(null),
              );
        }
      },
    );
  }
}
