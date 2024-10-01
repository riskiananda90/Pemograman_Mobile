import 'package:flutter/material.dart';
import 'package:latihan_1/Pages/ListView/HomePageAbsen.dart';
import 'Pages/Columnn.dart';
import 'Pages/Roww.dart';
import 'Pages/Stack/Stackk.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkTheme = false;

  void toggleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const MyApp()),
        GetPage(name: "/Stack", page: () => const Stackk()),
        GetPage(name: "/Absen", page: () => const Homepageabsen()),
      ],
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
        title: 'Flutter Demo Home Page',
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 175,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Get.toNamed("Stack");
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "STACK",
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      )
                    ],
                  )),
            ),
          ),
          Center(
            child: SizedBox(
              width: 175,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Get.toNamed("Absen");
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ListView Absen",
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        children: [
          const SizedBox(
            width: 100,
          ),
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Roww()));
            },
            tooltip: "Kurangin",
            child: const Icon(Icons.view_column),
          ),
          const SizedBox(
            width: 100,
          ),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Columnn()));
            },
            tooltip: "Tambah",
            child: const Icon(Icons.table_rows),
          ),
        ],
      ),
    );
  }
}
