import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Primera App",
      home: ExampleScaffol(),
    );
  }
}

class ExampleScaffol extends StatelessWidget {
  const ExampleScaffol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold"),
      ),
      body: const Center(
        child: Text("Hola Mundo"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                padding: EdgeInsets.zero,
                child: Center(
                  child: Text('Menu de navegación',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                )),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Config'),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Ajustes')
      ]),
    );
  }
}
