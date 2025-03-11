import 'package:flutter/material.dart';
import 'package:shoppe/components/recentlyviewItem.dart';
import 'package:shoppe/responsive_helper/sizer_helper_extension.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height:  context.isLandscape?context.setHeight(110):context.setHeight(60),
      child: ListView.separated(
        clipBehavior: Clip.none,
        
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const Recentlyviewitem();
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width:context.setWidth(9),
            );
          },
          itemCount: 60
          ),
    );
  }
}