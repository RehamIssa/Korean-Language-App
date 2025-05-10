import 'package:flutter/material.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'الألوان',
              style: TextStyle(
                fontFamily: 'Zain',
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xff313131),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ItemContainer(),
          ],
        ),
      )),
    );
  }
}

class ItemContainer extends StatelessWidget {
  const ItemContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 132,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xffE4E4E4)),
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff313131),
            ),
            child: Icon(
              Icons.volume_up,
              color: Colors.white,
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '빨간색',
                style: TextStyle(
                  fontFamily: 'Gontham',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff313131),
                ),
              ),
              Text(
                'بالكان سيك',
                style: TextStyle(
                  fontFamily: 'Zain',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff919191),
                ),
              ),
              Text(
                'اللون الأحمر',
                style: TextStyle(
                  fontFamily: 'Zain',
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff313131),
                ),
              ),
            ],
          ),
          SizedBox(width: 12),
          Image.asset(
            'assets/images/colors/Property 1=red.png',
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}
