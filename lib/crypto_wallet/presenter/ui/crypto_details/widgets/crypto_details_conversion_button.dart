import 'package:flutter/material.dart';

class CryptoDetailsConversionButton extends StatelessWidget {
  const CryptoDetailsConversionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(350, 45),
          backgroundColor: const Color.fromRGBO(224, 43, 87, 1),
        ),
        onPressed: () {},
        child: const Text('Converter moeda'),
      ),
    );
  }
}
