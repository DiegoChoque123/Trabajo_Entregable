import 'package:flutter/material.dart';

void goToHome(BuildContext context) {
  Navigator.pushNamed(context, 'Home');
}

Column siguientelumn(BuildContext context) {
  return Column(
    children: [
      const SizedBox(height: 10),
      // ignore: sized_box_for_whitespace
      Container(
        width: 155,
        height: 45.0,
        child: ElevatedButton(
          onPressed: () {
            goToHome(context);
          },
          child: const Text(
            'SIGUIENTE',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    ],
  );
}
