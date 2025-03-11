import 'package:flutter/material.dart';
import 'package:shoppe/components/customRow.dart';
import 'package:shoppe/components/favoriteItemCard.dart';
import 'package:shoppe/components/horizontal_list.dart';
import 'package:shoppe/responsive_helper/sizer_helper_extension.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(
          top: context.setHeight(48),
          left: context.setWidth(20),
          right: context.setWidth(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "WishList",
            style: TextStyle(
                fontSize: context.setSp(28),
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway'),
          ),
          SizedBox(
            height: context.setHeight(13),
          ),
          CustomRow(
            rowText: 'Recently Viewed',
            fontSize: 21,
          ),
          SizedBox(
            height: context.setHeight(14),
          ),
          const HorizontalList(),
          SizedBox(
            height: context.setHeight(14),
          ),
          Expanded(
            child: ListView.builder(
               padding: EdgeInsets.only(top: context.setHeight(10)),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const FavouriteItemCard();
                }),
          )
        ],
      ),
    ));
  }
}
