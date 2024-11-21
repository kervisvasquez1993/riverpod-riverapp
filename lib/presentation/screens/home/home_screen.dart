import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:river_app/config/router/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiverApp'),
      ),
      body: _HomeScreenView(),
    );
  }
}

class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _CustomListTile(title: 'State provider', 
        subtitle: 'Un estado simple', 
        location: '/state-provider')
      ],
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String location;
  const _CustomListTile({super.key, 
  required this.title, 
  required this.subtitle, 
  required this.location});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(Icons.arrow_forward),
      onTap: ()=>context.push(location),
    );
  }
}