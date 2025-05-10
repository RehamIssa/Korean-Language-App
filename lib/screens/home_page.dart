import 'package:flutter/material.dart';
import 'package:korean_language_app_new/components/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Category(
                      image: 'assets/images/categories/family_members.png',
                      name: 'أفراد العائلة',
                      color: Color(0xffFDF3F5),
                    ),
                  ),
                  Category(
                    image: 'assets/images/categories/colors.png',
                    name: 'الألوان',
                    color: Color(0xffFDF3F5),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Category(
                      image: 'assets/images/categories/sentences.png',
                      name: 'عبارات شائعة',
                      color: Color(0xffFFFDEB),
                    ),
                  ),
                  Expanded(
                    child: Category(
                      image: 'assets/images/categories/seasons.png',
                      name: 'فصول السنة',
                      color: Color(0xffFFFDEB),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
