import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';



void main(){
  runApp(
      MaterialApp(
          home: MyApp()
      )
  );
}

// void _contact() async {
//   final url = 'mailto:dude@gmail.com';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }


class MyApp extends StatelessWidget{
  @override
  //final bool value = true;ек
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(65,59,74,1),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  Row(
                    children: const[SizedBox(height: 50,)],
                  ),
                  Row(
                    children: const[Text('Связь с нами:', style: TextStyle(fontSize: 20, color: Colors.white,),)],
                  ),
                  Row(
                    children: const[SizedBox(height: 20,)],
                  ),
                  Container(
                      width: 300,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(196, 196, 196, 1),
                      ),
                      padding: EdgeInsets.only(left: 10.0),
                      child: TextButton(
                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Написать на почту', style: TextStyle(color: Colors.black54, fontSize: 15)),
                            ],
                          )
                      )

                  ),
                  Row(
                    children: const[SizedBox(height: 5,)],
                  ),
                  Container(
                      width: 300,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(196, 196, 196, 1),
                      ),
                      padding: EdgeInsets.only(left: 10.0),
                      child: TextButton(
                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Оставить отзыв на Google Play', style: TextStyle(color: Colors.black54, fontSize: 15)),
                            ],
                          )
                      )
                  ),
                ]
            )
          ]
      ),
    );
  }
}


