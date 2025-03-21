import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, BoxConstraints constraints) {
      if (context.isLandscape) {
        return Material(
          borderRadius: BorderRadius.circular(50),
          elevation: 2,
          child: SizedBox(
            width: context.setWidth(25),
            height: context.setHeight(140),
            child: CircleAvatar(
              backgroundColor: Colors.white60,
              child: SizedBox(
                width: context.setWidth(23),
                height: context.setHeight(134),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/artist-2 1.png'),
                ),
              ),
            ),
          ),
        );
      } else {
        return Material(
          borderRadius: BorderRadius.circular(50),
          elevation: 2,
          child: SizedBox(
            width: context.setWidth(43),
            height: context.setHeight(43),
            child: CircleAvatar(
              backgroundColor: Colors.white60,
              child: SizedBox(
                width: context.setWidth(40),
                height: context.setHeight(40),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/artist-2 1.png'),
                ),
              ),
            ),
          ),
        );
      }
    });
  }
}
