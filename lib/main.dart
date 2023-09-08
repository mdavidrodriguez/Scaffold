import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      title: 'App',
      home: const ExampleScaffold(),
    );
  }
}

class ExampleScaffold extends StatefulWidget {
  const ExampleScaffold({super.key});

  @override
  ExampleScaffoldState createState() => ExampleScaffoldState();
}

class ExampleScaffoldState extends State<ExampleScaffold> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Center(child: Text('Inicio')),
    const Center(child: Text('Configuración')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_a_photo))
        ],
      ),
      body: _pages[_currentIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Center(child: Text('Menú de Navegación'))),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configuración'),
              onTap: () {
                setState(() {
                  _currentIndex = 1;
                  Navigator.pop(context);
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configuración',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
