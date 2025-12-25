import 'package:app_adaptive/widgets/adaptive_layout_builder.dart';
import 'package:app_adaptive/widgets/desktop_layout_builder.dart';
import 'package:app_adaptive/widgets/mobile_layout_builder.dart';
import 'package:app_adaptive/widgets/tablet_layout_builder.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AdaptiveLayoutBuilder(
        mobileLayoutBuilder: (context) => const MobileLayoutBuilder(),
        tabletLayoutBuilder: (context) => const TabletLayoutBuilder(),
        desktopLayoutBuilder: (context) => const DesktopLayoutBuilder(),
      ),
    );
  }
}
