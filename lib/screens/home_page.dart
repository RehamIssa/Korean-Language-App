import 'package:flutter/material.dart';
import 'package:korean_language_app_new/components/category.dart';
import 'package:korean_language_app_new/screens/colors_screen.dart';
import 'package:korean_language_app_new/screens/common_sentences.dart';
import 'package:korean_language_app_new/screens/family_mambers.dart';
import 'package:korean_language_app_new/screens/year_seasons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            SizedBox(
              height: 16,
            ),
            Text(
              'أقسام التعلم',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'Zain',
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xff313131),
              ),
              textDirection: TextDirection.rtl, // for arabic right to left
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'اختر القسم الذي تريد وابدأ التعلم الآن!',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'Zain',
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Color(0xff313131),
              ),
              textDirection: TextDirection.rtl, // for arabic right to left
            ),
            SizedBox(
              height: 12,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return FamilyMambersScreen();
                    },
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Category(
                      image: 'assets/images/categories/family_members.png',
                      name: 'أفراد العائلة',
                      color: Color(0xffFDF3F5),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return ColorsScreen();
                    },
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Category(
                      image: 'assets/images/categories/colors.png',
                      name: 'الألوان',
                      color: Color(0xffFFFDEB),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return YearSeasonsScreen();
                    },
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Category(
                      image: 'assets/images/categories/seasons.png',
                      name: 'فصول السنة',
                      color: Color(0xffEBF6FF),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return CommonSentencesScreen();
                    },
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Category(
                      image: 'assets/images/categories/sentences.png',
                      name: 'عبارات شائعة',
                      color: Color(0xffF5F5F5),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
