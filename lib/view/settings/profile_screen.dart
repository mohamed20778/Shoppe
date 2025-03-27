import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';

import 'package:shoppe/widgets/address_Item.dart';
import 'package:shoppe/widgets/categoriscard.dart';
import 'package:shoppe/widgets/customRow.dart';
import 'package:shoppe/widgets/custom_button.dart';

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
      body: Padding(
        padding: EdgeInsets.only(
            top: context.setButtonHeight(71),
            left: context.setWidth(20),
            right: context.setWidth(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileAppbar(),
            SizedBox(
              height: context.setButtonHeight(22),
            ),
            Text(
              'Hello,Romina!',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                fontSize: context.setSp(21),
              ),
            ),
            SizedBox(
              height: context.setButtonHeight(12),
            ),
            const AddressItem(),
            SizedBox(
              height: context.setButtonHeight(18),
            ),
            Text(
              'Recently Viewed',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                fontSize: context.setSp(21),
              ),
            ),
            SizedBox(
              height: context.setButtonHeight(12),
            ),
            const HorizontalList(),
            SizedBox(
              height: context.setButtonHeight(25),
            ),
            Text(
              'My Order',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                fontSize: context.setSp(21),
              ),
            ),
            SizedBox(
              height: context.setButtonHeight(12),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: context.setButtonWidth(7),
              children: [
                MyButton(
                    buttonfunction: () {},
                    fontSize: context.setSp(16),
                    text: 'To Pay',
                    color: const Color(0xffE5EBFC),
                    width: context.setButtonWidth(85),
                    height: context.setButtonHeight(35),
                    textcolor: blucolor),
                MyButton(
                    buttonfunction: () {},
                    fontSize: context.setSp(16),
                    text: 'To Recieve',
                    color: const Color(0xffE5EBFC),
                    width: context.setButtonWidth(118),
                    height: context.setButtonHeight(35),
                    textcolor: blucolor),
                MyButton(
                    buttonfunction: () {},
                    fontSize: context.setSp(16),
                    text: 'To Review',
                    color: const Color(0xffE5EBFC),
                    width: context.setButtonWidth(118),
                    height: context.setButtonHeight(35),
                    textcolor: blucolor),
              ],
            ),
            SizedBox(
              height: context.setButtonHeight(28),
            ),
            CustomRow(rowText: 'New Item', fontSize: 21),
            SizedBox(
              height: context.setHeight(10),
            ),
            Expanded(
              child: CustomScrollView(
                scrollDirection: Axis.horizontal,
                slivers: [
                  SliverList.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Categoriescard();
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
