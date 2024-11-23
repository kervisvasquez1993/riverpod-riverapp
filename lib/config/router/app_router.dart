import 'package:go_router/go_router.dart';
import 'package:river_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/',
    builder: (context, state) => const HomeScreen(),),
    GoRoute(path: '/state-provider',
    builder: (context, state) => StateProviderScreen(),
    ),
    GoRoute(path: '/future-provider',
    builder: (context, state) => PokemonScreen(),
    ),
    GoRoute(path: '/stream-provider',
    builder: (context, state) => StreamScreen(),
    )
  ]
);