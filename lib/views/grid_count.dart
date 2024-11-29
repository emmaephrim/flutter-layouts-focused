import "package:flutter/material.dart";

class GridCount extends StatelessWidget {
  const GridCount({super.key});

  GridTile _gridTile(String text, String imageAsset) => GridTile(
        footer: Container(
          color: Colors.black.withOpacity(0.5),
          padding: const EdgeInsets.all(20),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        child: ClipRRect(
          // decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
          // boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 5, spreadRadius: 1, offset: Offset(0, 0))],
          // ),
          child: Image.asset("assets/$imageAsset", fit: BoxFit.cover),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grind Count with gridTile'),
      ),
      body: Center(
        child: GridView.count(
          padding: const EdgeInsets.all(10),
          crossAxisCount: 2,
          crossAxisSpacing: 6,
          mainAxisSpacing: 8,
          children: [
            _gridTile("Beach 1", "beach_1.jpg"),
            _gridTile("Beach 2", "beach_2.jpg"),
            _gridTile("Savanna 1", "savanna_1.jpg"),
            _gridTile("Savanna 2", "savanna_2.JPG"),
            _gridTile("Desert", "desert_1.webp"),
            _gridTile("Desert 2", "desert_2.jpg"),
            Stack(
              alignment: const Alignment(0.1, 0.1),
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/desert_2.jpg"),
                  radius: 100,
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.black45),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                    "Mia B",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                )
              ],
            ),
            Stack(
              // alignment: Alignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.all(20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular((8)),
                      child: Image.asset(
                        "assets/beach_1.jpg",
                        fit: BoxFit.cover,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    )),
                const Center(
                  child: Icon(
                    Icons.message_sharp,
                    color: Colors.pink,
                    size: 40,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
