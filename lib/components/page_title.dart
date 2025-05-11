import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key, required this.pageTitel});
  final String pageTitel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              //to go back to the previous page
              Navigator.pop(context);
            },
            icon: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0xffE4E4E4)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.chevron_left,
                  size: 32,
                  color: Color(0xff313131),
                )),
          ),
          Text(
            pageTitel,
            style: TextStyle(
              fontFamily: 'Zain',
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xff313131),
            ),
          ),
        ],
      ),
    );
  }
}
