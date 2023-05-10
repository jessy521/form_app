import 'package:flutter/material.dart';

class HelpingWidget extends StatelessWidget {
  HelpingWidget({required this.btn, required this.text1, required this.text2});

  final IconData btn;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Color.fromARGB(182, 228, 236, 236),
      ),
      child: Row(
        children: [
          IconButton(
            padding: const EdgeInsets.fromLTRB(8, 0, 40, 0),
            icon: Icon(
              btn,
              size: 40.0,
              color: Colors.redAccent,
            ),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      text1,
                      style: const TextStyle(fontSize: 18.0, color: Colors.red),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      text2,
                      style: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
