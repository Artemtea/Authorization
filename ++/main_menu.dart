import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'variables.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}
bool click = true;

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Column(
                      children: [
                        Row(
                          children:[
                            TextButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  CupertinoPageRoute(builder: (context) => const ProfilePage()),
                                      (Route<dynamic> route) => true,
                                );
                              },
                              child: const Icon(
                                Icons.account_circle,
                                color: Colors.grey,
                                size: 100,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(onPressed: () {},
                                child: const Text(
                                  '* Имя пользователя',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                  ),
                                )
                            )
                          ],
                        ),
                      ]
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 48,
                          width: 330,
                          decoration: BoxDecoration(
                            color: contcolor,
                              border: Border.all(
                                  color: Colors.black
                              ),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)
                              )
                          ),
                          child: TextButton(
                              onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                      children: [
                                        SvgPicture.asset(saved_icon),
                                        ConstrainedBox(
                                            constraints: BoxConstraints(
                                              minWidth: 10,
                                            )
                                        ),
                                        const Text(
                                            saved_txt,
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
                            color: contcolor,
                            border: Border.all(
                                color: Colors.black
                            ),
                          ),
                          child: TextButton(
                              onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SvgPicture.asset(reading_icon),
                                      ConstrainedBox(
                                          constraints: BoxConstraints(
                                            minWidth: 10,
                                          )
                                      ),
                                      const Text(
                                          reading_txt,
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
                            color: contcolor,
                            border: Border.all(
                                color: Colors.black
                            ),
                          ),
                          child: TextButton(
                              onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(read_icon),
                                      ConstrainedBox(
                                          constraints: BoxConstraints(
                                            minWidth: 10,
                                          )
                                      ),
                                      const Text(
                                          read_txt,
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
                            color: contcolor,
                            border: Border.all(
                                color: Colors.black
                            ),
                          ),
                          child: TextButton(
                              onPressed: (){
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(favorite_icon),
                                      ConstrainedBox(
                                          constraints: BoxConstraints(
                                            minWidth: 10,
                                          )
                                      ),
                                      const Text(
                                          favorite_txt,
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
                            color: contcolor,
                            border: Border.all(
                                color: Colors.black
                            ),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)
                            )
                        ),
                          child: TextButton(
                              onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(abandoned_icon),
                                      ConstrainedBox(
                                          constraints: BoxConstraints(
                                            minWidth: 10,
                                          )
                                      ),
                                      const Text(
                                          abandoned_txt,
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
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Padding(padding: const EdgeInsets.only(top: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 48,
                            width: 330,
                          decoration: BoxDecoration(
                              color: contcolor,
                              border: Border.all(
                                  color: Colors.black
                              ),
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15) )
                          ),
                            child: TextButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, '/privacy');
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(conf_icon),
                                        ConstrainedBox(
                                            constraints: BoxConstraints(
                                              minWidth: 10,
                                            )
                                        ),
                                        const Text(
                                            conf_txt,
                                            style: TextStyle(
                                                color: const Color(0xFF424242),
                                                fontSize: 20
                                            )
                                        ),
                                      ]
                                    ),
                                    const Icon(Icons.chevron_right_sharp, color: Colors.white)
                                  ],
                                )
                            )
                        ),
                        Container(
                            height: 48,
                            width: 330,
                          decoration: BoxDecoration(
                            color: contcolor,
                            border: Border.all(
                                color: Colors.black
                            ),
                          ),
                            child: TextButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, '/customize');
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(theme_icon),
                                        ConstrainedBox(
                                            constraints: BoxConstraints(
                                              minWidth: 10,
                                            )
                                        ),
                                        const Text(
                                            theme_txt,
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
                            color: contcolor,
                            border: Border.all(
                                color: Colors.black
                            ),
                          ),
                            child: TextButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, '/push_notification');
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(bell_icon),
                                        ConstrainedBox(
                                            constraints: BoxConstraints(
                                              minWidth: 10,
                                            )
                                        ),
                                        const Text(
                                            bell_txt,
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
                              color: contcolor,
                              border: Border.all(
                                  color: Colors.black
                              ),
                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15) )
                          ),
                            child: TextButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, '/language');
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(language_icon),
                                        ConstrainedBox(
                                            constraints: BoxConstraints(
                                              minWidth: 10,
                                            )
                                        ),
                                        const Text(
                                            language_txt,
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
                      ],
                    ),
                  )

                ],
              ),
              Row(
                children: [
                  Padding(padding: const EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                            height: 48,
                            width: 330,
                          decoration: BoxDecoration(
                              color: contcolor,
                              border: Border.all(
                                  color: Colors.black
                              ),
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15) )
                          ),
                            child: TextButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, '/support_menu');
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(support_icon),
                                        ConstrainedBox(
                                            constraints: BoxConstraints(
                                              minWidth: 10,
                                            )
                                        ),
                                        const Text(
                                            help_txt,
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
                              color: contcolor,
                              border: Border.all(
                                  color: Colors.black
                              ),
                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15) )
                          ),
                            child: TextButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, '/test');
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(help_icon),
                                        ConstrainedBox(
                                            constraints: BoxConstraints(
                                              minWidth: 10,
                                            )
                                        ),
                                        const Text(
                                            support_txt,
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
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  //final bool value = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
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
                                                  nicname_txt,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                  )
                                              ),
                                              SvgPicture.asset(sub_icon),
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
                                    child: const Text(power_txt, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 22),)),
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
                        color: contcolor,
                      ),

                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(saved_icon),
                              ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 20,
                                  )
                              ),
                              SvgPicture.asset(reading_icon),
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  minWidth: 20,
                                ),
                              ),
                              SvgPicture.asset(read_icon),
                              ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 20,
                                  )
                              ),
                              SvgPicture.asset(favorite_icon),
                              ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 20,
                                  )
                              ),
                              SvgPicture.asset(abandoned_icon),
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


