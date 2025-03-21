import 'package:flutter/material.dart';
import 'package:shoppe/widgets/categScrollCardsview.dart';
import 'package:shoppe/widgets/customRow.dart';
import 'package:shoppe/widgets/custom_form_field.dart';
import 'package:shoppe/widgets/horizontal_list.dart';
import 'package:shoppe/core/utils/constants.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPage();
}

class _ShopPage extends State<ShopPage> {
  List<String> images = [
    'assets/images/shoppingperson2.png',
    'assets/images/shoppingperson2.png',
    'assets/images/shoppingperson2.png',
    'assets/images/shoppingperson2.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: context.setHeight(54),
              left: context.setWidth(20),
              right: context.setWidth(18)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Shop',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: context.setSp(28),
                        fontFamily: 'Raleway'),
                  ),
                  SizedBox(
                    width: context.setWidth(19),
                  ),
                  CustomFormField(
                    hintText: 'search',
                    obscureText: false,
                    width: context.setButtonWidth(240),
                    height: context.setButtonHeight(36),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        color: blucolor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.setHeight(19),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Center(
                  child: Image.asset(
                    'assets/images/Big Sale Banner (1).png',
                    width: context.isLandscape
                        ? context.screenWidth * 0.5
                        : context.screenWidth,
                    height: context.isLandscape
                        ? context.screenHeight * 0.5
                        : context.screenHeight * 0.3,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: context.setHeight(15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                        color: const Color(0xff202020),
                        fontSize: context.setSp(20),
                        fontFamily: 'raleway',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: context.setWidth(120),
                  ),
                  CustomRow(
                    rowText: 'see all',
                    fontSize: 15,
                    spaceBetween: 7,
                  )
                ],
              ),
              const CategScrollCards(),
              SizedBox(
                height: context.setHeight(27),
              ),
              const Text('Top Products',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 21,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: context.setHeight(10),
              ),
              const HorizontalList(),
            ],
          ),
        ),
      ),
    );
  }
}
