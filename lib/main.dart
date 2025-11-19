import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Icon(Icons.account_circle, size: 100, color: Colors.lightBlue),
              ),
              Text(
                'Петр Иванов',
                style:  TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 120,
                width: 290,
                child:
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.email, size: 30,),
                          Icon(Icons.call, size: 30,),
                        ],
                      ),
                      SizedBox(width: 15,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('hello@mail.ru', style: TextStyle(fontSize: 20),),
                          Text('+7 999 123 45 67', style: TextStyle(fontSize: 20),)
                        ],
                      ),
                    ],
                  ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {print('Действие кнопки');},
                child: Text('Свяжитесь со мной', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
              )
            ],
          )
      ),
    );
  }
}
