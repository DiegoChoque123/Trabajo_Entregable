import 'package:flutter/material.dart';
import 'login.dart'; // Importa la clase Login desde el archivo login.dart

class Registro extends StatelessWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
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
              'assets/image/laibroud.JPG',
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
                _buildInputWithImage(context, 'Usuario', Icons.person),
                const SizedBox(height: 10),
                _buildInputWithImage(context, 'Contraseña', Icons.lock),
                const SizedBox(height: 10),
                _buildInputWithImage(context, 'Repita Contraseña', Icons.lock),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // Acción al presionar "¡Crea tu Número de seguimiento!"
                  },
                  child: const Text(
                    '¡Crea tu Número de seguimiento!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                _buildInputWithImage(context, 'Nro de Seguimiento', Icons.lock),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 145,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          // Acción al presionar el botón "REGISTRARSE"
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Login()), // Navega a la pantalla de inicio de sesión
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 16),
                          backgroundColor: Color.fromARGB(255, 8, 194, 246),
                        ),
                        child: const Text('REGISTRAR'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInputWithImage(
      BuildContext context, String hintText, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(iconData),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                border: const OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Registro(),
  ));
}
