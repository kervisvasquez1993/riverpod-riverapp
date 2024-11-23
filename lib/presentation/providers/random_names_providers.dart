import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';
final namesStreamProvider = StreamProvider.autoDispose<String>((ref) async*{
  await for (final name in RandomGenerator.randomNamesStream()){
    yield name;
  }
});
// final namesStreamProvider = StreamProvider<List<String>>((ref) async*{
//   yield[];
//   await Future.delayed(Duration(seconds: 2));
//   yield['Fernndo'];
//   await Future.delayed(Duration(seconds: 2));
//   yield['Fernndo', 'Melissa'];
//   await Future.delayed(Duration(seconds: 2));
  
  
// });