import 'package:app_adaptive/widgets/custom_item_one.dart';
import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 150,
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context , index){
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: AspectRatio(aspectRatio: 1,child: CustomItemOne()),
          );
        }),
      ),
    );
  }
}