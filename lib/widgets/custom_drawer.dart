import 'package:app_adaptive/models/model_drawer_item.dart';
import 'package:app_adaptive/widgets/custom_drawer_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
   CustomDrawer({super.key});
  final List <ModelDrawerItem> items = [
    ModelDrawerItem(icon:Icons.home, text: "D A S H B O A R D"),
    ModelDrawerItem(icon:Icons.settings, text: "S E T T I N G S"),
    ModelDrawerItem(icon:Icons.info, text: "A B O U T"),
    ModelDrawerItem(icon:Icons.logout, text: "L O G O U T"),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          DrawerHeader(child: Icon(FontAwesomeIcons.solidHeart, size: 48)),
          CustomDrawerItemListView(items: items)
        ],
      ),
    );
  }
}



