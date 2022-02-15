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
  final List<String> entries = <String>['A', 'B', 'C'];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(65,59,74,1),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: entries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 350,
                        height:  60,
                        child: TextButton(onPressed: () {},
                            child: const Text('рекгш', style: TextStyle(fontSize: 30, color: Colors.black,),),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(226, 209, 209, 1)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.5),
                                        side: const BorderSide(color: Color.fromRGBO(226, 209, 209, 1))
                                    )
                                )
                            )
                        ),
                      );

                    },
                    //separatorBuilder: (BuildContext context, int index) => const Divider(),
                  ),

                ]
            )
          ]
      ),

    );
  }
}
//
// class ListViewBuilderWidget extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount:20,
//         itemBuilder: (context,index) {
//           return ;
//         });
//   }
// }
