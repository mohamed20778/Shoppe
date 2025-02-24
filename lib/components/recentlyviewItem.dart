import 'package:flutter/material.dart';

class Recentlyviewitem extends StatefulWidget {
  const Recentlyviewitem({super.key});

  @override
  State<Recentlyviewitem> createState() => _RecentlyviewitemState();
}

class _RecentlyviewitemState extends State<Recentlyviewitem> {
  @override
  Widget build(BuildContext context) {
     final double sw = MediaQuery.of(context).size.width;
    final double sh = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final double sar = MediaQuery.of(context).size.aspectRatio;
    return Material(
      borderRadius: BorderRadius.circular(50),
      elevation:2,
      child: CircleAvatar(
        radius: 37,
        backgroundColor: Colors.white60,
        child: CircleAvatar(
          radius:30,
          backgroundImage: AssetImage('assets/images/artist-2 1.png'),
          ),
      ),
    );
  }
}