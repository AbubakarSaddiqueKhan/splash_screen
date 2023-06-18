import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen());
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Welcome to Home Page",
                style: GoogleFonts.caveat(
                    color: Colors.brown.shade300,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.white.withOpacity(0.5),
                        offset: Offset(-10, -10),
                      ),
                      BoxShadow(
                        blurRadius: 6,
                        color: Colors.pinkAccent.withOpacity(0.4),
                        offset: Offset(4, 4),
                      )
                    ])),
          ],
        ),
      ),
    );
  }
}
