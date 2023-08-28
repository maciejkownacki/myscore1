import 'package:flutter/material.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Row(
            children: [
            Spacer(),
        Expanded(
          flex: 6,
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              height: 150,
              width: 200,
            ),
          ),
        ),
              IconButton(
                icon: Icon(Icons.settings),
                color: Theme.of(context).colorScheme.onSurface,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => SettingsPage(),
                  //   ),
                  // );
                },
              ),
      ],
      ),
      ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                color: Colors.grey,
                height: 220,
                child: PageView(
                  children: <Widget>[
                    // Placeholder dla wykresu 7 dni
                    Column(
                      children: [
                        Text('PLACEHOLDER DLA WYKRESU 7 DNI'),
                        // Dodaj tutaj wykres dla 7 dni
                      ],
                    ),
                    // Placeholder dla wykresu 30 dni
                    Column(
                      children: [
                        Text('PLACEHOLDER DLA WYKRESU 30 DNI'),
                        // Dodaj tutaj wykres dla 30 dni
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                alignment: Alignment.center,
                color: Colors.grey,
                height: 200,
                child: const Text('INNY ELEMENT'),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.red,
                height: 300,
                child: const Text('INNY ELEMENT'),
              ),
            ],
          ),
        )
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
