import 'package:demo_river/state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterScreen(),
      ),
    );
  }
}

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final value = ref.watch(stateCounterProvider);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // children: [
          //   Text(
          //     'Count: ${value.toString()}',
          //     style: const TextStyle(fontSize: 24),
          //   ),
          children:[
            Text(value.toString()),const
          
             SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref.read(stateCounterProvider.notifier).state++;
                  },
                  child: const Text('Increase'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    ref.read(stateCounterProvider.notifier).state--;
                  },
                  child: const Text('Decrease'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.read(stateCounterProvider.notifier).state = 0;
              },
              child: const Text('Reset'),
            ),
          ]
        ),
      ),
    );
  }
}
