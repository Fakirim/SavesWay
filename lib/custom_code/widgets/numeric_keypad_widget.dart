// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class NumericKeypadWidget extends StatefulWidget {
  const NumericKeypadWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _NumericKeypadWidgetState createState() => _NumericKeypadWidgetState();
}

class _NumericKeypadWidgetState extends State<NumericKeypadWidget> {
  final TextEditingController _textEditingController = TextEditingController();
  final NumberFormat currencyFormat =
      NumberFormat.currency(locale: "en_US", symbol: "\$", decimalDigits: 2);
  String _currentValue = '';

  void _onKeyTap(String value) {
    setState(() {
      if (value == 'C') {
        _currentValue = _currentValue.isNotEmpty
            ? _currentValue.substring(0, _currentValue.length - 1)
            : '';
      } else if (value == '.' && _currentValue.contains('.')) {
        // Prevent multiple decimals
      } else {
        _currentValue += value;
      }

      // Update the text field with the formatted value
      if (_currentValue.isEmpty) {
        _textEditingController.clear();
      } else {
        final num? number = num.tryParse(_currentValue);
        if (number != null) {
          _textEditingController.text = currencyFormat
              .format(number / 100); // Adjust for currency formatting
        }
      }
    });
  }

  Widget _buildNumberButton(String number, VoidCallback onTap) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            primary: Colors.blueGrey,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(24),
          ),
          child: Text(
            number,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Calculate button size for responsiveness
    double buttonWidth =
        (widget.width ?? MediaQuery.of(context).size.width) / 4;
    double buttonHeight = buttonWidth;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: buttonWidth * 0.1),
      width: widget.width,
      height: widget.height,
      child: Column(
        children: [
          Expanded(
            flex: 2, // TextField gets more space
            child: Align(
              alignment: Alignment.bottomRight,
              child: TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Amount',
                ),
                style: const TextStyle(fontSize: 24),
                readOnly: true,
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Expanded(
            flex: 4, // Keypad gets proportionally more space
            child: Column(
              children: [
                ...List.generate(
                    3,
                    (index) => Expanded(
                          child: Row(
                            children: List.generate(
                                3,
                                (i) => _buildNumberButton(
                                    '${index * 3 + i + 1}',
                                    () => _onKeyTap('${index * 3 + i + 1}'))),
                          ),
                        )),
                Expanded(
                  child: Row(
                    children: [
                      _buildNumberButton('.', () => _onKeyTap('.')),
                      _buildNumberButton('0', () => _onKeyTap('0')),
                      _buildNumberButton('C', () => _onKeyTap('C')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
