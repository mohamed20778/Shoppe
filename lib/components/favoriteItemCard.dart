import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoppe/components/pricewidget.dart';
import 'package:shoppe/constants.dart';

class FavouriteItemCard extends StatefulWidget {
  const FavouriteItemCard({super.key});

  @override
  State<FavouriteItemCard> createState() => _FavouriteItemCardState();
}

class _FavouriteItemCardState extends State<FavouriteItemCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            InkWell(
              onTap: (){},
              child: Stack(children: [
                Image.asset(
                  'assets/images/artist-2 1.png',
                  scale: MediaQuery.of(context).size.aspectRatio * 1.6,
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.08,
                  left: MediaQuery.of(context).size.width * 0.02,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: MediaQuery.of(context).size.width * 0.06,
                    child: Center(
                      child: FaIcon(
                        Icons.delete_outlined,
                        color: Color(
                          0xffFF5790,
                        ),
                        size: MediaQuery.of(context).size.height * 0.04,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.05,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lorem ipsum dolor sit amet consectetur.',
                style: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Text(
                '\$18',
                style: TextStyle(
                    fontFamily: 'raleway',
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(children: [
                ColorOrSizeWidget(colororsize: 'Pink'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.015,
                ),
                ColorOrSizeWidget(colororsize: 'M'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.13,
                ),
                IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      Icons.add_box_outlined,
                      color: blucolor,
                      size: MediaQuery.of(context).size.height * 0.04,
                    ))
              ])
            ],
          ),
        )
      ],
    );
  }
}
