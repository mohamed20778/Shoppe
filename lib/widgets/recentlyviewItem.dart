import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';

class Recentlyviewitem extends StatefulWidget {
  const Recentlyviewitem({super.key});

  @override
  State<Recentlyviewitem> createState() => _RecentlyviewitemState();
}

class _RecentlyviewitemState extends State<Recentlyviewitem> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, BoxConstraints constraints) {
      if (context.isLandscape) {
        return Material(
          borderRadius: BorderRadius.circular(50),
          elevation: 2,
          child: SizedBox(
            width: context.setWidth(100),
            height: context.setHeight(100),
            child: CircleAvatar(
              backgroundColor: Colors.white60,
              child: SizedBox(
                width: context.setWidth(150),
                height: context.setHeight(150),
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
            width: context.setWidth(53),
            height: context.setHeight(53),
            child: CircleAvatar(
              backgroundColor: Colors.white60,
              child: SizedBox(
                width: context.setWidth(51),
                height: context.setHeight(51),
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
