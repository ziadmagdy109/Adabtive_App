import 'package:app_adaptive/models/model_drawer_item.dart';
import 'package:app_adaptive/widgets/custom_drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerItemListView extends StatelessWidget {
  const CustomDrawerItemListView({
    super.key,
    required this.items,
  });

  final List<ModelDrawerItem> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length
      ,itemBuilder: (context, index){
      return CustomDrawerItem(modelDrawerItem: items[index],);
    });
  }
}