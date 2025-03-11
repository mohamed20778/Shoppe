import 'package:flutter/material.dart';
import 'package:shoppe/constants.dart';
import 'package:shoppe/responsive_helper/sizer_helper_extension.dart';
import 'package:shoppe/view/authscreens/loginscreen.dart';

class ReusableRow extends StatelessWidget {
  const ReusableRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account ',
              style: TextStyle(
                  color: const Color(0xff202020),
                  fontSize: context.setSp(15),
                  fontFamily: 'NunitoSans'),
            ),
            SizedBox(
              width: context.setWidth(16),
            ),
            Container(
                width: context.setButtonWidth(30),
                height: context.setButtonHeight(30),
                decoration: BoxDecoration(
                    color: blucolor, borderRadius: BorderRadius.circular(50)),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>const LoginScreen()));
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: context.setWidth(12),
                  ),
                ))
          ],
        );
  }
}
