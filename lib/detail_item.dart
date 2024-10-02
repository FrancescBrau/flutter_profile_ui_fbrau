import 'package:flutter/material.dart';

class DetailItem extends StatelessWidget {
  final String label;
  final String value;

  const DetailItem({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.grey[400], fontSize: 14.0),
        ),
        const SizedBox(height: 5.0),
        Text(
          value,
          style: const TextStyle(fontSize: 15.0),
        ),
      ],
    );
  }
}
