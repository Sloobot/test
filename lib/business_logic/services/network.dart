import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:Tiwee/business_logic/model/category.dart';
import 'package:Tiwee/business_logic/model/channel.dart';

Future<List<ChannelObj>?> fetchChannels() async {
  List<ChannelObj> channels = [];

  try {
    String jsonString = await rootBundle.loadString('assets/channels.json');
    var jsonData = jsonDecode(jsonString);
    for (var channel in jsonData) {
      ChannelObj channelObj = ChannelObj.fromJson(channel);

      if (channelObj.categories.isNotEmpty) {
        if (channelObj.categories[0].name != "XXX") {
          channels.add(channelObj);
        }
      }
    }
    List<ChannelObj> repairChannels = channels.toSet().toList();
    return repairChannels;
  } catch (e) {
    print(e);
  }
}
