import 'dart:ui';

import 'package:volunteers_yemen/App_packages/App_packages.dart';
import 'package:volunteers_yemen/core/utils/size_utils.dart';
import 'package:volunteers_yemen/generated/l10n.dart';

class TabBarLogin extends StatelessWidget {
  const TabBarLogin({
    super.key,
    required this.tabviewController,
    required this.context,
  });

  final TabController tabviewController;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 51.v,
        width: 325.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.h),
            border: Border.all(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                width: 2.5.h)),
        child: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: Colors.white.withOpacity(1),
            labelStyle: TextStyle(
                fontSize: 17.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600),
            unselectedLabelColor: Theme.of(context).colorScheme.secondary,
            unselectedLabelStyle: TextStyle(
                fontSize: 17.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600),
            indicator: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.onPrimaryContainer
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(1.h),
            ),
            tabs: [
              Tab(child: Text(S.of(context).Vounteers)),
              Tab(child: Text(S.of(context).Organization))
            ]));
  }
}
