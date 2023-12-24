import 'package:flutter/material.dart';
import 'package:leo_fm/models/show.dart';

import 'components/show_tile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imagePath = "assets/images/logo.png";
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 200, child: Image.asset(imagePath)),
                ShowTile(show: Show()),
                // Column(
                //   children: [
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text("About us"),
                //         IconButton(
                //             onPressed: () {},
                //             icon: Icon(Icons.info_outline_rounded))
                //       ],
                //     ),
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text("Follow us on"),
                //         IconButton(
                //             onPressed: () {}, icon: Icon(Icons.facebook)),
                //         IconButton(
                //             onPressed: () {}, icon: Icon(Icons.mail_rounded)),
                //       ],
                //     )
                //   ],
                // )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(color: Color(0xFFC4D8E3)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.cell_tower_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.list_alt_rounded)),
              IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined)),
            ],
          ),
        ),
      ),
    );
  }
}
