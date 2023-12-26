import 'package:flutter/material.dart';
import 'package:shablon/pages/register/forgot.dart';
import 'package:shablon/pages/register/notakk.dart';
import 'package:shablon/pages/shablon/start.dart';
String user = '';
List login = [];


class person extends StatefulWidget {
   person({super.key});



  @override
  State<person> createState() => _personState();
}

class _personState extends State<person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 110),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://avatars.mds.yandex.net/i?id=202ceb62571851c187a67154adcbe5875480d2f6-7662747-images-thumbs&n=13',
                  width: 100,
                  height: 100,
                ),
                const Column(
                  children: [
                    Text(
                      'УНИВЕРСИТЕТ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 8, 125, 221),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      'КОСЫГИНА',
                      style: TextStyle(
                          color: Color.fromARGB(255, 8, 125, 221),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Flexible(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 225, 222, 222)),
                child: TextField(
                  onChanged: (String value) {
                              user = value;
                            }, 
                  decoration: InputDecoration(
                      labelText: 'Логин',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.black, width: 1.5))),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 05),
            child: Container(
                margin: const EdgeInsets.all(8),
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 225, 222, 222)),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Пароль',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.black, width: 1.5))),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const forgot();
                        },
                      ));
                    },
                    child: const Text('Забыли пароль?')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(),
            child: Expanded(
              flex: 1,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(160, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {
                    setState(() {
                             login.add(user);
                           });
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  start(userr: login[0],),
                        ));
                  },
                  child: const Text(
                    'Войти',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(),
            child: Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const notakk(),
                          ));
                    },
                    child: const Text(
                      'Нет аккаунта?',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ))),
          ),
        ],
      ),
    );
  }
}
