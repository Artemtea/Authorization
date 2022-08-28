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
                    children: const[SizedBox(height: 80,)],
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
                            'Описание:',
                            style: 
                            TextStyle(color: Colors.black,fontSize: 18),
                          ),
                          Row(
                            children: const[SizedBox(height: 10,)],
                          ),
                          const Text(
                            '''
  Это история о королевской трагедии, рассказанная в
комедии главным героем мужского пола, безымянным
клоуном, принадлежащим к королевской семье.
Клоун, который стоит на границе между мальчиком и
молодым человеком, рассказывает историю тоном смирения
и самопомощи. Это было интересно, но во многих отношениях
это была быстро развивающаяся книга.
                            ''',
                            style: 
                            TextStyle(color: Colors.black,fontSize: 11),
                          ),
                          Row(
                            children: const[SizedBox(height: 7,)],
                          ),
                          const Text(
                            'Перевод: Ridibooks',
                            style: 
                            TextStyle(color: Colors.black,fontSize: 18),
                          ),
                          Row(
                            children: const[SizedBox(height: 7,)],
                          ),
                          const Text(
                            'Том             Глава',
                            style: 
                            TextStyle(color: Colors.black,fontSize: 18),
                          ),


                          Container(
                    width: 150,
                    height: 30,
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
                            Text('Читать', style: TextStyle(color: Colors.black54, fontSize: 10)),
                          ],
                        )
                )
            ),
                            
                        ],
                      )
                  ),

                  Row(
                    children: const[SizedBox(height: 10,)],
                  ),
                  
                ]
            )
          ]
      ),
    );
  }
}