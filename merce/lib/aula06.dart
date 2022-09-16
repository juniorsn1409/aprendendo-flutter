import 'package:flutter/material.dart';

import 'aula04.dart';
import 'aula07.dart';

class MyApp06 extends StatelessWidget {
  const MyApp06({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula 06',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aula 6"),
      ),
      body: const Center(
        child: Text("Olá Merce 06"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Merce"),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: const Text("Aula 04"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MyApp04()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: const Text("Aula 07"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MyApp07()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
