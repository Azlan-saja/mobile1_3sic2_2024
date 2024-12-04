import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplikasi 3SIC2'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nilai Pajang',
                hintText: '0',
                helperText: 'Input dengan angka.',
                suffixText: 'Centimeter',
                icon: Icon(Icons.edit),
                border: OutlineInputBorder(),
              ),
              maxLength: 4,
              keyboardType: TextInputType.number,
            ),
            Text('2'),
            Text('3'),
            Text('4'),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cyclone),
              label: 'Reload',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.exit_to_app),
              label: 'Exit',
            ),
          ],
        ),
      ),
    );
  }
}
