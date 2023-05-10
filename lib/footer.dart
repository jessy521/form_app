import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            print('MyButton was tapped!');
          },
          child: Container(
            height: 60.0,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.red[600],
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(2, 2), // Shadow position
                  ),
                ]),
            child: const Center(
              child: Text(
                'Create Account',
                style: (TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ),
        const SizedBox(height: 25),
        SizedBox(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Align(
                child: Text(
              'Have an account ?',
              style: TextStyle(color: Colors.black38, fontSize: 18),
            )),
            Align(
                child: Text(
              ' Login',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
                  fontWeight: FontWeight.bold),
            )),
          ],
        ))
      ],
    );
  }
}
