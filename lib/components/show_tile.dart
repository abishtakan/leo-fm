import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leo_fm/components/play_button.dart';

import '../models/show.dart';

class ShowTile extends StatelessWidget {
  final Show show;

  const ShowTile({super.key, required this.show});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color(0xFFC4D8E3), borderRadius: BorderRadius.circular(30)),
        margin: const EdgeInsets.all(30),
        padding: const EdgeInsets.all(25),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  // show image
                  AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: double.infinity,
                      child: Image(
                        image: AssetImage(show.imagePath),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  // show title
                  Text(show.showName,
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),

                  // show host
                  Text(
                    show.hostName,
                    style: TextStyle(fontSize: 16),
                  ),
                ]),
                // show time
                Text(
                  show.time,
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            PlayButton()
          ],
        ),
      ),
    );
  }
}
