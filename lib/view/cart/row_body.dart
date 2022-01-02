import 'package:flutter/material.dart';

class RowBody extends StatelessWidget {
  const RowBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 250,
          width: (MediaQuery.of(context).size.width - 50) / 2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                  image: AssetImage('assets/images/sipader_man2.jpg'),
                  fit: BoxFit.contain)),
        ),
        const SizedBox(
          height: 10,
          width: 10,
        ),
        Column(
          children: [
            Container(
              height: 120,
              width: (MediaQuery.of(context).size.width - 100) / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/images/sipadre_man3.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 110,
              width: (MediaQuery.of(context).size.width - 100) / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/images/spider_man4.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
