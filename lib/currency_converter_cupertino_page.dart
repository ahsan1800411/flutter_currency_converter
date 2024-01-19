import 'package:flutter/cupertino.dart';

// stfl
class CurrencyConverterCupeterTinoPage extends StatefulWidget {
  const CurrencyConverterCupeterTinoPage({super.key});

  @override
  State<CurrencyConverterCupeterTinoPage> createState() =>
      _CurrencyConverterCupeterTinoPageState();
}

class _CurrencyConverterCupeterTinoPageState
    extends State<CurrencyConverterCupeterTinoPage> {
  double result = 0.0;

  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text(
            'Currency Converter',
            style: TextStyle(color: CupertinoColors.white),
          ),
          backgroundColor: CupertinoColors.black,
        ),
        backgroundColor: CupertinoColors.black,
        child: Center(
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
                    color: CupertinoColors.white,
                  ),
                ),
                CupertinoTextField(
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  controller: controller,
                  placeholder: 'Please enter amount in USD',
                  suffix: const Icon(CupertinoIcons.money_dollar_circle_fill),
                ),
                const SizedBox(
                  height: 10,
                ),
                CupertinoButton(
                  onPressed: () {
                    setState(
                      () {
                        result = double.parse(controller.text) * 281;
                      },
                    );
                  },
                  color: CupertinoColors.black,
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
