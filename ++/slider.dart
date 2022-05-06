import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
 
void main() {
  runApp(const IntroSliderClass());
  
}
 
class IntroSliderClass extends StatelessWidget {
  const IntroSliderClass({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
  
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  _MyAppState createState() => _MyAppState();
}
 
class _MyAppState extends State<MyApp> {
  List<Slide> slides = [];
 
  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: slides,

      showSkipBtn:false,
      showDoneBtn:false,
      showNextBtn:false,
      
      colorDot: Color.fromRGBO(196, 196, 196, 1),
      sizeDot: 8.5,
      // не получилось сделать так чтобы изменялась форма, но так тоже неплохо
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION

    );
  }

  @override
  Color background = Color.fromRGBO(65, 59, 74, 1);
  void initState() {
    super.initState();
    slides.add(
      Slide(
        title: "сюда чет",
        backgroundColor: background
      ),
    );
    slides.add(
      Slide(
        title: "Здесь тоже чет",
        backgroundColor: background
      ),
    );
    slides.add(
      Slide(
        title: "Ну и тут",
        backgroundColor: background
      ),
    );
  }
}

//если что то вот документация https://pub.dev/packages/intro_slider