import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/core/theme/app_color.dart';
import 'package:shoppe/core/theme/app_style.dart';
import 'package:shoppe/core/utils/constants.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';
import 'package:shoppe/widgets/custom_address_form.dart';
import 'package:shoppe/widgets/custom_button.dart';

class AddressItem extends StatelessWidget {
  const AddressItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 80.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.setRadius(10)),
        color: const Color(0xffF9F9F9),
      ),
      child: Padding(
        padding:
            EdgeInsets.only(left: 16.w, right: 10.w, top: 9.h, bottom: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "shipping address",
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.h,
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
                      '26, Duong So 2, Thao Dien Ward, An Phu, District 2, Ho Chi Minh city',
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
                        color: blucolor,
                        borderRadius: BorderRadius.circular(50.r)),
                    child: IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom,
                                ),
                                child: SingleChildScrollView(
                                  child: Container(
                                    width: 375.w,
                                    height: 425.h,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w, vertical: 20.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Shipping Address',
                                            style: AppStyle.headlinestyle2(
                                                context),
                                          ),
                                          SizedBox(
                                            height: 40.h,
                                          ),
                                          CustomAddressForm(
                                              labelText: 'Country'),
                                          SizedBox(
                                            height: 14.h,
                                          ),
                                          CustomAddressForm(
                                              labelText: 'Address'),
                                          SizedBox(
                                            height: 14.h,
                                          ),
                                          CustomAddressForm(
                                              labelText: 'Town/City'),
                                          SizedBox(
                                            height: 14.h,
                                          ),
                                          CustomAddressForm(
                                              labelText: 'portal code'),
                                          SizedBox(
                                            height: 16.h,
                                          ),
                                          MyButton(
                                            buttonfunction: () {},
                                            text: 'Save changes',
                                            color: AppColor.primaryColor,
                                            width: 335.w,
                                            height: 40.h,
                                            textcolor: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: context.setWidth(12),
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
