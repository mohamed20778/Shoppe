import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/core/theme/app_color.dart';
import 'package:shoppe/core/theme/app_fonts.dart';
import 'package:shoppe/core/theme/app_style.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';
import 'package:shoppe/view/auth/loginscreen.dart';
import 'package:shoppe/widgets/address_Item.dart';
import 'package:shoppe/widgets/contact_information_widget.dart';
import 'package:shoppe/widgets/custom_button.dart';

class PayementScreen extends StatefulWidget {
  const PayementScreen({super.key});

  @override
  State<PayementScreen> createState() => _PayementScreenState();
}

class _PayementScreenState extends State<PayementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment", style: AppStyle.headlinestyle2(context)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 11.h,
            ),
            const AddressItem(),
            SizedBox(
              height: 6.h,
            ),
            const ContactInformationWidget(),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Item",
                  style: AppStyle.headlinestyle3(context),
                ),
                Container(
                  width: 120.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffF9F9F9),
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: AppColor.blueColor,
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "Add Voucher",
                      style: TextStyle(
                          color: AppColor.blueColor,
                          fontFamily: AppFonts.nunito,
                          fontSize: 13.sp),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              spacing: 14.w,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(50),
                  elevation: 2,
                  child: SizedBox(
                    width: 60.w,
                    height: 60.h,
                    child: CircleAvatar(
                      backgroundColor: Colors.white60,
                      child: SizedBox(
                        width: 70.w,
                        height: 70.h,
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/artist-2 1.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Lorem ipsum dolor sit amet consectetur.',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Text("\$ 10", style: AppStyle.headlinestyle3(context))
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              spacing: 14.w,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(50.r),
                  elevation: 2,
                  child: SizedBox(
                    width: 60.w,
                    height: 60.h,
                    child: CircleAvatar(
                      backgroundColor: Colors.white60,
                      child: SizedBox(
                        width: 70.w,
                        height: 70.h,
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/artist-2 1.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Lorem ipsum dolor sit amet consectetur.',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Text("\$ 10", style: AppStyle.headlinestyle3(context))
              ],
            ),
            SizedBox(
              height: 22.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment Method",
                  style: AppStyle.headlinestyle3(context),
                ),
                Container(
                  width: context.setButtonWidth(30),
                  height: context.setButtonHeight(30),
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
                      size: context.setWidth(12),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                width: 73.w,
                height: 30.h,
                decoration: BoxDecoration(
                  color: AppColor.secondColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Card",
                    style: TextStyle(
                        color: AppColor.blueColor,
                        fontFamily: AppFonts.raleway,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  ),
                ),
              ),
              Container(
                width: 79.w,
                height: 30.h,
                decoration: BoxDecoration(
                  color: AppColor.secondColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Fawry",
                    style: TextStyle(
                        color: AppColor.blueColor,
                        fontFamily: AppFonts.raleway,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  ),
                ),
              ),
              Container(
                width: 73.w,
                height: 30.h,
                decoration: BoxDecoration(
                  color: AppColor.secondColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "delivry",
                    style: TextStyle(
                        color: AppColor.blueColor,
                        fontFamily: AppFonts.raleway,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 120.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Total", style: AppStyle.headlinestyle3(context)),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text("\$34.00 ", style: AppStyle.headlinestyle3(context)),
                    SizedBox(
                      width: 50.w,
                    ),
                  ],
                ),
                MyButton(
                    buttonfunction: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              width: 375.w,
                              height: 300.h,
                              child: Padding(
                                padding: EdgeInsets.only(top: 28.h, left: 20.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Payment Methods',
                                      style: AppStyle.headlinestyle2(context),
                                    ),
                                    SizedBox(
                                      height: 45.h,
                                    ),
                                    Row(
                                      spacing: 10.w,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Image.asset(
                                              'assets/images/PaymentCard.png'),
                                        ),
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.r)),
                                                foregroundColor:
                                                    AppColor.blueColor,
                                                backgroundColor:
                                                    AppColor.blueColor,
                                                iconColor: Colors.white,
                                                fixedSize: Size(45.w, 155.h)),
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.add,
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    text: "Pay",
                    color: AppColor.blackColor,
                    width: 128.w,
                    height: 40.h,
                    textcolor: Colors.white)
              ],
            )
          ],
        ),
      ),
    );
  }
}
