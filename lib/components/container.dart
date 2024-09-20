import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final int pageNumber;
  const MyContainer({super.key, required this.pageNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          alignment: Alignment.center,
          color: Colors.deepOrange[400],
          child: Text(
            pageNumber.toString(),
            style: const TextStyle(fontSize: 30, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
