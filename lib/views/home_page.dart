import 'package:flutter/material.dart';
import 'package:flutter_layout/views/grid_count.dart';
import 'package:flutter_layout/views/grid_page.dart';
import 'package:flutter_layout/views/namer_app_home.dart';
import 'package:flutter_layout/views/school_page.dart';
import 'package:flutter_layout/views/straw_page.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const GridPage()));
              },
              child: const Text("Grid View")),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (builder) => const SchoolPage()));
              },
              icon: const Icon(Icons.school)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NamerApp()));
                },
                child: const Text("Namer App Page")),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) => const GridCount()));
                },
                child: const Text("Grid Count")),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) => const StrawPage()));
                },
                child: const Text(
                  "Straw Page",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16, decorationStyle: TextDecorationStyle.solid),
                )),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Image.asset(
              "assets/pizza_1.jpg",
              fit: BoxFit.contain,
            ),
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            const SizedBox(
              // height: 100,
              child: Card(
                  child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.restaurant_menu,
                        color: Colors.blue,
                      ),
                      title: Text("1625 Main Street"),
                      subtitle: Text(
                        "My City, CA 99984",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(
                        Icons.contact_phone,
                        color: Colors.blue,
                      ),
                      title: Text("(404) 555-1212", style: TextStyle(fontWeight: FontWeight.w500)),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.contact_phone,
                        color: Colors.blue,
                      ),
                      title: Text("(404) 555-1212", style: TextStyle(fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
