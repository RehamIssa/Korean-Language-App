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
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        child: Container(
          height: 250,
          width: 165,
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                name,
                style: TextStyle(
                  fontFamily: 'Zain',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff313131),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
