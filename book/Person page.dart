
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


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
      backgroundColor: const Color.fromRGBO(65,59,74,1),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  Row(
                    children: const[SizedBox(height: 70,)],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          children: [
                            const Icon(Icons.account_circle,
                              color: Colors.grey,
                              size: 100,),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextButton(onPressed: () {},
                                      child: const Text('имя пользователя', style: TextStyle(color: Colors.white, fontSize: 20),)),
                                  TextButton(onPressed: () {},
                                      child: const Text('Level:10000000', style: TextStyle(color: Colors.white, fontSize: 20),)),
                                ],
                            ),

                          ]
                      ),
                    ],
                  ),
                  Row(
                    children: const[SizedBox(height: 30,)],
                  ),
                  Container(
                    width: 300,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        //SvgPicture.asset('assets/saved.svg'),

                      ],

                    ),


                  ),


                ]
            )
          ]
      ),
    );
  }
}

