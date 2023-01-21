import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:Tiwee/business_logic/model/channel_model.dart';

final channelCardProvider = StateProvider<List<ChannelModel>>((ref) {
  List<ChannelModel> channelsCard = [
    ChannelModel(
        name: "XPTV 1", iconAddress: "assets/icons/tv.svg", channelCount: 0),
    ChannelModel(
        name: "TV 2", iconAddress: "assets/icons/tv.svg", channelCount: 0),     
    ChannelModel(
        name: "TV 3", iconAddress: "assets/icons/tv.svg", channelCount: 0),
  ];
  return channelsCard;
});
