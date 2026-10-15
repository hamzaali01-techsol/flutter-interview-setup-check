import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

// Uses the same packages as the interview exercise, so a successful run
// means they are downloaded and compile on this machine.
void main() {
  runApp(
    Provider.value(
      value: 'Your setup is ready for the interview.',
      child: const SetupCheckApp(),
    ),
  );
}

final _router = GoRouter(
  routes: [GoRoute(path: '/', builder: (_, _) => const HomePage())],
);

class SetupCheckApp extends StatelessWidget {
  const SetupCheckApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Setup Check',
      theme: ThemeData(colorSchemeSeed: Colors.indigo),
      routerConfig: _router,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Interview Setup Check')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.check_circle, color: Colors.green, size: 72),
              const SizedBox(height: 16),
              Text(
                context.read<String>(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
