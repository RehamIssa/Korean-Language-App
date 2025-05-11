import 'package:flutter/material.dart';
import 'package:korean_language_app_new/components/item_container.dart';
import 'package:korean_language_app_new/components/page_title.dart';
import 'package:korean_language_app_new/models/items_model.dart';

class FamilyMambersScreen extends StatelessWidget {
  FamilyMambersScreen({super.key});
  final List<ItemsModel> familyMembers = [
    ItemsModel(
        koreanWord: '엄마',
        arabicWord: 'أمي',
        pronunciationInArabic: 'أومّا',
        image: 'assets/images/family members/mother.png'),
    ItemsModel(
        koreanWord: '아빠',
        arabicWord: 'أبي',
        pronunciationInArabic: 'أبّا',
        image: 'assets/images/family members/father.png'),
    ItemsModel(
        koreanWord: '할머니',
        arabicWord: 'هالموني',
        pronunciationInArabic: 'جدتي',
        image: 'assets/images/family members/grandmother.png'),
    ItemsModel(
        koreanWord: '할아버지',
        arabicWord: 'جدي',
        pronunciationInArabic: 'هارابوجي',
        image: 'assets/images/family members/grandfather.png'),
    ItemsModel(
        koreanWord: '아들',
        arabicWord: 'ابني',
        pronunciationInArabic: 'آديل',
        image: 'assets/images/family members/son.png'),
    ItemsModel(
        koreanWord: '딸',
        arabicWord: 'تال',
        pronunciationInArabic: 'بنتي',
        image: 'assets/images/family members/doughter.png'),
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
                pageTitel: 'أفراد العائلة',
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: familyMembers.length,
                    itemBuilder: (context, index) {
                      return ItemContainer(itemModel: familyMembers[index]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
