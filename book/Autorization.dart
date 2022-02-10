
import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
          home: MyApp()
      )
  );
}


class MyApp extends StatelessWidget{
  @override
  //final bool value = true;
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
                  children: const[SizedBox(height: 60,)],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 300.0,
                      child: const TextField(
                        decoration: InputDecoration(labelStyle: TextStyle(fontSize: 25, color:Colors.white), labelText: 'Имя'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const[SizedBox(height: 30,)],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 300.0,
                      child: const TextField(
                        decoration: InputDecoration(labelStyle: TextStyle(fontSize: 25, color:Colors.white), labelText: 'Дата рождения'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const[SizedBox(height: 30,)],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 300.0,
                      child: const TextField(
                        decoration: InputDecoration(labelStyle: TextStyle(fontSize: 25, color:Colors.white), labelText: 'Почта'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const[SizedBox(height: 30,)],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 300.0,
                      child: const TextField(
                        decoration: InputDecoration(labelStyle: TextStyle(fontSize: 25, color:Colors.white), labelText: 'Логин'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const[SizedBox(height: 30,)],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 300.0,
                      child: const TextField(
                        decoration: InputDecoration(labelStyle: TextStyle(fontSize: 25, color:Colors.white), labelText: 'Пароль'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const[SizedBox(height: 30,)],
                ),
                // чекбокс не сделал
                Row(
                  children: const[SizedBox(height: 70,)],
                ),
                Container(
                  width: 200,
                  child: TextButton(onPressed: () {},
                    child: const Text('Регистрация', style: TextStyle(fontSize: 25, color: Colors.black,),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(226, 209, 209, 1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: const BorderSide(color: Color.fromRGBO(226, 209, 209, 1))
                        )
                      )
                  )),
                )

              ]
            )
          ]
        ),
    );
  }
}

