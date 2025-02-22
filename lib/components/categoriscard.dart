import 'package:flutter/material.dart';

class Categoriescard extends StatefulWidget {
  const Categoriescard({super.key});

  @override
  State<Categoriescard> createState() => _CategoriescardState();
}

class _CategoriescardState extends State<Categoriescard> {
  @override
  Widget build(BuildContext context) {
    final double sw=MediaQuery.of(context).size.width;
    final double sh=MediaQuery.of(context).size.height;
    final double sar=MediaQuery.of(context).size.aspectRatio;
    return Card(
      color: Colors.grey.shade100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
          Image.asset('assets/images/clothescategory.png',scale: 1.6,),
          SizedBox(height: sh*0.005,),
          Text('Clothing',style: TextStyle(fontSize:17,fontWeight: FontWeight.bold,fontFamily:'raleway'),)
          
        
        ]),
      ),
    );
  }
}
