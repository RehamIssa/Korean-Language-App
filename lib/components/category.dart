import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.image,
    required this.name,
    required this.color,
  });
  final String image;
  final String name;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      height: 204,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 135,
            height: 135,
          ),
          Text(
            name,
            style: TextStyle(
              fontFamily: 'Zain',
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xff313131),
            ),
          ),
        ],
      ),
    );
  }
}
