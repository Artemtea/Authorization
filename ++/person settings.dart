import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'dart:io';
import 'dart:math';

void main(){
  runApp(
      MaterialApp(
          home: MyApp()
      )
  );
}







class MyApp extends StatelessWidget{
  @override
  //final bool value = true;ек
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  Row(
                    children: const[SizedBox(height: 50,)],
                  ),
                  Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Color.fromRGBO(196, 196, 196, 1),
                      ),
                      padding: EdgeInsets.all(10.0), 
                  ),
                  Row(
                    children: const[SizedBox(height: 10,)],
                  ),
                  const Text(
                      
                      '',
                      style: 
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                  Row(
                    children: const[SizedBox(height: 30,)],
                  ),
                  const Text(
                            'Настройка профиля',
                            style: 
                            TextStyle(color: Colors.white,fontSize: 20),
                          ),
                  Row(
                    children: const[SizedBox(height: 10,)],
                  ),
                  Container(
                      width: 350,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(196, 196, 196, 1),
                      ),

                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Изменить аватар',
                            style: 
                            TextStyle(color: Colors.black,fontSize: 20),
                          ),
                          Row(
                            children: const[SizedBox(height: 100,)],
                          ),
                          const Text(
                            'Изменить ник',
                            style: 
                            TextStyle(color: Colors.black,fontSize: 20),
                          ),
                          Row(
                            children: const[SizedBox(height: 10,)],
                          ),
                          TextField(
                              onSubmitted: (text) {
                               // print("onSubmitted");
                               // print("Введенный текст: $text");
                              },
                              onChanged: (text) {
                                //print("onChanged");
                                //print("Введенный текст: $text");
                          }),
                        ],
                      )
                  ),

                  Row(
                    children: const[SizedBox(height: 10,)],
                  ),
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color:  Color.fromRGBO(196, 196, 196, 1),
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFBDBDBD),
                          onPrimary: Colors.black12,
                          onSurface: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)
                            ), 
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Text('Сохранить', style: TextStyle(color: Colors.black54, fontSize: 30)),
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
