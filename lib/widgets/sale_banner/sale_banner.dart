import 'package:flutter/material.dart';

class SaleBanner extends StatelessWidget {
  const SaleBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        //width: double.infinity,
        //color: Colors.white,
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black38,
              blurRadius: 9,
              spreadRadius: 1,
              offset: Offset(3, 0))
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            saleText(),
            SizedBox(width: 100),
            saleText(),
            SizedBox(width: 100),
            saleText(),
            SizedBox(width: 100),
            saleText(),
            SizedBox(width: 100),
            saleText()
          ],
        ));
  }
}

Text saleText() {
  return Text(
    'SALE',
    style: TextStyle(
        fontSize: 33,
        color: Color.fromARGB(255, 201, 36, 25),
        fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}
