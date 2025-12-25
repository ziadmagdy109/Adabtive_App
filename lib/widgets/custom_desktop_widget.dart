import 'package:app_adaptive/widgets/custom_item.dart';
import 'package:app_adaptive/widgets/custom_item_one.dart';
import 'package:flutter/material.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 2, child: CustomItem()),
        SizedBox(height: 16,),
        Expanded(child: CustomItemOne()),
      ],
    );
  }
}