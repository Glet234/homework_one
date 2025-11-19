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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget containerWithData = Row(
    children: [
      SizedBox(width: 15),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Icon(Icons.email, size: 30), Icon(Icons.call, size: 30)],
      ),
      SizedBox(width: 15),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('hello@mail.ru', style: TextStyle(fontSize: 20)),
          Text('+7 999 123 45 67', style: TextStyle(fontSize: 20)),
        ],
      ),
    ],
  );

  void _switchDataInContainer() {
    setState(() {
      containerWithData = Center(
          child: Icon(
              Icons.check,
              size: 75,
              color: Color.fromARGB(255, 180, 180, 180)
          )
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle, size: 100, color: Colors.lightBlue),
            SizedBox(height: 15,),
            Text(
              'Петр Иванов',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 230, 230, 230),
                borderRadius: BorderRadius.circular(15),
              ),
              height: 120,
              width: 290,
              child: containerWithData,
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                _switchDataInContainer();
              },
              child: SizedBox(
                height: 50,
                width: 180,
                child: Center(
                  child: Text(
                    'Свяжитесь со мной',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
