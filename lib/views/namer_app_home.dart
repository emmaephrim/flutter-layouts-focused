import 'package:english_words/src/word_pair.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/namer_provider.dart';

class NamerApp extends StatelessWidget {
  const NamerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Namer App",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: const NamerAppHome(),
    );
  }
}

class NamerAppHome extends StatefulWidget {
  const NamerAppHome({super.key});

  @override
  State<NamerAppHome> createState() => _NamerAppHomeState();
}

class _NamerAppHomeState extends State<NamerAppHome> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = const GeneratorPage();
        break;
      case 1:
        page = const FavoritesPage();
        break;
      default:
        throw UnimplementedError("no Widget for the $selectedIndex");
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        // appBar: AppBar(
        //   title: Text("Home"),
        // ),
        body: Row(
          children: [
            SafeArea(
                child: NavigationRail(
              extended: constraints.maxWidth >= 600,
              destinations: const [
                NavigationRailDestination(icon: Icon(Icons.home), label: Text("Home")),
                NavigationRailDestination(icon: Icon(Icons.favorite), label: Text("Favorites"))
              ],
              selectedIndex: selectedIndex,
              onDestinationSelected: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
            )),
            Expanded(
              flex: 1,
              child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: page,
              ),
            ),
          ],
        ),
      );
    });
  }
}

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<NamerAppState>(context);
    var favoritesCount = appState.favorites.length;

    return ListView(children: [
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "You have $favoritesCount favorites",
            ),
            ...appState.favorites.map((item) => ListTile(
                  leading: const Icon(Icons.favorite),
                  title: Text("${item.first} ${item.second}"),
                )),
          ])),
    ]);
  }
}

class GeneratorPage extends StatelessWidget {
  const GeneratorPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // var appState = Provider.of<NamerAppState>(context);
    var appState = context.watch<NamerAppState>();
    var pair = appState.current;
    IconData icon;

    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigCard(pair: pair),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  appState.toggleFavorite();
                },
                label: const Text("Like"),
                icon: Icon(icon),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  appState.getNext();
                },
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = theme.textTheme.displayMedium!.copyWith(color: theme.colorScheme.onPrimary);

    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          "${pair.first} ${pair.second}",
          style: textStyle,
        ),
      ),
    );
  }
}
