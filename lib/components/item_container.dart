import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer(
      {super.key,
      required this.koreanWord,
      required this.arabicWord,
      required this.wordpronunciation,
      required this.imageUrl,
      required this.sound});

  final String koreanWord;
  final String arabicWord;
  final String wordpronunciation;
  final String imageUrl;
  final Function sound;

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
          IconButton(
            onPressed: () {
              sound();
            },
            icon: Container(
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
          ),
          /*
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
          */
          Spacer(
            flex: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                koreanWord,
                style: TextStyle(
                  fontFamily: 'Gontham',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff313131),
                ),
              ),
              Text(
                wordpronunciation,
                style: TextStyle(
                  fontFamily: 'Zain',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff919191),
                ),
              ),
              Text(
                arabicWord,
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
            imageUrl,
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}
