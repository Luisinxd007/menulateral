import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}

class Principal extends StatelessWidget {
  const Principal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
          children: <Widget>[
            DrawerHeader(
              child: Text(
                "Menu Lateral",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                // image: DecorationImage(image: Image.network(""))
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text("Catalogo"),
            ),
            ListTile(
              leading: Icon(Icons.inventory),
              title: Text("Inventario"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Salir"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Menu Lateral (Drawer)'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
