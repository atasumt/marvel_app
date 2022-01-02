import 'package:flutter/material.dart';

class RowHasTag extends StatelessWidget {
  const RowHasTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 25,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.brown.withOpacity(0.2),
          ),
          child: const Center(
            child: Text(
              '#spiderMan',
              style: TextStyle(fontSize: 13, color: Colors.brown),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 25,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.brown.withOpacity(0.2),
          ),
          child: const Center(
            child: Text(
              '#Marvel',
              style: TextStyle(fontSize: 13, color: Colors.brown),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 25,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.brown.withOpacity(0.2),
          ),
          child: const Center(
            child: Text(
              '#ÖrümcekAdam',
              style: TextStyle(fontSize: 13, color: Colors.brown),
            ),
          ),
        )
      ],
    );
  }
}
