import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  get GoogleFonts => null;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$_counter',
                  style: GoogleFonts(
                    fontSize: 260,
                    color: Colors.black54,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: <Widget>[

                    IconButton(
                      iconSize: 60,
                      color: Colors.blue,
                      icon: const Icon(
                        Icons.add_circle,
                      ),
                      onPressed: _incrementCounter,
                    ),
                    IconButton(
                      iconSize: 60,
                      icon: const Icon(
                        Icons.remove_circle_outline,
                        color: Colors.blue,
                      ),
                      onPressed: _decrementCounter,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(

              onPressed: _resetCounter,
              style: ButtonStyle(


                backgroundColor: MaterialStateProperty.all(Colors.grey),
                fixedSize: MaterialStateProperty.all(const Size(120, 50)),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(fontSize: 25,fontWeight: FontWeight.w500,),
                ),
              ),
              child: const Text(
                'Reset',


              ),
            ),
          ],

        ),
      ),

    );
  }


}
