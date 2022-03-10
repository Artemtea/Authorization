import 'package:flutter_svg/flutter_svg.dart';
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
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                            children: [
                                              const Text(
                                                  'Имя пользователя ',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                  )
                                              ),
                                              SvgPicture.asset('assets/svg/Sub_icon.svg'),
                                              ConstrainedBox(
                                                  constraints: BoxConstraints(
                                                    minWidth: 10,
                                                  )
                                              ),
                                            ]
                                        ),
                                      ],
                                    )
                                  //child: const Text('Имя пользователя', style: TextStyle(color: Colors.white, fontSize: 20),)
                                ),
                                TextButton(onPressed: () {},
                                    child: const Text('Мощь: 20 млн', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 22),)),
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
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(196, 196, 196, 1),
                      ),

                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset('assets/svg/Saved_icon.svg'),
                              ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 20,
                                  )
                              ),
                              SvgPicture.asset('assets/svg/list_of_reading_icon.svg'),
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  minWidth: 20,
                                ),
                              ),
                              SvgPicture.asset('assets/svg/list_of_had_read_icon.svg'),
                              ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 20,
                                  )
                              ),
                              SvgPicture.asset('assets/svg/Favorite_icon.svg'),
                              ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 20,
                                  )
                              ),
                              SvgPicture.asset('assets/svg/Abandoned_icon.svg'),
                              ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 0, //Больше не надо ставить а то выпирает
                                  )
                              ),
                            ],
                          ),
                        ],
                      )
                  ),
                ]
            )
          ]
      ),
    );
  }
}
