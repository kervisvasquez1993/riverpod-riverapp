import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/providers.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final titleStyle = Theme.of(context).textTheme.titleMedium;
    final name = ref.watch(randomNameProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('state provider'),
      ),
      body: Center(
        child: Text(name, style: titleStyle),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: (){
          //esto solo ejecuta nuevamente la funcion en este caso randomnameprovider
          ref.invalidate(randomNameProvider);
        }),
    );
  }
}