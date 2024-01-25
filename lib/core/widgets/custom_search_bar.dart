import 'package:flutter/material.dart';

class CustomSearchbar extends StatelessWidget {
  const CustomSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 9,
          child: Container(
            height: 50.0,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: 'Search your city',
              ),
            ),
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ),
      ],
    );
  }
}
