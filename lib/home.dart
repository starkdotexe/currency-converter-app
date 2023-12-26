import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  final border = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.blue, width: 2),
    borderRadius: BorderRadius.circular(10),
  );

  void buttonClicked() {
    result = double.parse(textEditingController.text) * 83.17;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Currency Converter',
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "INR $result",
                  style: const TextStyle(
                      fontSize: 45, fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: textEditingController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Enter the Amount in USD',
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      prefixIcon: const Icon(Icons.monetization_on),
                      enabledBorder: border,
                      focusedBorder: border),
                ),
                ElevatedButton(
                  onPressed: buttonClicked,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Convert',
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
