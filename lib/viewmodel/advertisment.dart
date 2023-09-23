import 'package:flutter/material.dart';

class Advertisement extends StatelessWidget {
  const Advertisement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 1,
            color: Colors.grey.shade600,
          )
        ],
        color: Colors.yellow[400],
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          "تبلیغات",
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
