// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:shablon/pages/create.dart';





var colorList = [
  const Color(0xFF7986CB),
  const Color(0xFFAA00FF),
  const Color(0xFFBF360C),
  const Color(0xFFAEEA00),
  const Color(0xFFFDD835),
  const Color(0xFF7E57C2),
  const Color(0xFF2979FF),
  const Color(0xffffad3142),
  const Color(0xFF263238),
  const Color(0xFF304FFE),
];


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: start(),
  ));
}

// ignore: camel_case_types
class start extends StatefulWidget {
  const start({super.key, this.userr, this.MassDescription, this.MassName, this.MassPhoto});
  final userr;
  final MassDescription;
  final  MassName;
  final MassPhoto;

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return MassName.isEmpty  
    
    ?Scaffold(
      
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:  Text(
            '${widget.userr}',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w200),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [
            Image.network(
                'https://avatars.mds.yandex.net/i?id=202ceb62571851c187a67154adcbe5875480d2f6-7662747-images-thumbs&n=13'),
          ],
        ),
        body: Center(child: Text('Пока что здесь нет стендов'),),
        floatingActionButton: FloatingActionButton(    child: Center(child: Icon(Icons.add),), onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => create() ));
        },),
        
       
        
        
        )

        
        
        
        
        
        
        :Scaffold(
      
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:  Text(
            '${widget.userr}',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w200),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [
            Image.network(
                'https://avatars.mds.yandex.net/i?id=202ceb62571851c187a67154adcbe5875480d2f6-7662747-images-thumbs&n=13'),
          ],
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: MassName.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () =>
              showDialog<String>(
            context: context,
            builder: (BuildContext context) => Dialog(
             backgroundColor: const Color.fromARGB(255, 208, 208, 208),
             child: Padding(
               padding: const EdgeInsets.all(12),
               child: Column(
                children: [
                Text('${MassName[index]}', style: TextStyle(fontSize: 24),),
                SizedBox(height: 20,),
                Text('Описание стенда', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                SizedBox(height: 20,),
                Text('${widget.MassDescription[index]}', style: TextStyle(fontSize: 12),),
                SizedBox(height: 20,),
                Image.network('${MassPhoto[index]}')
               ]),
             ),
            )),
              
            child: Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 227, 222, 222),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: colorList[index],
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      color: colorList[index],
                    )
                  ]),
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.network('${MassPhoto[index]}', width: 140, height: 140,),
                ),
                SizedBox(height: 20,),
                Text('${MassName[index]}', style: TextStyle(fontSize: 14),)
              ],)
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(    child: Center(child: Icon(Icons.add),), onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => create(userr: widget.userr,) ));
        },),
        
       
        
        
        );
      
  }
}
