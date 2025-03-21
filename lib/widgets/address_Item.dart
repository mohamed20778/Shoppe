import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/constants.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';
import 'package:shoppe/view/auth/loginscreen.dart';

class AddressItem extends StatelessWidget {
  const AddressItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.setButtonWidth(350),
      height: context.setButtonHeight(80),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.setRadius(10)),
        color: const Color(0xffF9F9F9),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: context.setWidth(16),
            right: context.setWidth(10),
            top: context.setHeight(9),
            bottom: context.setHeight(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "shipping address",
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: context.setSp(14),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: context.setHeight(5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: context.setWidth(30)),
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      '26, Duong So 2, Thao Dien Ward, An Phu, District 2, Ho Chi Minh city',
                      style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontWeight: FontWeight.bold,
                        fontSize: context.setSp(10),
                      ),
                    ),
                  ),
                ),
                Container(
                    width: context.setButtonWidth(30),
                    height: context.setButtonHeight(30),
                    decoration: BoxDecoration(
                        color: blucolor,
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
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
