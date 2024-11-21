import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';
//el autodispose es para eliminar el estado de la app
final randomNameProvider = StateProvider.autoDispose<String>((ref){
  print('ramdom name'); 
  return RandomGenerator.getRandomName();
});