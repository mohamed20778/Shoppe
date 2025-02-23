import 'package:flutter/material.dart';

class Categoriescard extends StatefulWidget {
  const Categoriescard({super.key});

  @override
  State<Categoriescard> createState() => _CategoriescardState();
}

class _CategoriescardState extends State<Categoriescard> {
  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    final double sh = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final double sar = MediaQuery.of(context).size.aspectRatio;
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(
            'assets/images/clothescategory.png',
            scale: 1.6,
          ),
          SizedBox(
            height: sh * 0.007,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Clothing',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'raleway'),
              ),
              Container(
                width: sw * 0.1,
                height: sh * 0.025,
                decoration: BoxDecoration(
                  color: Color(0XFFDFE9FF),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: 
                Center(child: Text('235', style: TextStyle(fontFamily: 'raleway',fontWeight: FontWeight.bold,fontSize: 12))))
            ],
          )
        ]),
      ),
    );
  }
}
