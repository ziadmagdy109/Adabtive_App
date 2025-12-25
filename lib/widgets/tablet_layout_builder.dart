import 'package:app_adaptive/widgets/custom_list.dart';
import 'package:app_adaptive/widgets/custom_sliver_list.dart';
import 'package:flutter/material.dart';

class TabletLayoutBuilder extends StatelessWidget {
  const TabletLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        CustomList(),
        CustomSliverList(),
      ],
    );
  }
}