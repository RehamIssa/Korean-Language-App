import 'package:flutter/material.dart';
import 'package:korean_language_app_new/components/item_container.dart';
import 'package:korean_language_app_new/components/page_title.dart';
import 'package:korean_language_app_new/models/items_model.dart';

class CommonSentencesScreen extends StatelessWidget {
  CommonSentencesScreen({super.key});
  final List<ItemsModel> commonSentences = [
    ItemsModel(
        koreanWord: '안녕하세요',
        arabicWord: 'مرحبا',
        pronunciationInArabic: 'اننيونج هاسييوه',
        image: 'assets/images/common sentences/Property 1=hi.png'),
    ItemsModel(
        koreanWord: '안녕히계세요',
        arabicWord: 'وداعا',
        pronunciationInArabic: 'اننيونج هيكيسييوه',
        image: 'assets/images/common sentences/Property 1=bye2.png'),
    ItemsModel(
        koreanWord: '잘 가요',
        arabicWord: 'مع السلامة',
        pronunciationInArabic: 'تشالكايوه',
        image: 'assets/images/common sentences/Property 1=bye.png'),
    ItemsModel(
        koreanWord: '고맙습니다',
        arabicWord: 'شكرا',
        pronunciationInArabic: 'كومابسيمنيدا',
        image: 'assets/images/common sentences/Property 1=thank you.png'),
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
                pageTitel: 'عبارات شائعة',
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: commonSentences.length,
                    itemBuilder: (context, index) {
                      return ItemContainer(itemModel: commonSentences[index]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
