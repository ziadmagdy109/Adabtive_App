import 'package:app_adaptive/models/model_drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.modelDrawerItem});
  final ModelDrawerItem modelDrawerItem;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(modelDrawerItem.icon),
      title: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(modelDrawerItem.text)),
      ),
    );
  }
}