import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/core/theme/app_color.dart';
import 'package:shoppe/view/auth/loginscreen.dart';

class ContactInformationWidget extends StatelessWidget {
  const ContactInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 92.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color(0xffF9F9F9),
      ),
      child: Padding(
        padding:
            EdgeInsets.only(left: 16.w, right: 10.w, top: 9.h, bottom: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Contact Information",
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              '+84932000000',
              style: TextStyle(
                fontFamily: 'NunitoSans',
                fontWeight: FontWeight.bold,
                fontSize: 10.sp,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 30.w),
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      'amandamorgan@example.com',
                      style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                ),
                Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                        color: AppColor.blueColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 12.w,
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
