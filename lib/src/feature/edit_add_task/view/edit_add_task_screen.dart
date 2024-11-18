import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo/src/core/constant/styling/colors.dart';
import 'package:todo/src/core/constant/styling/text_styles.dart';
import 'package:todo/src/core/router/routes.dart';
import 'package:todo/src/core/utils/extensions.dart';
import 'package:todo/src/core/utils/priority.dart';
import 'package:todo/src/feature/edit_add_task/bloc/bloc.dart';
import 'package:todo/src/feature/edit_add_task/widgets/date_time_switch.dart';
import 'package:todo/src/feature/edit_add_task/widgets/date_time_text.dart';
import 'package:todo/src/feature/edit_add_task/widgets/delete_icon_button.dart';
import 'package:todo/src/feature/edit_add_task/widgets/dropdown_button_widget.dart';
import 'package:todo/src/feature/edit_add_task/widgets/task_title_card_text_field.dart';

class EditTaskScreenConfigure {
  static const paddingH16 = EdgeInsets.symmetric(horizontal: 16);
  static const paddingH16V10 = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 10,
  );
  static const paddingH16V16 = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 16,
  );
  static const BoxConstraints textFormFieldConstraintedBox = BoxConstraints(
    minHeight: 104,
    minWidth: double.infinity,
  );
  static const TextStyle textStyleW16H18 = TextStyle(
    fontSize: 16,
    height: 18.75 / 16,
  );
  static BorderRadiusGeometry textFormFieldBorderRadius =
      BorderRadius.circular(8);
  static const dividerH = 0.5;
  static const sizedBoxH28 = 28.0;
  static const sizedBoxH16 = 16.0;
  static const sizedBoxH22 = 22.0;
  static const sizedBoxH40 = 40.0;
  static const sizedBoxH50 = 50.0;
  static const sizedBoxH70 = 70.0;
  static const sizedBoxW12 = 12.0;
}

class EditTaskScreen extends StatelessWidget {
  const EditTaskScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocListener<EditAddTaskBloc, EditAddTaskState>(
        listenWhen: (previous, current) =>
            previous.status != current.status &&
            (current.status == EditAddTaskStatus.success),
        listener: (context, _) {
          const DashboardRoute().go(context);
        },
        child: EditTaskView(
          state: context.watch<EditAddTaskBloc>().state,
          status: context.select(
            (EditAddTaskBloc bloc) => bloc.state.status,
          ),
        ),
      );
}

class EditTaskView extends StatefulWidget {
  final EditAddTaskStatus status;
  final EditAddTaskState state;
  final List<String> list2 = [
    'basic',
    'low',
    'important',
  ];

  final List<String> list = [
    Priority.basic.toShortString(),
    Priority.low.toShortString(),
    Priority.important.toShortString(),
  ];

  EditTaskView({required this.state, required this.status, super.key});

  @override
  State<EditTaskView> createState() => _EditTaskViewState();
}

class _EditTaskViewState extends State<EditTaskView> {
  final scrollController = ScrollController();

  final appBarColorTween = ColorTween(
    begin: TodoDarkColors.backPrimary,
    end: TodoDarkColors.backSecondary,
  );

  Color get appBarColor =>
      appBarColorTween.transform(lerp) ?? TodoDarkColors.backPrimary;

  double lerp = 0.0;

  double offset = 0;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(listener);
  }

  @override
  void dispose() {
    scrollController.removeListener(listener);
    super.dispose();
  }

  void listener() {
    offset = scrollController.offset;

    setState(() => lerp = offset < 20 ? offset / 20 : 1);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).brightness == Brightness.light
              ? null
              : appBarColor,
          elevation: offset > 20 ? 10 : 0,
          surfaceTintColor: Colors.green,
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => const DashboardRoute().go(context),
          ),
          actions: [
            TextButton(
              onPressed: widget.status.isLoadingOrSuccess
                  ? null
                  : () => context
                      .read<EditAddTaskBloc>()
                      .add(const EditTaskSubmitted()),
              child: Text(
                AppLocalizations.of(context)!.save.toUpperCase(),
                style: TodoTextStyles.button,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EditTaskScreenConfigure.paddingH16,
                  child: ConstrainedBox(
                    constraints:
                        EditTaskScreenConfigure.textFormFieldConstraintedBox,
                    child: TextFieldTaskNameWidget(state: widget.state),
                  ),
                ),
                const SizedBox(height: EditTaskScreenConfigure.sizedBoxH28),
                Padding(
                  padding: EditTaskScreenConfigure.paddingH16,
                  child: Text(
                    AppLocalizations.of(context)!.priority,
                    style: EditTaskScreenConfigure.textStyleW16H18,
                  ),
                ),
                Padding(
                  padding: EditTaskScreenConfigure.paddingH16V10,
                  child: PriorityCustomDropdownButtonWidget(
                    importance: widget.state.importance,
                    listItems: widget.list,
                  ),
                ),
                const Padding(
                  padding: EditTaskScreenConfigure.paddingH16,
                  child: Divider(
                    height: EditTaskScreenConfigure.dividerH,
                  ),
                ),
                const SizedBox(height: EditTaskScreenConfigure.sizedBoxH16),
                Padding(
                  padding: EditTaskScreenConfigure.paddingH16,
                  child: Row(
                    children: [
                      DateTimeTextWidget(deadline: widget.state.deadline),
                      const Spacer(),
                      SwitchForDatePickerWidget(
                        switchedDeadline: widget.state.deadline != null,
                        mounted: mounted,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: widget.state.deadline != null
                      ? EditTaskScreenConfigure.sizedBoxH40
                      : EditTaskScreenConfigure.sizedBoxH50,
                ),
                const Divider(
                  height: EditTaskScreenConfigure.dividerH,
                ),
                const SizedBox(
                  height: EditTaskScreenConfigure.sizedBoxH22,
                ),
                Padding(
                  padding: EditTaskScreenConfigure.paddingH16,
                  child: DeleteIconButtonWidget(widget: widget),
                ),
                const SizedBox(height: EditTaskScreenConfigure.sizedBoxH70),
              ],
            ),
          ),
        ),
      );
}
