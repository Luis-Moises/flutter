import 'dart:js';

import 'package:flutter/material.dart';
import 'package:testflutter/screens/dataScreen.dart';
import 'package:testflutter/screens/secondScreen.dart';
import 'package:testflutter/screens/thirdScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter demo',
    initialRoute: '/',
    routes: {
      '/': (context) => const HomePage(),
      '/second': (context) => const SecondPage(),
      '/third': (context) => const ThirdPage(),
      '/datos': (context) => const Datos()
    }
    //home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Color.fromARGB(255, 172, 76, 81),
        centerTitle: true,
        title: const Text('Pagina inicial'),
        elevation: 20.0,
        shadowColor: Color.fromARGB(255, 161, 228, 116),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () => {})
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/img/equation_clock.jpg", width: 370.0),
            const SizedBox(height: 20.0),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 218, 121, 121)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 15))),
                child: const Text('Segunda pantalla'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  );
                  Navigator.pushNamed(context, '/second');
                }),
            const SizedBox(height: 10.0),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 218, 121, 121)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 15))),
                child: const Text('Tercera pantalla'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const ThirdPage(),
                  );
                  Navigator.pushNamed(context, '/third');
                }),
            const SizedBox(height: 10.0),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 219, 92, 92)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('Datos'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const Datos(),
                  );
                  Navigator.pushNamed(context, '/datos');
                })
          ],
        ),
      ),
    );
  }
}

