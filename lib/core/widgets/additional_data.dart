import 'package:flutter/material.dart';

class AdditionalData extends StatelessWidget {
  const AdditionalData({super.key, required this.data, required this.title});
  final String? title;
  final String? data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          title ?? '',
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
          ),
        ),
        Text(
          data ?? '',
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
          ),
        )
      ],
    );
  }
}
