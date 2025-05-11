import 'package:flutter/material.dart';
import 'package:korean_language_app_new/components/item_container.dart';
import 'package:korean_language_app_new/components/page_title.dart';
import 'package:korean_language_app_new/models/items_model.dart';

class YearSeasonsScreen extends StatelessWidget {
  YearSeasonsScreen({super.key});
  final List<ItemsModel> yearSeasons = [
    ItemsModel(
        koreanWord: '여름',
        arabicWord: 'الصيف',
        pronunciationInArabic: 'يورم',
        image: 'assets/images/seasons of the year/Property 1=summer.png'),
    ItemsModel(
        koreanWord: '겨울',
        arabicWord: 'الشتاء',
        pronunciationInArabic: 'كيول',
        image: 'assets/images/seasons of the year/Property 1=winter.png'),
    ItemsModel(
        koreanWord: '봄',
        arabicWord: 'الربيع',
        pronunciationInArabic: 'بوم',
        image: 'assets/images/seasons of the year/Property 1=spring.png'),
    ItemsModel(
        koreanWord: '가을',
        arabicWord: 'الخريف',
        pronunciationInArabic: 'كايل',
        image: 'assets/images/seasons of the year/Property 1=fall.png'),
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
                pageTitel: 'فصول السنة',
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: yearSeasons.length,
                    itemBuilder: (context, index) {
                      return ItemContainer(itemModel: yearSeasons[index]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
