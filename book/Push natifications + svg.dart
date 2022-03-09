import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';


class PushNotificationPage extends StatefulWidget {
  const PushNotificationPage({Key? key}) : super(key: key);

  @override
  _PushNotificationPageState createState() => _PushNotificationPageState();
}


class _PushNotificationPageState extends State<PushNotificationPage>{
  bool switchFirst = false;
  bool switchSecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(65,59,74,1),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  Row(
                    children: const[
                      SizedBox(height: 70,)
                    ],
                  ),
                  Row(
                    children: const[
                      Text('Увидомления в приложении', style: TextStyle(
                        fontSize: 15, color: Colors.white,),
                      )
                    ],
                  ),

                  Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(196, 196, 196, 1),
                      ),
                      padding: const EdgeInsets.all(10.0),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Звук',
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
                    children: const[
                      SizedBox(height: 15,)
                    ],
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Вибрация',
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
                    ),
                  ),
                  Row(
                    children: const[
                      SizedBox(height: 60,)
                    ],
                  ),
                  Row(
                    children: const[Text('Увидомление о разделах', style: TextStyle(
                      fontSize: 15, color: Colors.white,),)],
                  ),
                  Row(
                    children: const[SizedBox(height: 5,)],
                  ),
                  Container(
                      height: 48,
                      width: 330,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(196, 196, 196, 1),
                          border: Border.all(
                              color: Colors.black
                          ),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)
                          )
                      ),
                      child: TextButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SavePage()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                  children: [
                                    SvgPicture.asset('assets/svg/Saved_icon.svg'),
                                    ConstrainedBox(
                                        constraints: BoxConstraints(
                                          minWidth: 10,
                                        )
                                    ),
                                    const Text(
                                        'Сохраненные',
                                        style: TextStyle(
                                            color: const Color(0xFF424242),
                                            fontSize: 20
                                        )
                                    ),
                                  ]
                              ),
                              const Icon(
                                  Icons.chevron_right_sharp,
                                  color: Colors.white
                              )
                            ],
                          )
                      )
                  ),
                  Container(
                      height: 48,
                      width: 330,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(196, 196, 196, 1),
                        border: Border.all(
                            color: Colors.black
                        ),
                      ),
                      child: TextButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ReadPage()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset('assets/svg/list_of_reading_icon.svg'),
                                  ConstrainedBox(
                                      constraints: BoxConstraints(
                                        minWidth: 10,
                                      )
                                  ),
                                  const Text(
                                      'Читаю',
                                      style: TextStyle(
                                          color: const Color(0xFF424242),
                                          fontSize: 20
                                      )
                                  ),
                                ],
                              ),
                              const Icon(
                                  Icons.chevron_right_sharp,
                                  color: Colors.white
                              )
                            ],
                          )
                      )
                  ),
                  Container(
                      height: 48,
                      width: 330,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(196, 196, 196, 1),
                        border: Border.all(
                            color: Colors.black
                        ),
                      ),
                      child: TextButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ProchitanoPage()));

                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                  children: [
                                    SvgPicture.asset('assets/svg/list_of_had_read_icon.svg'),
                                    ConstrainedBox(
                                        constraints: BoxConstraints(
                                          minWidth: 10,
                                        )
                                    ),
                                    const Text(
                                        'Прочитано',
                                        style: TextStyle(
                                            color: Color(0xFF424242),
                                            fontSize: 20
                                        )
                                    ),
                                  ]
                              ),
                              const Icon(
                                  Icons.chevron_right_sharp,
                                  color: Colors.white
                              )
                            ],
                          )
                      )
                  ),
                  Container(
                      height: 48,
                      width: 330,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(196, 196, 196, 1),
                        border: Border.all(
                            color: Colors.black
                        ),
                      ),
                      child: TextButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => FavoritePage()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                  children: [
                                    SvgPicture.asset('assets/svg/Favorite_icon.svg'),
                                    ConstrainedBox(
                                        constraints: BoxConstraints(
                                          minWidth: 10,
                                        )
                                    ),
                                    const Text(
                                        'Любимое',
                                        style: TextStyle(
                                            color: Color(0xFF424242),
                                            fontSize: 20
                                        )
                                    ),
                                  ]
                              ),
                              const Icon(
                                  Icons.chevron_right_sharp,
                                  color: Colors.white
                              )
                            ],
                          )
                      )
                  ),
                  Container(
                      height: 48,
                      width: 330,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(196, 196, 196, 1),
                          border: Border.all(
                              color: Colors.black
                          ),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)
                          )
                      ),
                      child: TextButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ZabrochenoPage()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                  children: [
                                    SvgPicture.asset('assets/svg/Abandoned_icon.svg'),
                                    ConstrainedBox(
                                        constraints: BoxConstraints(
                                          minWidth: 10,
                                        )
                                    ),
                                    const Text(
                                        'Заброшенное',
                                        style: TextStyle(
                                            color: const Color(0xFF424242),
                                            fontSize: 20
                                        )
                                    ),
                                  ]
                              ),
                              const Icon(
                                  Icons.chevron_right_sharp,
                                  color: Colors.white
                              )
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


