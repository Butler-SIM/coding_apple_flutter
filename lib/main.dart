import 'package:flutter/material.dart';

import 'back_up.dart';

void main() {
  runApp(MaterialApp(
      home : MyApp()));
}


class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var total =3 ;
  var text = "";
  var name_list = ['소미','완우','경민'];

  name_list_update(name){

    setState(() {
      name_list.add(name);
    });
  }

  addOne(){
    setState(() {
      total++;
    });

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              child: Text("Button"),
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (context){
                      return DialogUI(addOne : addOne, name_list_update: name_list_update);
                });
              },
            );
          }
        ),
        appBar: AppBar(title: Text(total.toString()),),
        body: ListView.builder(
            itemCount: name_list.length,
            itemBuilder: (c, i){
              return ListTile(
                leading: Image.asset('somi.jpg'),
                title: Text(name_list[i]),
              );
            }
        ),
        bottomNavigationBar: Bottom(),
      );
  }
}


class DialogUI extends StatelessWidget {
  DialogUI({Key? key, this.addOne, this.name_list_update}) : super(key: key);
  final addOne;
  var inputData = TextEditingController();
  final name_list_update;


  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(controller: inputData,),
            TextButton(
                onPressed:(){
                  addOne();
                  name_list_update(inputData.text);
                  },
                child: Text('완료')),
            TextButton(
                onPressed:(){
                    Navigator.pop(context);
                },
                child: Text("취소")),

          ],
        ),
      ),
    );
  }
}


