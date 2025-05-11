import 'package:flutter/material.dart';
import 'package:korean_language_app_new/components/item_container.dart';
import 'package:korean_language_app_new/components/page_title.dart';
import 'package:korean_language_app_new/models/items_model.dart';

class ColorsScreen extends StatelessWidget {
  ColorsScreen({super.key});
  final List<ItemsModel> colors = [
    ItemsModel(
        koreanWord: '빨간색',
        arabicWord: 'اللون الأحمر',
        pronunciationInArabic: 'بالكان سيك',
        image: 'assets/images/colors/Property 1=red.png'),
    ItemsModel(
        koreanWord: '파란색',
        arabicWord: 'اللون الأزرق',
        pronunciationInArabic: 'باران سيك',
        image: 'assets/images/colors/Property 1=blue.png'),
    ItemsModel(
        koreanWord: '녹색',
        arabicWord: 'اللون الأخضر',
        pronunciationInArabic: 'نوك سيك',
        image: 'assets/images/colors/Property 1=green.png'),
    ItemsModel(
        koreanWord: '노란색',
        arabicWord: 'اللون الأصفر',
        pronunciationInArabic: 'نوران سيك',
        image: 'assets/images/colors/Property 1=yellow.png'),
    ItemsModel(
        koreanWord: '검은색',
        arabicWord: 'اللون الأسود',
        pronunciationInArabic: 'كومن سيك',
        image: 'assets/images/colors/Property 1=black.png'),
    ItemsModel(
        koreanWord: '흰색',
        arabicWord: 'اللون الأبيض',
        pronunciationInArabic: 'هن سيك',
        image: 'assets/images/colors/Property 1=white.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              PageTitle(
                pageTitel: 'الألوان',
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: colors.length,
                    itemBuilder: (context, index) {
                      return ItemContainer(itemModel: colors[index]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
