import 'package:flutter/material.dart';

Container rsegui3() {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black, 
        width: 2.0, 
      ),
      borderRadius: BorderRadius.circular(10), 
    ),
    padding: const EdgeInsets.symmetric(horizontal: 10), 
    child: Row(
      children: [
        Image.asset('image/cerrar-con-llave.png', width: 40, height: 50),
        const SizedBox(width: 10),
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Nro De Paquete',
              hintStyle: TextStyle(fontWeight: FontWeight.bold),
              border: InputBorder.none, 
            ),
          ),
        ),
      ],
    ),
  );
}
