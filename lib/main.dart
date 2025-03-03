import 'package:flutter/material.dart';
import 'package:semantic_wrapper/widget/auto_semantic_wrapper.dart';
import 'package:semantic_wrapper/widget/semantic_wrapper.dart';

import 'product_page.dart';

ValueNotifier<bool> isSemanticEnabled = ValueNotifier(true);

void toggleSemantic() {
  isSemanticEnabled.value = !isSemanticEnabled.value;
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isSemanticEnabled,
      builder: (context, showSemantics, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          showSemanticsDebugger: showSemantics,
          initialRoute: '/',
          home: const MyHomePage(),
          builder: (context, child) {
            return Stack(
              fit: StackFit.expand,
              children: [
                child!,
                Positioned(
                  bottom: 36,
                  right: 16,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                    ),
                    child: const Text('Toggle Semantic', style: TextStyle(color: Colors.grey)),
                    onPressed: () {
                      toggleSemantic();
                    },
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Home Content'),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 160),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                settings: const RouteSettings(name: '/products'),
                builder: (context) => const ProductPage(),
              ),
            );
          },
          tooltip: 'products',
          child: const Icon(Icons.production_quantity_limits_outlined),
        ).withExcludeSemantic(
          context: context,
          type: 'button',
          action: 'tap',
        ),
      ),
    ).wrapWithAutoSemantic();
  }
}
