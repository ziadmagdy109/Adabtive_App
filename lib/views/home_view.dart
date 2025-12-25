import 'package:app_adaptive/widgets/custom_drawer.dart';
import 'package:app_adaptive/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

 final GlobalKey<ScaffoldState> keyScaffoldState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyScaffoldState,
      drawer: CustomDrawer(),
      backgroundColor: Color(0xffdadada),
      appBar:MediaQuery.sizeOf(context).width - 32< 900 ? AppBar(
        backgroundColor: Colors.brown,
        leading: IconButton(
          onPressed: () {
            keyScaffoldState.currentState!.openDrawer();
          },
          icon: Icon(Icons.menu, size: 30),
        ),
      ):null,
      body: HomeViewBody(),
    );
  }
}


