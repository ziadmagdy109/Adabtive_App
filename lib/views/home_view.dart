import 'package:app_adaptive/widgets/custom_drawer.dart';
import 'package:app_adaptive/widgets/custom_sliver_grid.dart';
import 'package:app_adaptive/widgets/custom_sliver_list.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> keyScaffoldState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyScaffoldState,
      drawer: CustomDrawer(),
      backgroundColor: Color(0xffdadada),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading: IconButton(
          onPressed: () {
            keyScaffoldState.currentState!.openDrawer();
          },
          icon: Icon(Icons.menu, size: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            CustomSliverGrid(),
            CustomSliverList(),
          ],
        ),
      ),
    );
  }
}
