import 'package:flutter/material.dart';
import 'package:marvel_app/View/circle_list_view.dart';
import 'package:marvel_app/model/marvel.dart';
import 'package:marvel_app/view/cart/row_end.dart';
import 'package:marvel_app/view/cart/row_hastag.dart';
import 'package:marvel_app/view/cart/row_title.dart';

import 'cart/row_body.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBarHome(),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10, left: 5),
            height: 140,
            width: double.infinity,
            child: ListView.builder(
              itemCount: marvel.length,
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    CircleListView(
                      imagePath: marvel[index].imagePath,
                      basePath: marvel[index].basePath,
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Material(
                borderRadius: BorderRadius.circular(16),
                elevation: 4,
                child: Container(
                  height: 500,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const RowTitle(),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const RowBody(),
                      const SizedBox(
                        height: 15,
                      ),
                      const RowHasTag(),
                      const SizedBox(
                        height: 8,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 4,
                      ),
                      const RowEnd(),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }

  AppBar AppBarHome() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        "MarvelApp",
        style: TextStyle(
          fontSize: 23,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.camera_alt),
          color: Colors.grey,
        ),
      ],
    );
  }
}
