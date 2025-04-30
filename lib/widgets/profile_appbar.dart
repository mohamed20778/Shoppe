import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoppe/widgets/circle_button.dart';
import 'package:shoppe/widgets/custom_button.dart';
import 'package:shoppe/widgets/profile_avatar.dart';
import 'package:shoppe/core/utils/constants.dart';

class ProfileAppbar extends StatelessWidget {
  const ProfileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 16.w,
          children: [
            const ProfileAvatar(),
            MyButton(
              buttonfunction: () {},
              text: 'My Activity',
              color: blucolor,
              width: 130.w,
              height: 35.h,
              textcolor: Colors.white,
              fontSize: 16.sp,
            ),
          ],
        ),
        Row(
          spacing: 11.w,
          children: [
            CircleButton(
              icon: FontAwesomeIcons.ticket,
              color: const Color(0xffF8F8F8),
              borderColor: const Color(0xffF8F8F8),
            ),
            CircleButton(
              icon: FontAwesomeIcons.message,
              color: const Color(0xffF8F8F8),
              borderColor: const Color(0xffF8F8F8),
            ),
            CircleButton(
              icon: Icons.settings,
              color: const Color(0xffF8F8F8),
              borderColor: const Color(0xffF8F8F8),
            ),
          ],
        )
      ],
    );
  }
}
