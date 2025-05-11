import 'package:flutter_tts/flutter_tts.dart';

//This is a class that represents the words data
class ItemsModel {
  final String koreanWord;
  final String arabicWord;
  final String pronunciationInArabic;
  final String image;
  final FlutterTts flutterTts =
      FlutterTts(); //object to use the flutter_tts package

  //class constructor
  ItemsModel({
    required this.koreanWord,
    required this.arabicWord,
    required this.pronunciationInArabic,
    required this.image,
  });
  /*
  // async means this function runs in the background and can pause/wait.
  // It automatically returns a Future, not a normal value.
  // A Future is like a promise — it will give you a result later, not immediately.
  // await tells the program to wait here until the task finishes.
  // Use async + await when doing slow tasks like speaking, fetching data, etc.
   */
  void sound() async {
    try {
      await flutterTts.setLanguage("ko-KR"); //setting the language
      await flutterTts.setPitch(1.1); //the voice tone level
      await flutterTts.setSpeechRate(0.4); //how fast the pronouncation is
      await flutterTts.setVolume(1); //the vloume of the voice
      await flutterTts.speak(koreanWord); //the word that should be pronounced
    } catch (e) {
      print("Something went wrong: $e");
    }
  }
}
