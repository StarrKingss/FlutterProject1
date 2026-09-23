import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kalkulator')),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(hintText: "Input Angka 1"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(hintText: "Input Angka 2"),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "+",
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 255, 133, 11),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 255, 133, 11),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "x",
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 255, 133, 11),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "÷",
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 255, 133, 11),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "Hasil ",
              style: TextStyle(
                fontSize: 20,
                color: const Color.fromARGB(255, 255, 133, 11),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(250, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text(
                "Reset",
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 255, 133, 11),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
