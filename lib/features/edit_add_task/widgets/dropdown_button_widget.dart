import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo/features/edit_add_task/bloc/bloc.dart';
import 'package:todo/utils/extensions.dart';
import 'package:todo/utils/priority.dart';

class PriorityCustomDropdownButtonWidget extends StatelessWidget {
  const PriorityCustomDropdownButtonWidget({
    Key? key,
    required this.importance,
    required this.listItems,
  }) : super(key: key);

  final String? importance;
  final List<String> listItems;

  String _generateLocalizedText(BuildContext context, String value) {
    if (value == Priority.basic.toShortString()) {
      return AppLocalizations.of(context)!.none_priority;
    } else if (value == Priority.low.toShortString()) {
      return AppLocalizations.of(context)!.low_priority;
    } else if (value == Priority.important.toShortString()) {
      return AppLocalizations.of(context)!.high_priority;
    }
    return AppLocalizations.of(context)!.none_priority;
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return DropdownButton2(
      isDense: true,
      dropdownWidth: 120,
      value: importance,
      icon: const SizedBox.shrink(),
      underline: const SizedBox.shrink(),
      onChanged: (String? value) {
        context.read<EditAddTaskBloc>().add(
              EditTaskImportanceChanged(value!),
            );
      },
      hint: Text(AppLocalizations.of(context)!.none_priority),
      items: listItems.map<DropdownMenuItem<String>>(
        (String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              _generateLocalizedText(
                context,
                value,
              ),
              style: TextStyle(
                color: value == Priority.important.toShortString()
                    ? themeData.colorScheme.priorityColor()
                    : null,
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
