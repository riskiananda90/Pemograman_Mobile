import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Stackk extends StatefulWidget {
  const Stackk({super.key});

  @override
  State<Stackk> createState() => _MyAppState();
}

class _MyAppState extends State<Stackk> {
  bool isDarkTheme = false;

  void toggleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightGreenAccent,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      home: MyHomePage(
        title: 'HALAMAN STACK',
        toggleTheme: toggleTheme,
        isDarkTheme: isDarkTheme,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage(
      {super.key,
      required this.title,
      required this.toggleTheme,
      required this.isDarkTheme});

  final String title;
  final VoidCallback toggleTheme;
  final bool isDarkTheme;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          InkWell(
            onTap: widget.toggleTheme,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                widget.isDarkTheme
                    ? Icons.toggle_on_outlined
                    : Icons.toggle_off,
                color: widget.isDarkTheme
                    ? const Color.fromARGB(255, 80, 96, 186)
                    : Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            margin:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 80),
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(10)),
          ),
          Positioned(
              top: 30,
              left: 30,
              child: Column(
                children: [
                  const Text(
                    "Meksiko",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(10))),
                        height: 150,
                        width: 53,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        height: 150,
                        width: 53,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(10))),
                        height: 150,
                        width: 53,
                      ),
                    ],
                  )
                ],
              )),
          Positioned(
              top: 30,
              left: 203,
              child: Column(
                children: [
                  const Text(
                    "Indonesia",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10))),
                        height: 75,
                        width: 160,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(10))),
                        height: 75,
                        width: 160,
                      ),
                    ],
                  )
                ],
              )),
          Positioned(
              top: 130,
              left: 209,
              child: Container(
                  height: 25, child: Image.asset("Images/image.png"))),
          Positioned(
              top: 110,
              left: 87,
              child: Container(
                  height: 40, child: Image.asset("Images/Image2.png"))),
          Positioned(
            top: 230,
            left: 150,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {
                  Get.back();
                },
                child: Text("Back")),
          )
        ],
      ),
    );
  }
}
