import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  var name= ['소미','길동','영숙'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: (){
            print(a);
            setState(() {
              a++;
            });
          },
        ),
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (c, i){
              return ListTile(
                leading: Image.asset('somi.jpg'),
                title: Text(name[i]),
              );
            }
        ),
        bottomNavigationBar: Bottom(),
      )
    );
  }
}

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone),
                  Icon(Icons.message),
                  Icon(Icons.contact_page ),
                ],
      ),
    )
    );
  }
}




// 스캐폴드
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home : Scaffold(
//           appBar: AppBar(title: Center(child: Text("TESTSET")),),
//           body: Container(),
//           bottomNavigationBar: BottomAppBar(
//             child: SizedBox(
//               height: 50,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//
//                 children: [
//                   Icon(Icons.phone),
//                   Icon(Icons.message),
//                   Icon(Icons.contact_page ),
//
//                 ],),
//             ),
//           ),
//         ));
//   }
// }

// 기본 디자인 레이아웃
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home : Scaffold(
//           appBar: AppBar(title: Center(child: Text("TESTSET")),),
//           body: Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               width: double.infinity, height: 50,
//               margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
//               decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black)
//               ),
//             ),
//           ),
//           bottomNavigationBar: BottomAppBar(
//             child: SizedBox(
//               height: 50,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//
//                 children: [
//                   Icon(Icons.phone),
//                   Icon(Icons.message),
//                   Icon(Icons.contact_page ),
//
//                 ],),
//             ),
//           ),
//         ));
//   }
// }


// 당근 레이아웃 비슷한거
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home : Scaffold(
//             appBar: AppBar(actions: [Icon(Icons.start),Icon(Icons.start)], title: Center(child: Text("TESTSET")),),
//             body: Container(
//               height: 150,
//               padding: EdgeInsets.all(10),
//               child: Row(
//                 children: [
//                   Image.asset("somi.jpg", width: 150,),
//                   Container(
//                     width: 200,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("소미기여워", style: TextStyle(fontWeight: FontWeight.w500),),
//                         Text("답십리"),
//                         Text("505050505"),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Icon(Icons.favorite),
//                             Text("3")
//                           ],
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             )
//         )
//     );
//   }
// }

// 리스트뷰 반복
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home : Scaffold(
//           appBar: AppBar(),
//           body: ListView.builder(
//               itemCount: 20,
//               itemBuilder: (c, i){
//                 print(i);
//                 return ListTile(
//                   leading: Image.asset('somi.jpg'),
//                   title: Text("쏘미~"),
//                 );
//               }
//           ),
//           bottomNavigationBar: BottomAppBar(),
//         )
//     );
//   }
// }