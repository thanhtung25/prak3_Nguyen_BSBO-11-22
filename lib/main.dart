import 'dart:core' show String, override;

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeInfo()
    );
  }
}

class HomeInfo extends StatefulWidget{
  const HomeInfo({super.key});

  @override
  State<HomeInfo> createState() => _HomeInfoState();
}

class _HomeInfoState extends State<HomeInfo> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _classController = TextEditingController();
  String _name = "Нгуен К.Т.Т";
  String _class = "БСБО-11-22";
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Информация о студенте',
          style: TextStyle(
            fontFamily: "Times New Roman",
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      body:  Padding(
        padding: const EdgeInsets.all(30.0),
        child:  Column(
          children: [
             Padding(
              padding:const EdgeInsets.only(top:10.0, bottom: 20.0),
              child: Row(
                children: [
                  const SizedBox(
                    width: 200,
                    child: Text(
                      'Имя и фамилия:',
                      style: TextStyle(
                        fontFamily: "Times New Roman",
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Text(
                    _name,
                    style:const TextStyle(
                      fontFamily: "Times New Roman",
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
        
             Padding(
              padding:const EdgeInsets.only(bottom:20.0),
              child: Row(
                children: [
                  const SizedBox(
                    width: 200,
                    child: Text(
                      'Группа:',
                      style: TextStyle(
                        fontFamily: "Times New Roman",
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Text(
                    _class,
                    style:const TextStyle(
                      fontFamily: "Times New Roman",
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
             Padding(
                  padding:const EdgeInsets.fromLTRB(10,30,10,20),
                  child: TextField(
                    controller: _nameController,
                    style:const TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Color(0xffFF9E74), 
                    ),
                    decoration:const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding:EdgeInsets.all(10),
                      labelText: "Name",
                      prefixIcon:SizedBox(
                        width: 50,child: Icon(Icons.person),
                      ),
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.white,width: 1)
                      )
                    ),
                  ),
                ),

                 Padding(
                  padding:const EdgeInsets.fromLTRB(10,10,10,10),
                  child: TextField(
                    controller: _classController,
                    style:const TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Color(0xffFF9E74), 
                    ),
                    decoration:const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding:EdgeInsets.all(10),
                      labelText: "Class",
                      prefixIcon:SizedBox(
                        width: 50,child: Icon(Icons.person),
                      ),
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.white,width: 1)
                      )
                    ),
                  ),
                ),
            const SizedBox(height: 30,),
            ElevatedButton(
              onPressed: _onFixClicked, 
              child: const Text(
                'Исправить',
                style: TextStyle(fontFamily: "Times New Roman", fontSize: 30),
              )
            )
          ],
        ),
      )
    );
  }
  void _onFixClicked(){
    setState(() {
    _name = _nameController.text;
    _class = _classController.text;
    });
  }
}