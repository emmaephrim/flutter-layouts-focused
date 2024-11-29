import 'package:flutter/material.dart';

class StrawPage extends StatefulWidget {
  const StrawPage({super.key});

  @override
  State<StrawPage> createState() => _StrawPageState();
}

class _StrawPageState extends State<StrawPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Straw Berry"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffaedcf0),
                    border: Border.all(color: Colors.black87, width: 2.0),
                  ),
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  child: const Text(
                    "Strawberry Pavlova",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xffaedcf0), border: Border.all(color: Colors.black87, width: 2.0)),
                  child: const Text(
                    "Pavlova is a marigue-based desert named after the Russian ballerina Anna Pavlova  features a crisp crust and soft. Light inside, topped with fruit and whipped cream.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xffaedcf0), border: Border.all(color: Colors.black87, width: 2.0)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.black87,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.black87,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.black87,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.black87,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                      Text(
                        "170 reviews",
                        style: TextStyle(fontSize: 19),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xffaedcf0),
                    border: Border.all(color: Colors.black87, width: 2.0),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.local_movies_outlined,
                            color: Colors.green,
                          ),
                          Text("PREP:"),
                          Text("25 min"),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.alarm, color: Colors.green),
                          Text("Cook:"),
                          Text("1 hr"),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.cut,
                            color: Colors.green,
                          ),
                          Text("FEEDS:"),
                          Text("4-6"),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Image.asset("assets/beach_1.jpg"),
                    ),
                    Expanded(flex: 5, child: Image.asset("assets/savanna_1.jpg")),
                    Expanded(flex: 3, child: Image.asset("assets/desert_2.jpg"))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    const Icon(Icons.star, color: Colors.black),
                    const Icon(Icons.star, color: Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black26,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 10, color: Colors.black38),
                                borderRadius: const BorderRadius.all(Radius.circular(8)),
                              ),
                              margin: const EdgeInsets.all(4),
                              child: Image.asset("assets/desert_2.jpg"),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 10, color: Colors.black38),
                                borderRadius: const BorderRadius.all(Radius.circular(8)),
                              ),
                              margin: const EdgeInsets.all(4),
                              child: Image.asset("assets/beach_2.jpg"),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 10, color: Colors.black38),
                                borderRadius: const BorderRadius.all(Radius.circular(8)),
                              ),
                              margin: const EdgeInsets.all(4),
                              child: Image.asset("assets/desert_2.jpg"),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 10, color: Colors.black38),
                                borderRadius: const BorderRadius.all(Radius.circular(8)),
                              ),
                              margin: const EdgeInsets.all(4),
                              child: Image.asset("assets/beach_2.jpg"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
