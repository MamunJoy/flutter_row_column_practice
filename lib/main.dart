import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Row and Column'),
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
        title: Text("Row and Column"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              // height: 10,
              // width: 10,
            
              decoration: BoxDecoration(
                color: Colors.red
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            // height: 50,
            // width: 50,

            decoration: BoxDecoration(
                color: Colors.green
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            // height: 50,
            // width: 50,

            decoration: BoxDecoration(
                color: Colors.blue
            ),
          ),
        ],
      ) ,
    );
  }
}
