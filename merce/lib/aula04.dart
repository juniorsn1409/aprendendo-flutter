import 'package:flutter/material.dart';

class MyApp04 extends StatelessWidget {
  const MyApp04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula 04',
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
        title: const Text("Aula 04"),
      ),
      body: const Center(
        child: Text("Olá Merce 04"),
      ),
    );
  }
}
