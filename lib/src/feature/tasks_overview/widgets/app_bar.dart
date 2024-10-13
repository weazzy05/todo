import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo/src/core/constant/styling/text_styles.dart';
import 'package:todo/src/feature/tasks_overview/bloc/bloc.dart';
import 'package:todo/src/feature/tasks_overview/filter_tasks.dart';
import 'package:todo/src/feature/tasks_overview/view/task_overview_scope.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    Key? key,
    required this.themeData,
    required this.state,
  }) : super(key: key);

  final ThemeData themeData;
  final TaskOverviewState state;

  @override
  Widget build(BuildContext context) => SliverPersistentHeader(
        delegate: CustomSliverAppBarDelegate(
          completedTextColor: themeData.secondaryHeaderColor,
          primaryAppBarColor: themeData.cardColor,
          cardAppbarColor: themeData.scaffoldBackgroundColor,
          filter: state.filter,
          completeTasks: state.competedTasks,
        ),
        pinned: true,
      );
}

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final int completeTasks;
  TaskFilter filter = TaskFilter.all;

  final Color cardAppbarColor;
  final Color primaryAppBarColor;

  final Color completedTextColor;

  CustomSliverAppBarDelegate({
    required this.completedTextColor,
    required this.cardAppbarColor,
    required this.primaryAppBarColor,
    required this.completeTasks,
    required this.filter,
  }) : super();

  @override
  double get maxExtent => 146;

  @override
  double get minExtent => 70;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final expendPercentage =
        1.0 - min(1, shrinkOffset / (maxExtent - minExtent));
    final interpolatedAlignment = Alignment.lerp(
      Alignment.bottomLeft,
      const Alignment(-0.5, 0.4),
      expendPercentage,
    );
    final darkAppBarColors = Color.lerp(
      primaryAppBarColor,
      cardAppbarColor,
      expendPercentage,
    );
    final iconInterpolate = Alignment.lerp(
      Alignment.bottomRight,
      const Alignment(1, 0.7),
      expendPercentage,
    );
    final interpolatedTextStyle = TextStyle.lerp(
      TodoTextStyles.title,
      TodoTextStyles.largeTitle.copyWith(fontWeight: FontWeight.w800),
      expendPercentage,
    );
    final secondInterpolate = TextStyle.lerp(
      const TextStyle(
        fontSize: 8,
        fontWeight: FontWeight.w800,
      ),
      TodoTextStyles.body.copyWith(
        fontWeight: FontWeight.w400,
        color: completedTextColor,
      ),
      expendPercentage,
    );
    double top = minExtent + (maxExtent - minExtent) * expendPercentage;
    return AppBarCard(
      cardAppbarColor: cardAppbarColor,
      darkAppBarColors: darkAppBarColors,
      top: top,
      minExtent: minExtent,
      interpolatedAlignment: interpolatedAlignment,
      interpolatedTextStyle: interpolatedTextStyle,
      completeTasks: completeTasks,
      secondInterpolate: secondInterpolate,
      iconInterpolate: iconInterpolate,
      filter: filter,
    );
  }
}

class AppBarCard extends StatelessWidget {
  const AppBarCard({
    required this.cardAppbarColor,
    required this.darkAppBarColors,
    required this.top,
    required this.minExtent,
    required this.interpolatedAlignment,
    required this.interpolatedTextStyle,
    required this.completeTasks,
    required this.secondInterpolate,
    required this.iconInterpolate,
    required this.filter,
    Key? key,
  }) : super(key: key);

  final Color cardAppbarColor;
  final Color? darkAppBarColors;
  final double top;
  final double minExtent;
  final Alignment? interpolatedAlignment;
  final TextStyle? interpolatedTextStyle;
  final int completeTasks;
  final TextStyle? secondInterpolate;
  final Alignment? iconInterpolate;
  final TaskFilter filter;

  @override
  Widget build(BuildContext context) => Card(
        color: Theme.of(context).brightness == Brightness.light
            ? cardAppbarColor
            : darkAppBarColors,
        shape: const RoundedRectangleBorder(),
        margin: EdgeInsets.zero,
        elevation: top < minExtent + 0.2 ? 4 : 0,
        child: SizedBox(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 240,
                child: Align(
                  alignment: interpolatedAlignment!,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.my_tasks,
                        style: interpolatedTextStyle,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      AnimatedOpacity(
                        opacity: top > 140 ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 200),
                        child: Text(
                          '${AppLocalizations.of(context)!.completed} - $completeTasks',
                          style: secondInterpolate,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Align(
                alignment: iconInterpolate!,
                child: SizedBox(
                  width: 80,
                  child: MaterialButton(
                    shape: const CircleBorder(),
                    onPressed: () {
                      TaskOverviewScope.of(context).filterTasks(
                        filter == TaskFilter.all
                            ? TaskFilter.activeOnly
                            : TaskFilter.all,
                      );
                    },
                    child: Icon(
                      filter == TaskFilter.all
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
