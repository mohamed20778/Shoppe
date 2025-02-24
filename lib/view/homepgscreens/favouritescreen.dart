import 'package:flutter/material.dart';
import 'package:shoppe/components/favoriteItemCard.dart';
import 'package:shoppe/components/recentlyviewItem.dart';
import 'package:shoppe/constants.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;
    final double screenheight = MediaQuery.of(context).size.height;
    final double screenaspectratio = MediaQuery.of(context).size.aspectRatio;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(
          top: screenheight * 0.05,
          left: screenwidth * 0.05,
          right: screenwidth * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "WishList",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway'),
          ),
          SizedBox(
            height: screenheight * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recently Viewed',
                style: TextStyle(
                    color: Color(0xff202020),
                    fontSize: 21,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold),
              ),
              Container(
                  width: screenwidth * 0.1,
                  height: screenheight * 0.05,
                  decoration: BoxDecoration(
                      color: blucolor, borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 20,
                    ),
                  ))
            ],
          ),
          Container(
            height: screenheight * 0.085,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Recentlyviewitem();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: screenwidth * 0.03,
                  );
                },
                itemCount: 60
                ),
                
          ),
          SizedBox(
            height: screenheight * 0.02
            
            
            
            
            
            ,
          ),
          Expanded(
            child: ListView.builder
            (
              padding: EdgeInsets.only(top: screenheight * 0.01),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
              return FavouriteItemCard();
            }),
          )
        ],
      ),
    ));
  }
}
