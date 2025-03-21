import 'package:flutter/material.dart';
import 'package:shoppe/widgets/address_Item.dart';
import 'package:shoppe/widgets/cart_Item.dart';
import 'package:shoppe/widgets/custom_button.dart';
import 'package:shoppe/widgets/favoriteItemCard.dart';
import 'package:shoppe/core/utils/constants.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: context.setWidth(20),
            top: context.setHeight(48),
            right: context.setWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cart",
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: context.setSp(28),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: context.setHeight(20),
            ),
            const AddressItem(),
            SizedBox(
              height: context.setHeight(16),
            ),
            Flexible(
              child: CustomScrollView(
                slivers: [
                  SliverList.builder(
                      itemBuilder: (context, index) => const CartItem(),
                      itemCount: 20),
                ],
              ),
            ),
            SizedBox(
              height: context.setHeight(21),
            ),
            Text(
              'From Your Wishlist',
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: context.setSp(22),
                  fontWeight: FontWeight.bold),
            ),
            Flexible(
              child: CustomScrollView(
                slivers: [
                  SliverList.builder(
                      itemBuilder: (context, index) =>
                          const FavouriteItemCard(),
                      itemCount: 2),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Total:',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: context.setSp(20),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  ' \$36',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: context.setSp(18),
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                MyButton(
                    buttonfunction: () {},
                    fontSize: context.setSp(16),
                    text: 'Checkout',
                    color: blucolor,
                    width: context.setButtonWidth(128),
                    height: context.setButtonHeight(40),
                    textcolor: Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }
}
