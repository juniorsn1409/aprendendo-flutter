import 'package:flutter/material.dart';

import 'aula04.dart';
import 'aula06.dart';
import 'aula07.dart';

class MyApp08 extends StatelessWidget {
  const MyApp08({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula 08',
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
          title: const Text("Aula 8"),
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
        body: SizedBox(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 200,
                  child: Container(
                    color: Color.fromARGB(255, 125, 40, 40),
                    width: double.infinity,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text('Row 1'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text('Column 1'),
                              Text('Column 1'),
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text('Row 1'),
                              ]),
                        ]),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text('1'),
                    Text('2'),
                    Text('3'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text('1'),
                    Text('2'),
                    Text('3'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text('1'),
                    Text('2'),
                    Text('3'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text('0'),
                  ],
                ),
              ]),
        ));
  }
}
