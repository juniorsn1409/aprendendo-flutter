import 'package:flutter/material.dart';

import 'aula04.dart';
import 'aula06.dart';

class MyApp07 extends StatelessWidget {
  const MyApp07({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula 07',
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
          title: const Text("Aula 7"),
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
                title: const Text("Aula 06"),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MyApp06()),
                  );
                },
              ),
            ],
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Color.fromARGB(255, 241, 36, 105),
                width: 50,
                height: 50,
              ),
              Container(
                color: Color.fromARGB(255, 27, 11, 88),
                width: 50,
                height: 50,
              ),
              Row(
                children: [
                  Container(
                    color: Color.fromARGB(255, 241, 36, 105),
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Color.fromARGB(255, 27, 11, 88),
                    width: 50,
                    height: 50,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
