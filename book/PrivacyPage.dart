import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


void main(){
  runApp(
      MaterialApp(
          home: PrivacyPage()
      )
  );
}



class PrivacyPage extends StatefulWidget {
  const PrivacyPage({Key? key}) : super(key: key);

  @override
  _PushNotificationPageState createState() => _PushNotificationPageState();
}


class _PushNotificationPageState extends State<PrivacyPage>{
  bool switchFirst = false;
  bool switchSecond = false;


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
                  Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(196, 196, 196, 1),
                      ),

                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Вкл. сбор данных',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          CupertinoSwitch(
                            value: switchFirst,
                            onChanged: (value) {
                              setState(() {
                                switchFirst = value;
                              });
                            },
                          )
                        ],
                      )
                  ),
                  Row(
                    children: const[SizedBox(height: 5,)],
                  ),
                  Row(
                    children: const[Text('''
    Улучшает подборку рекомендаций
    и уведомлений за счёт 
    отслеживания действий внутри 
    приложения''', style: TextStyle(fontSize: 15, color: Colors.white60),)],
                  ),
                  Row(
                    children: const[SizedBox(height: 40,)],
                  ),
                  Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(196, 196, 196, 1),
                      ),

                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Скрытый аккаунт',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          CupertinoSwitch(
                            value: switchSecond,
                            onChanged: (value) {
                              setState(() {
                                switchSecond = value;
                              });
                            },
                          )
                        ],
                      )
                  ),
                  Row(
                    children: const[SizedBox(height: 5,)],
                  ),
                  Row(
                    children: const[Text('''
Не даёт доступ для просмотра 
информации вашего аккаунта 
другим пользователям''', style: TextStyle(fontSize: 15, color: Colors.white60,),)],
                  ),
                  Row(
                    children: const[SizedBox(height: 5,)],
                  ),


                ]
            )
          ]
      ),
    );
  }
}

