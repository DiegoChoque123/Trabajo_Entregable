

import 'package:flutter/material.dart';

Row nroseguimiento() {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('image/cerrar-con-llave.png',
                      width: 50, height: 40),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Nro De Seguimiento',
                          hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                      obscureText: true,
                    ),
                  ),
                ],
              );
  }