import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/core/services/product_service.dart';
import 'package:shoppe/cubits/get_product_cubit/get_product_cubit.dart';

import 'package:shoppe/widgets/address_Item.dart';
import 'package:shoppe/widgets/customRow.dart';
import 'package:shoppe/widgets/custom_button.dart';
import 'package:shoppe/widgets/custom_listview.dart';

import 'package:shoppe/widgets/horizontal_list.dart';
import 'package:shoppe/widgets/profile_appbar.dart';
import 'package:shoppe/core/utils/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 71.h, left: 20.w, right: 18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileAppbar(),
              SizedBox(
                height: 22.h,
              ),
              Text(
                'Hello,Romina!',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  fontSize: 21.sp,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              const AddressItem(),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Recently Viewed',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  fontSize: 21.sp,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              const HorizontalList(),
              SizedBox(
                height: 25.h,
              ),
              Text(
                'My Order',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  fontSize: 21.sp,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 7.w,
                children: [
                  MyButton(
                      buttonfunction: () {},
                      fontSize: 16.sp,
                      text: 'To Pay',
                      color: const Color(0xffE5EBFC),
                      width: 85.w,
                      height: 35.h,
                      textcolor: blucolor),
                  MyButton(
                      buttonfunction: () {},
                      fontSize: 16.sp,
                      text: 'To Recieve',
                      color: const Color(0xffE5EBFC),
                      width: 118.w,
                      height: 35.h,
                      textcolor: blucolor),
                  MyButton(
                      buttonfunction: () {},
                      fontSize: 16.sp,
                      text: 'To Review',
                      color: const Color(0xffE5EBFC),
                      width: 118.w,
                      height: 35.h,
                      textcolor: blucolor),
                ],
              ),
              SizedBox(
                height: 28.h,
              ),
              CustomRow(rowText: 'New Item', fontSize: 21.sp),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 262.h,
                child: BlocProvider(
                  create: (context) =>
                      GetProductCubit(productservice: ProductService()),
                  child: const CustomListView(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
