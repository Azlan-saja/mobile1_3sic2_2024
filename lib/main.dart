import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nilaiPanjang = TextEditingController();
    TextEditingController nilaiLebar = TextEditingController();
    TextEditingController hasilLuas = TextEditingController();

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
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                'Hitung Persegi Panjang',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: nilaiPanjang,
                decoration: const InputDecoration(
                  labelText: 'Nilai Panjang',
                  hintText: '0',
                  helperText: 'Input dengan angka.',
                  suffixText: 'Centimeter',
                  icon: Icon(Icons.edit),
                ),
                maxLength: 4,
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: nilaiLebar,
                decoration: const InputDecoration(
                  labelText: 'Nilai Lebar',
                  hintText: '0',
                  helperText: 'Input dengan angka.',
                  suffixText: 'Centimeter',
                  icon: Icon(Icons.edit),
                ),
                maxLength: 4,
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                onPressed: () {
                  double xhasil = 0;
                  xhasil = double.parse(nilaiPanjang.text) *
                      double.parse(nilaiLebar.text);
                  hasilLuas.text = xhasil.toString();
                },
                child: const Text('Luas'),
              ),
              TextFormField(
                controller: hasilLuas,
                decoration: const InputDecoration(
                  labelText: 'Hasil Luas',
                  hintText: '0',
                  helperText: 'Rumus PxL',
                  suffixText: 'Centimeter',
                  icon: Icon(Icons.find_in_page),
                ),
                readOnly: true,
              ),
            ],
          ),
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
