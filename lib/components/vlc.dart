import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/material.dart';

class VlcPlayer extends StatelessWidget {
  late Media media;
  final int width;
  final int height;
  late Player player;
  
  VlcPlayer({Key? key, required String url, int? width, int? height}) : width = width ?? 680, height = height ?? 380, super(key: key ){
    media = Media.network(url);
    player = Player(id: 69420, videoDimensions: VideoDimensions(this.width, this.height));
    player.remove(0);
    player.add(media);
    player.play();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 2.0,
      child: Video(
        player: player,
        width: width.toDouble(),
        height: height.toDouble(),
        scale: 1.0,
        showControls: true,
        volumeThumbColor: Theme.of(context).colorScheme.primary,
        volumeActiveColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
