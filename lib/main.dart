import 'package:currency_converter/currency_converter_cupertino_page.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

// >>>>>> App using material desing

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(home: CurrencyConvertMaterialPage());
//   }
// }

// >>>>>> App using cupertino desing
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(home: CurrencyConverterCupeterTinoPage());
  }
}
