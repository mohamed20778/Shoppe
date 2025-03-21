import 'package:flutter/material.dart';
import 'package:shoppe/widgets/categoriscard.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';

class CategScrollCards extends StatelessWidget {
  const CategScrollCards({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.only(top: context.setHeight(16.3)),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: context.isLandscape ? 1.3 : context.setWidth(0.8),
            mainAxisSpacing: context.setHeight(10),
            crossAxisSpacing: context.setWidth(10),
            crossAxisCount: context.isLandscape ? 3 : 2),
        itemBuilder: (context, index) {
          return const Categoriescard();
        });
  }
}
