import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:todo/features/edit_add_task/view/edit_add_task_screen.dart';

class DateTimeTextWidget extends StatelessWidget {
  const DateTimeTextWidget({
    Key? key,
    required this.deadline,
  }) : super(key: key);

  final int? deadline;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.make_up_to,
          style: EditTaskScreenConfigure.textStyleW16H18,
        ),
        if (deadline != null)
          Text(
            DateFormat.yMMMMd(Localizations.localeOf(context).toString())
                .format(
              DateTime.fromMillisecondsSinceEpoch(deadline! * 1000),
            ),
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
      ],
    );
  }
}
