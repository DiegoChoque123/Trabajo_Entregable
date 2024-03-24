import 'package:flutter/material.dart';

Column registrate2(BuildContext context) {
    return Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 5),
                    
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'Login');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 8, 206, 240),
                              ),
                            child: const Text(
                              'Volver',
                              style: TextStyle(fontSize: 20),                                
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              );
  }