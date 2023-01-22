import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:Tiwee/business_logic/model/channel_model.dart';
import 'package:Tiwee/presentation/screens/video_player_screen/video_player_screen.dart';

class ChannelCard extends StatelessWidget {
  final ChannelModel channel;

  const ChannelCard({Key? key, required this.channel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Add the code here to navigate to the video player screen
        // and pass the stream url based on the channel name
        String streamUrl;
        if (channel.name == "XPTV 1") {
          streamUrl = "https://link1.m3u8";
        } else if (channel.name == "TV 2") {
          streamUrl = "https://link2.m3u8";
        } else if (channel.name == "TV 3") {
          streamUrl = "https://link3.m3u8";
        }
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => VideoPlayerScreen(
                  url: streamUrl,
                )));
      },
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 15,
                  offset: Offset(5, 5),
                  spreadRadius: -5)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(channel.iconAddress),
            SizedBox(
              height: 5,
            ),
            Text(channel.name)
          ],
        ),
      ),
    );
  }
}
