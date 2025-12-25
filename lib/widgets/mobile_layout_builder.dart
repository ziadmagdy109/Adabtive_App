import 'package:app_adaptive/widgets/custom_sliver_grid.dart';
import 'package:app_adaptive/widgets/custom_sliver_list.dart';
import 'package:flutter/material.dart';

class MobileLayoutBuilder extends StatelessWidget {
  const MobileLayoutBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        CustomSliverGrid(),
        CustomSliverList(),
      ],
    );
  }
}