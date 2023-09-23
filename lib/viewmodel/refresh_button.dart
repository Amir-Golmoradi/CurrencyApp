import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class RefreshButton extends StatelessWidget {
  const RefreshButton({Key? key}) : super(key: key);

  void showSnackBar(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          (msg),
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green[500],
      ),
    );
  }

  String getTime() {
    return "20:45";
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 50,
              width: 120,
              child: TextButton.icon(
                onPressed: () =>
                    showSnackBar(context, "به روز رسانی با موفقیت انجام شد"),
                icon: const Icon(
                  FontAwesome5.undo,
                  color: Colors.black,
                  size: 16,
                ),
                label: const Padding(
                  padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                  child: Text(
                    'بروز رسانی',
                    style: TextStyle(fontSize: 14, color: Color(0xFF2E2D2A)),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.deepPurple[200],
                  ), // BackGroundColor
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "آخرین بروز رسانی: ${getTime()}",
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
