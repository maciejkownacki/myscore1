import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Category {
  final String title;
  final IconData icon;

  Category(this.title, this.icon);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
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
  final List<Category> categories = [];

  void addCategory() {
    setState(() {
      categories.add(Category('Nowa Kategoria', Icons.star));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
                // Otwórz stronę ustawień
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Divider(),
            Container(
              alignment: Alignment.center,
              color: Colors.grey,
              height: 220,
              child: PageView(
                children: <Widget>[
                  Column(
                    children: [
                      Text('PLACEHOLDER DLA WYKRESU 7 DNI'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('PLACEHOLDER DLA WYKRESU 30 DNI'),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(categories[index].icon),
                  title: Text(categories[index].title),
                  onTap: () {
                    // Logika szczegółów kategorii
                  },
                );
              },
            ),
            Divider(),
            FloatingActionButton(
              onPressed: addCategory, // Użyj metody addCategory
              child: const Icon(Icons.add),
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
