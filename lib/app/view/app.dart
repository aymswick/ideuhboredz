import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:ideuhboredz/counter/counter.dart';
import 'package:ideuhboredz/l10n/l10n.dart';

final _router = GoRouter(routes: [
  ShellRoute(
      builder: (context, state, child) => AdaptiveScaffold(destinations: [
            NavigationDestination(icon: Icon(Icons.view_kanban), label: 'Board')
          ]),
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => CounterPage(),
        )
      ])
]);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
