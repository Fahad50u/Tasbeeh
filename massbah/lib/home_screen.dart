import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 170, 168, 168),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 130, 120, 120),
        centerTitle: true,
        title: const Text("سُبْحَانَ اللَّهِ عَمَّا يُشْرِكُونَ "),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Center(),
              Container(
                width: MediaQuery.of(context).size.width / 1.50,
                height: MediaQuery.of(context).size.height / 1.50,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 133, 120, 120),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 9),
                      blurRadius: 20,
                    )
                  ],
                ),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 206, 197, 197),
                    ),
                    child: Text(
                      count.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Transform.translate(
                offset: Offset(1, 9),
                child: Container(
                  width: 190,
                  height: 190,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 228, 221, 221),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 9),
                            blurRadius: 20,
                            color: Colors.black),
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () => counter(),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 128, 126, 126),
                            shape: BoxShape.circle,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(80, 80),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => reset(),
                            child: const Icon(
                              Icons.wifi_protected_setup,
                              size: 30,
                            ),
                            style: ElevatedButton.styleFrom(
                              foregroundColor:
                                  const Color.fromARGB(255, 228, 5, 5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
