// ignore_for_file: prefer_const_constructors

import 'package:app_juvenal/src/widgets/consenarow.dart';
import 'package:app_juvenal/src/widgets/nroseguimientorow.dart';
import 'package:app_juvenal/src/widgets/registratelumn.dart';
import 'package:app_juvenal/src/widgets/siguientelumn.dart';
import 'package:app_juvenal/src/widgets/usuarioinput.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, 'Registro');
          },
        ),
        title: const Text('Empresas STARKS'),
        backgroundColor: const Color.fromARGB(255, 233, 10, 226),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Image.asset('assets/image/facebook.png'),
            onPressed: () {
              // Acción para el primer icono
            },
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/image/laibroud.JPG",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 40),
                Center(
                  child: Image.network(
                    'https://media.istockphoto.com/id/1308342065/es/vector/mapa-de-ubicaci%C3%B3n-doblado-con-marcador-mapa-de-la-ciudad-con-puntero-pin-mapa-de-navegaci%C3%B3n.jpg?s=612x612&w=0&k=20&c=WJDCd2E3XInstZgw0jk-5k3GHYibObrxJnYxZBvwstk=',
                    width: 180,
                    height: 100,
                  ),
                ),
                const SizedBox(height: 15),
                usuarioinput(),
                const SizedBox(height: 10),
                consena(),
                const SizedBox(height: 10),
                nroseguimiento(),
                siguientelumn(context),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    '¿Aún no tienes cuenta?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                registrate(context),
                const SizedBox(height: 20),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
