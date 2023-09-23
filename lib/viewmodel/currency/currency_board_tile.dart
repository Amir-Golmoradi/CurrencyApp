import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:currency/viewmodel/api/currency_api.dart';
import 'package:currency/viewmodel/advertisment.dart';

// ignore: must_be_immutable
class CurrencyBoardTile extends StatefulWidget {
  const CurrencyBoardTile({Key? key}) : super(key: key);

  @override
  State<CurrencyBoardTile> createState() => _CurrencyBoardTileState();
}

class _CurrencyBoardTileState extends State<CurrencyBoardTile> {
  List<CurrencyApi> currencyApi = [];

  Future<void> getResponse() async {
    const baseURL =
        "https://sasansafari.com/flutter/api.php?access_key=flutter123456";

    await http.get(Uri.parse(baseURL)).then(
      (response) {
        if (currencyApi.isEmpty) {
          if (response.statusCode == 200) {
            List jsonResponse = jsonDecode(response.body);

            if (jsonResponse.isNotEmpty) {
              debugPrint("SUCCESSFULLY APPROACHED!");

              // ignore: dead_code
              for (int s = 0; s < jsonResponse.length; s++) {
                setState(() {
                  currencyApi.add(
                    CurrencyApi(
                      id: jsonResponse[s]["id"],
                      changes: jsonResponse[s]["changes"],
                      price: jsonResponse[s]["price"],
                      status: jsonResponse[s]["status"],
                      title: jsonResponse[s]["title"],
                    ),
                  );
                });
              }
            }
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    getResponse();

    return Container(
      width: double.infinity,
      height: 300,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: currencyApi.length,
        itemBuilder: (context, int position) => Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  blurRadius: 1,
                  color: Colors.grey.shade600,
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: CurrencyItems(position, currencyApi),
          ),
        ),
        separatorBuilder: (BuildContext context, int index) {
          if (index % 4 == 0) {
            return const Padding(
              padding: EdgeInsets.only(top: 7, bottom: 0),
              child: Advertisement(),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }

  int positionArg(int position) => position;
}

// ignore: must_be_immutable
class CurrencyItems extends StatelessWidget {
  int position;
  List<CurrencyApi> currencyApi;

  CurrencyItems(
    this.position,
    this.currencyApi, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          currencyApi[position].title!,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          currencyApi[position].price!,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          currencyApi[position].changes!,
          style: currencyApi[position].status == 'n'
              ? Theme.of(context).textTheme.displaySmall
              : Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
