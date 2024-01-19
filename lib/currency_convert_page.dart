import 'package:flutter/material.dart';

class CurrencyConvertMaterialPage extends StatefulWidget {
  const CurrencyConvertMaterialPage({super.key});

  @override
  State<CurrencyConvertMaterialPage> createState() =>
      _CurrencyConvertMaterialPageState();
}

class _CurrencyConvertMaterialPageState
    extends State<CurrencyConvertMaterialPage> {
  double result = 0.0;

  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        style: BorderStyle.solid,
        width: 2.0,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Currency Converter',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${result.toString()} PKR',
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'Enter the amount in USD',
                    hintStyle: TextStyle(color: Colors.white),
                    suffixIcon: Icon(Icons.monetization_on_outlined),
                    suffixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  controller: controller,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    setState(
                      () {
                        result = double.parse(controller.text) * 281;
                      },
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Convert',
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
