import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Person page + svg.dart';

void main(){
  runApp(
      MaterialApp(
          home: SearchPage()
      )
  );
}

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color.fromRGBO(65, 59, 74, 1),
        child: ListView(
            children: [

              Container(
                width: 400,

                child: Padding(

                  padding: EdgeInsets.all(12),
                  child: Card(
                      color: const Color.fromRGBO(196, 196, 196, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: Color.fromRGBO(196, 196, 196, 1), width: 2),
                      ),
                      child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                              children: [
                                buildFilter1(context),
                              ]
                          )
                      )
                  ),
                ),
              ),
              Container(
                width: 400,

                child: Padding(

                  padding: EdgeInsets.all(12),
                  child: Card(
                      color: const Color.fromRGBO(196, 196, 196, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: Color.fromRGBO(196, 196, 196, 1), width: 2),
                      ),
                      child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                              children: [
                                buildFilter2(context),
                              ]
                          )
                      )
                  ),
                ),
              ),
              Container(
                width: 400,

                child: Padding(

                  padding: EdgeInsets.all(12),
                  child: Card(
                      color: const Color.fromRGBO(196, 196, 196, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: Color.fromRGBO(196, 196, 196, 1), width: 2),
                      ),
                      child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                              children: [
                                buildFilter3(context),
                              ]
                          )
                      )
                  ),
                ),
              ),
              Container(
                width: 400,

                child: Padding(

                  padding: EdgeInsets.all(12),
                  child: Card(
                      color: const Color.fromRGBO(196, 196, 196, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: Color.fromRGBO(196, 196, 196, 1), width: 2),
                      ),
                      child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                              children: [
                                buildFilter4(context),
                              ]
                          )
                      )
                  ),
                ),
              ),
              Container(
                width: 400,

                child: Padding(

                  padding: EdgeInsets.all(12),
                  child: Card(
                      color: const Color.fromRGBO(196, 196, 196, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: Color.fromRGBO(196, 196, 196, 1), width: 2),
                      ),
                      child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                              children: [
                                buildFilter5(context),
                              ]
                          )
                      )
                  ),
                ),
              ),
            ]
        )
    );
  }
  Widget buildFilter1(BuildContext context) {
    return ExpansionTile(
        title: const Text(
            'Для чего создавалось\nэто приложение?',
            style: TextStyle(
                fontSize: 22
            )
        ),
        children: [
          Container(
              height: 100,
              width: 330,
              child: Text(
                  '''Это приложение создано для удобного чтения манги, манхви и ранобэ в первую очередь на мобильных устройствах, и также на ПК. В будущем мы будем увеличивать список доступных для использования устройств.   ''',
                  style: TextStyle(
                      fontSize: 18
                  )
              )
          )
        ]
    );
  }
  Widget buildFilter2(BuildContext context) {
    return ExpansionTile(
        title: const Text(
            'Какие функции \nдаются изначально?',
            style: TextStyle(
                fontSize: 22
            )
        ),
        children: [
          Container(
            height: 100,
            width: 330,
              child: Text(
                  '''В бесплатной версии приложения вам доступны такие функции как: чтение манги, манхвы и ранобэ онлайн, кастомизация приложения, работающие алгоритмы рекомендаций, использование стандартных стикеров  ''',
                  style: TextStyle(
                      fontSize: 18
                  )
              )
          )
        ]
    );
  }
  Widget buildFilter3(BuildContext context) {
    return ExpansionTile(
        title: const Text(
            'Какие функции добавляются\nпри активации подписки? ',
            style: TextStyle(
                fontSize: 22
            )
        ),
        children: [
          Container(
            height: 100,
            width: 330,
              child: Text(
                  '''Офлайн чтение, анонимность, избавление от надоедливой рекламы, использование кастомных стикеров, потребление манги через аудио и видео формат ''',
                  style: TextStyle(
                      fontSize: 18
                  )
              )
          )
        ]
    );
  }
  Widget buildFilter4(BuildContext context) {
    return ExpansionTile(
        title: const Text(
            'Тематические термины ',
            style: TextStyle(
                fontSize: 22
            )
        ),
        children: [
          Container(
              height: 100,
              width: 330,
              child: Text(
                  '''Я не заню что сдесь писать''',
                  style: TextStyle(
                      fontSize: 18
                  )
              )
          )
        ]
    );
  }
  Widget buildFilter5(BuildContext context) {
    return ExpansionTile(
        title: const Text(
            'Над созданием работали ',
            style: TextStyle(
                fontSize: 22
            )
        ),
        children: [
          Container(
              height: 100,
              width: 330,
              child: Text(
                  '''Андрюшка ,Арсеша ,Артемка +
                     Шизукеса,Милана,Мишамиша,Полина ну и Саша''',
                  style: TextStyle(
                      fontSize: 18
                  )
              )
          )
        ]
    );
  }
}
