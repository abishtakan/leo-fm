import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PlayButton extends StatefulWidget {
  const PlayButton({super.key});

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  bool _isplaying = false;
  final player = AudioPlayer();
  final url = "https://s3.voscast.com:10833/tamilfm.mp3";

  Future<void> _playRadio(String url) async {
    await player.setUrl(url);
    await player.play();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            _isplaying = !_isplaying;
          });
          if (_isplaying) {
            _playRadio(url);
          } else {
            player.stop();
          }
        },
        icon: Icon(
          _isplaying
              ? Icons.pause_circle_filled
              : Icons.play_circle_fill_rounded,
          size: 64,
          color: Colors.black,
        ));
  }
}
