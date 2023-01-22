import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';

class ChannelScreen extends StatefulWidget {
  final String channelName;
  final String channelIcon;
  final String streamUrl;

  ChannelScreen({
    required this.channelName,
    required this.channelIcon,
    required this.streamUrl,
  });

  @override
  _ChannelScreenState createState() => _ChannelScreenState();
}

class _ChannelScreenState extends State<ChannelScreen> {
  BetterPlayerController _controller;
  var betterPlayerConfiguration = BetterPlayerConfiguration(
    controlsConfiguration: BetterPlayerControlsConfiguration(
      textColor: Colors.white,
      iconsColor: Colors.white,
      enableFullscreen: false,
    ),
  );

  @override
  void initState() {
    super.initState();
    _controller = BetterPlayerController.network(widget.streamUrl,
        betterPlayerConfiguration: betterPlayerConfiguration);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.channelName),
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: BetterPlayer(controller: _controller),
            ),
          ),
        ],
      ),
    );
  }
}
