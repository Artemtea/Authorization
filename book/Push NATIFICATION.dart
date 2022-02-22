
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
                    children: const[Text('Увидомления в приложении', style: TextStyle(fontSize: 15, color: Colors.white60),)],
                  ),
                  Row(
                    children: const[SizedBox(height: 5,)],
                  ),
                  Container(
                    width: 300,
                    height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(196, 196, 196, 1),
                        ),

                    padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Row(
                            children: const[Text('Звук', style: TextStyle(fontSize: 20, color: Colors.black,),)],
                          ),
                        ],

                      ),


                  ),
                  Row(
                    children: const[SizedBox(height: 15,)],
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Row(
                          children: const[Text('Вибрация', style: TextStyle(fontSize: 20, color: Colors.black,),)],
                        ),

                      ],

                    ),


                  ),
                  Row(
                    children: const[SizedBox(height: 60,)],
                  ),
                  Row(
                      children: const[Text('Увидомление о разделах', style: TextStyle(fontSize: 15, color: Colors.white60,),)],
                  ),
                  Row(
                    children: const[SizedBox(height: 5,)],
                  ),
                  Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(196, 196, 196, 1),
                        border: Border.all(
                            color: Colors.black
                        ),
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15) )
                      ),
                      child: TextButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => save_page()));

                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //Image.asset('assets/List_of_reading_icon.png'),
                              const Text('   Сохранённые', style: TextStyle(color: Colors.black, fontSize: 20)),
                              //const Icon(Icons.chevron_right_sharp, color: Colors.white)

                            ],
                          )
                      )
                  ),
                  Container(
                      width: 300,
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
                                MaterialPageRoute(builder: (context) => love_page()));

                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //Image.asset('assets/List_of_reading_icon.png'),
                              const Text('   Читаю', style: TextStyle(color: Colors.black, fontSize: 20)),
                              //const Icon(Icons.chevron_right_sharp, color: Colors.white)

                            ],
                          )
                      )
                  ),
                  Container(
                      width: 300,
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
                                MaterialPageRoute(builder: (context) => prochitano_page()));

                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //Image.asset('assets/List_of_reading_icon.png'),
                              const Text('   Прочитано', style: TextStyle(color: Colors.black, fontSize: 20)),
                              //const Icon(Icons.chevron_right_sharp, color: Colors.white)

                            ],
                          )
                      )
                  ),
                  Container(
                      width: 300,
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
                                MaterialPageRoute(builder: (context) => love_page()));

                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //Image.asset('assets/List_of_reading_icon.png'),
                              const Text('   Любимое', style: TextStyle(color: Colors.black, fontSize: 20)),
                              //const Icon(Icons.chevron_right_sharp, color: Colors.white)

                            ],
                          )
                      )
                  ),

                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(196, 196, 196, 1),
                        border: Border.all(
                            color: Colors.black
                        ),
                        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15) )
                    ),
                    child: TextButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => zabrocheno_page()));

                        },
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            //Image.asset('assets/List_of_reading_icon.png'),
                              const Text('   Заброшенное', style: TextStyle(color: Colors.black, fontSize: 20)),
                            //const Icon(Icons.chevron_right_sharp, color: Colors.white)

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

class save_page extends StatelessWidget {
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
                    children: const[SizedBox(height: 70,)],
                  ),
                  Row(
                    children: const[Text('Увидомления в приложении', style: TextStyle(fontSize: 15, color: Colors.white60,),)],
                  ),
                  Row(
                    children: const[SizedBox(height: 5,)],
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Row(
                          children: const[Text('Звук', style: TextStyle(fontSize: 20, color: Colors.black,),)],
                        ),
                      ],

                    ),


                  ),
                  Row(
                    children: const[SizedBox(height: 15,)],
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Row(
                          children: const[Text('Вибрация', style: TextStyle(fontSize: 20, color: Colors.black,),)],
                        ),
                        Row(
                          children: const[]
                        ),
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

class read_page extends StatelessWidget {
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
                    children: const[SizedBox(height: 70,)],
                  ),
                  Row(
                    children: const[Text('Увидомления в приложении', style: TextStyle(fontSize: 15, color: Colors.white60,),)],
                  ),
                  Row(
                    children: const[SizedBox(height: 5,)],
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Row(
                          children: const[Text('Звук', style: TextStyle(fontSize: 20, color: Colors.black,),)],
                        ),
                      ],

                    ),


                  ),
                  Row(
                    children: const[SizedBox(height: 15,)],
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Row(
                          children: const[Text('Вибрация', style: TextStyle(fontSize: 20, color: Colors.black,),)],
                        ),
                        Row(
                            children: const[]
                        ),
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

class prochitano_page extends StatelessWidget {
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
                    children: const[SizedBox(height: 70,)],
                  ),
                  Row(
                    children: const[Text('Увидомления в приложении', style: TextStyle(fontSize: 15, color: Colors.white60),)],
                  ),
                  Row(
                    children: const[SizedBox(height: 5,)],
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Row(
                          children: const[Text('Звук', style: TextStyle(fontSize: 20, color: Colors.black,),)],
                        ),
                      ],

                    ),


                  ),
                  Row(
                    children: const[SizedBox(height: 15,)],
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Row(
                          children: const[Text('Вибрация', style: TextStyle(fontSize: 20, color: Colors.black,),)],
                        ),
                        Row(
                            children: const[]
                        ),
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

class love_page extends StatelessWidget {
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
                    children: const[SizedBox(height: 70,)],
                  ),
                  Row(
                    children: const[Text('Увидомления в приложении', style: TextStyle(fontSize: 15, color: Colors.white60,),)],
                  ),
                  Row(
                    children: const[SizedBox(height: 5,)],
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Row(
                          children: const[Text('Звук', style: TextStyle(fontSize: 20, color: Colors.black,),)],
                        ),
                      ],

                    ),


                  ),
                  Row(
                    children: const[SizedBox(height: 15,)],
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Row(
                          children: const[Text('Вибрация', style: TextStyle(fontSize: 20, color: Colors.black,),)],
                        ),
                        Row(
                            children: const[]
                        ),
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

class zabrocheno_page extends StatelessWidget {
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
                    children: const[SizedBox(height: 70,)],
                  ),
                  Row(
                    children: const[Text('Увидомления в приложении', style: TextStyle(fontSize: 15, color: Colors.white60,),)],
                  ),
                  Row(
                    children: const[SizedBox(height: 5,)],
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Row(
                          children: const[Text('Звук', style: TextStyle(fontSize: 20, color: Colors.black,),)],
                        ),
                      ],

                    ),


                  ),
                  Row(
                    children: const[SizedBox(height: 15,)],
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),

                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Row(
                          children: const[Text('Вибрация', style: TextStyle(fontSize: 20, color: Colors.black,),)],
                        ),
                        Row(
                            children: const[]
                        ),
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