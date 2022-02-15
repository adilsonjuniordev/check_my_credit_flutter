import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({required this.image, this.title, this.description, Key? key}) : super(key: key);

  final String image;
  final String? title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: const BorderSide(width: 1, color: Color(0xFFB5B5D5))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 1, 1, 1),
        child: Row(
          children: [
            Image.asset(image, scale: 1.3),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 2, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(title ?? "", style: const TextStyle(fontSize: 16)),
                        const Spacer(),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios, size: 14)),
                      ],
                    ),
                    Text(description ?? "", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, height: 1.1)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
