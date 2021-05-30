import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text(
            "Sepetim",
            style: TextStyle(
              color: Colors.red[400],
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        ListTile(
          title: Text("Çikolatalı Gofret"),
          subtitle: Text("2 adet x 3.5 TL"),
          trailing: Text("7 TL"),
        ),
        ListTile(
          title: Text("Meyve Suyu"),
          subtitle: Text("1 Adet 2 TL"),
          trailing: Text("2 TL"),
        ),
        ListTile(
          title: Text("Islak Mendil"),
          subtitle: Text("2 adet 5"),
          trailing: Text("11 TL"),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Column(
                children: [
                  Text(
                    "Toplam Tutar",
                    style: TextStyle(
                      color: Colors.red[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "20 TL",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 45,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              color: Colors.red[400],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "Alışverişi Tamamla",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
