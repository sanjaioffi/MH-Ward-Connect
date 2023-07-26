import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/get_chips.dart';

class QuickLinks extends StatelessWidget {
  const QuickLinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 12,
          bottom: 25,
        ),
        child: SizedBox(
          height: 30,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: getChips(),
          ),
        ),
      ),
    );
  }
}
