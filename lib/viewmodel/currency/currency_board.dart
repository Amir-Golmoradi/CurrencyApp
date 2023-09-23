import 'package:flutter/material.dart';

class CurrencyBoard extends StatelessWidget {
  const CurrencyBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 25, 5, 2),
      child: Container(
        height: 35,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 130, 130, 130),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'نام آزاد ارز',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              'قیمت',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              'تغییرات',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      ),
    );
  }
}
