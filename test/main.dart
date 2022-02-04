
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
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: ElevatedButton(
            child:Text("Okey, lets go"),
            onPressed: (){
              showDialog(context: context, builder: (BuildContext context){
                return AlertDialog(
                  backgroundColor: Color.fromRGBO(65,59,74,1),

                  actions: <Widget>[

                    TextField(
                      decoration: InputDecoration(labelText: 'Логин',) ,
                      style:TextStyle(fontSize: 25, color:Colors.white,),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Пароль'),
                      style:TextStyle(fontSize: 25, color:Colors.white,),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 110),
                         child: RaisedButton(
                            textColor: Colors.black,
                            color: Color.fromRGBO(226,209,209,1),
                            child: Text("Вход",style:TextStyle(fontSize: 25),),
                            onPressed: () {},
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 60),
                      child: RaisedButton(
                          textColor: Colors.black,
                          color: Color.fromRGBO(226,209,209,1),
                          child: Text("Регистрация",style:TextStyle(fontSize: 25),),
                          onPressed: () {},
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0))),
                    )

                  ],

                );
              });
            },
          ),
        )
    );
  }
}

