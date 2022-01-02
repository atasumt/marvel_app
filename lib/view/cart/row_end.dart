import 'package:flutter/material.dart';

class RowEnd extends StatelessWidget {
  const RowEnd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.share,
          color: Colors.black.withOpacity(0.9),
          size: 25,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "2.9K",
          style: TextStyle(fontSize: 15),
        ),
        const SizedBox(
          width: 20,
        ),
        Icon(
          Icons.comment,
          color: Colors.black.withOpacity(0.9),
          size: 25,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "568",
          style: TextStyle(fontSize: 15),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 25,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "5.8K",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        )
      ],
    );
  }
}
