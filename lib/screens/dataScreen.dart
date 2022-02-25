import 'package:flutter/material.dart';

// página de datos

class Datos extends StatelessWidget {
  const Datos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos'),
        backgroundColor: Color.fromARGB(255, 71, 116, 101),
        centerTitle: true,
        elevation: 20.0,
        shadowColor: Color.fromARGB(255, 17, 61, 30),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 20.0,
              ),
              Image.asset("assets/img/foto.jpg", width: 370.0),
              const Text(
                  'Tecnologias de la informacion Area Desarrollo de Software Multiplataforma',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.center),
              const SizedBox(height: 10.0),
              const Text(
                'David Zavala Ugalde',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Grupo: TI02SM-20',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 18, 59, 25)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 15))),
                child: const Text('Regresar'),
                onPressed: () => Navigator.pop(context),
              )
            ]),
      ),
    );
  }
}
