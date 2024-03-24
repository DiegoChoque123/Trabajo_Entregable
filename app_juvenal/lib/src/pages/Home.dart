// ignore_for_file: prefer_const_constructors


import 'package:app_juvenal/src/widgets/nsegui3row.dart';
import 'package:app_juvenal/src/widgets/registrate2.lumn.dart';
import 'package:app_juvenal/src/widgets/rseguimiento2row.dart';
import 'package:app_juvenal/src/widgets/siguientelumn.dart';
// ignore: unused_import
import 'package:app_juvenal/src/widgets/usuarioinput.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                Center(
                  child: Image.network(
                    'https://media.istockphoto.com/id/1308342065/es/vector/mapa-de-ubicaci%C3%B3n-doblado-con-marcador-mapa-de-la-ciudad-con-puntero-pin-mapa-de-navegaci%C3%B3n.jpg?s=612x612&w=0&k=20&c=WJDCd2E3XInstZgw0jk-5k3GHYibObrxJnYxZBvwstk=',
                    width: 180,
                    height: 100,
                  ),
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    
                    '¡Detalle El Paquete Espesificó!',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 15),
                rseguimiento2(),
               
               GestureDetector(
                  onTap: () {},
                  child: const Text(

                    '¿Buscas Otro Paquete?',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 17, 78, 116),
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                const SizedBox(height: 10),
                rsegui3(),
                
                siguientelumn(context),
                const SizedBox(height: 20),

               
                registrate2(context),
               
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
