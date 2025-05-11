import 'package:flutter/material.dart';
import 'package:korean_language_app_new/models/items_model.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({super.key, required this.itemModel});

  final ItemsModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      height: 132,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xffE4E4E4)),
          borderRadius: BorderRadius.circular(16),
          color: Colors.white),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              itemModel.sound();
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
          Spacer(
            flex: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                itemModel.koreanWord,
                style: TextStyle(
                  fontFamily: 'Gontham',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff313131),
                ),
              ),
              Text(
                itemModel.pronunciationInArabic,
                style: TextStyle(
                  fontFamily: 'Zain',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff919191),
                ),
              ),
              Text(
                itemModel.arabicWord,
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
            itemModel.image,
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}
