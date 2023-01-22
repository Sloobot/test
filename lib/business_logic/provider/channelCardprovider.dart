import 'package:flutter/material.dart';
import 'package:Tiwee/business_logic/model/channel_model.dart';
import 'package:riverpod/riverpod.dart';

final channelCardProvider = StateProvider<List<ChannelModel>>((ref) {
  List<ChannelModel> channelsCard = [
    ChannelModel(
        name: "TV 1", iconAddress: "assets/icons/tv.svg", channelCount: 0, streamUrl: "http://example1.com/stream1.m3u8"),
    ChannelModel(
        name: "TV 2", iconAddress: "assets/icons/tv.svg", channelCount: 0, streamUrl: "http://example2.com/stream2.m3u8"),     
    ChannelModel(
        name: "TV 3", iconAddress: "assets/icons/tv.svg", channelCount: 0, streamUrl: "http://example3.com/stream3.m3u8"),
  ];
  return channelsCard;
});
