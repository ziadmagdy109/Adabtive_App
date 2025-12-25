import 'package:app_adaptive/widgets/custom_desktop_widget.dart';
import 'package:app_adaptive/widgets/custom_drawer.dart';
import 'package:app_adaptive/widgets/tablet_layout_builder.dart';
import 'package:flutter/material.dart';

class DesktopLayoutBuilder extends StatelessWidget {
  const DesktopLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 3, child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TabletLayoutBuilder(),
        )),
        Expanded(child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: CustomDesktopWidget(),
        ))
      ],
    );
  }
}