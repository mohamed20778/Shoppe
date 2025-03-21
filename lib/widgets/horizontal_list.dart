import 'package:flutter/material.dart';
import 'package:shoppe/widgets/recentlyviewItem.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:
          context.isLandscape ? context.setHeight(150) : context.setHeight(58),
      child: ListView.builder(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(context.setWidth(2)),
              child: const Recentlyviewitem(),
            );
          },
          itemCount: 60),
    );
  }
}
