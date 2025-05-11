import 'package:flutter/material.dart';
import 'package:korean_language_app_new/components/item_container.dart';
import 'package:korean_language_app_new/models/items_model.dart';

class ColorsScreen extends StatelessWidget {
  ColorsScreen({super.key});
  ItemsModel red = ItemsModel(
      koreanWord: '빨간색',
      arabicWord: 'اللون الأحمر',
      pronunciationInArabic: 'بالكان سيك',
      image: 'assets/images/colors/Property 1=red.png');
  //final List<ItemsModel> colors = [];
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
            ItemContainer(
                koreanWord: red.koreanWord,
                arabicWord: red.arabicWord,
                wordpronunciation: red.pronunciationInArabic,
                imageUrl: red.image,
                sound: red.sound),
          ],
        ),
      )),
    );
  }
}
