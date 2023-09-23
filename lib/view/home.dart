import 'package:flutter/material.dart';
import 'package:currency/viewmodel/texts.dart';
import 'package:currency/viewmodel/refresh_button.dart';
import 'package:currency/viewmodel/currency/currency_board.dart';
import 'package:currency/viewmodel/currency/currency_board_tile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/Images/money_icon.png",
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "قیمت سکه و ارز",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          const Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.menu,
                color: Color(0xFF252525),
                size: 30,
              ),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/Images/Q.png",
                  width: 30,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 10),
                Text(
                  'نرخ ارز آزاد چیست ؟',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ],
            ),
            // Explanation Part
            const SizedBox(height: 10),
            const Text(
              textExplaination,
              style: TextStyle(fontSize: 10),
              textDirection: TextDirection.rtl,
            ),
            const CurrencyBoard(),
            const CurrencyBoardTile(),
            const SizedBox(
              height: 1,
            ),
            const RefreshButton()
          ],
        ),
      ),
    );
  }
}