class SavePage extends StatefulWidget {

  @override
  State<SavePage> createState() => _SavePageState();
}

class _SavePageState extends State<SavePage> {
  bool switchFirst = false;
  bool switchSecond = false;

  @override
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
                    children: const[
                      SizedBox(
                        height: 70,
                      )
                    ],
                  ),
                  Row(
                    children: const[
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                  Container(
                    width: 300,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const[
                            Text(
                              'Показывать \nуведомления',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            )
                          ],
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
                    ),
                  ),
                  Row(
                    children: const[
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                  Container(
                    width: 300,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const[
                            Text(
                              'Вибрация',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
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

                    ),


                  ),

                ]

            )
          ]
      ),
    );
  }
}

class ReadPage extends StatefulWidget {

  @override
  State<ReadPage> createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {
  bool switchFirst = false;
  bool switchSecond = false;

  @override
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
                    children: const[
                      SizedBox(
                        height: 70,
                      )
                    ],
                  ),
                  Row(
                    children: const[
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                  Container(
                    width: 300,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const[
                            Text(
                              'Показывать \nуведомления',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            )
                          ],
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
                    ),
                  ),
                  Row(
                    children: const[
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                  Container(
                    width: 300,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const[
                            Text(
                              'Вибрация',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
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

                    ),


                  ),

                ]

            )
          ]
      ),
    );
  }
}

class ProchitanoPage extends StatefulWidget {

  @override
  State<ProchitanoPage> createState() => _ProchitanoPageState();
}

class _ProchitanoPageState extends State<ProchitanoPage> {
  bool switchFirst = false;
  bool switchSecond = false;

  @override
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
                    children: const[
                      SizedBox(
                        height: 70,
                      )
                    ],
                  ),
                  Row(
                    children: const[
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                  Container(
                    width: 300,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const[
                            Text(
                              'Показывать \nуведомления',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            )
                          ],
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
                    ),
                  ),
                  Row(
                    children: const[
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                  Container(
                    width: 300,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const[
                            Text(
                              'Вибрация',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
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

                    ),


                  ),

                ]

            )
          ]
      ),
    );
  }
}

class FavoritePage extends StatefulWidget {

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  bool switchFirst = false;
  bool switchSecond = false;

  @override
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
                    children: const[
                      SizedBox(
                        height: 70,
                      )
                    ],
                  ),
                  Row(
                    children: const[
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                  Container(
                    width: 300,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const[
                            Text(
                              'Показывать \nуведомления',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            )
                          ],
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
                    ),
                  ),
                  Row(
                    children: const[
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                  Container(
                    width: 300,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const[
                            Text(
                              'Вибрация',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
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

                    ),


                  ),

                ]

            )
          ]
      ),
    );
  }
}

class ZabrochenoPage extends StatefulWidget {

  @override
  State<ZabrochenoPage> createState() => _ZabrochenoPageState();
}

class _ZabrochenoPageState extends State<ZabrochenoPage> {
  bool switchFirst = false;
  bool switchSecond = false;

  @override
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
                    children: const[
                      SizedBox(
                        height: 70,
                      )
                    ],
                  ),
                  Row(
                    children: const[
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                  Container(
                    width: 300,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const[
                            Text(
                              'Показывать \nуведомления',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            )
                          ],
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
                    ),
                  ),
                  Row(
                    children: const[
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                  Container(
                    width: 300,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const[
                            Text(
                              'Вибрация',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
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
                    ),
                  ),
                ]
            )
          ]
      ),
    );
  }
}