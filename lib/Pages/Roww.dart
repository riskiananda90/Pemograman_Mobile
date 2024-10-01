import 'package:flutter/material.dart';

class Roww extends StatelessWidget {
  const Roww({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 200,
                    width: 100,
                    color: Colors.black,
                    child: const SizedBox(),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    height: 200,
                    width: 100,
                    color: Colors.amber,
                    child: const SizedBox(),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 200,
                    width: 100,
                    color: Colors.red,
                    child: const SizedBox(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Back",
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
