import 'package:flutter/material.dart';
import 'package:fmarket/kategori.dart';

class Urunler extends StatefulWidget {
  @override
  _UrunlerState createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> with SingleTickerProviderStateMixin {
  TabController televizyonKontrolcusu;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    televizyonKontrolcusu = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: televizyonKontrolcusu,
          indicatorColor: Colors.red[400],
          labelColor: Colors.red[400],
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          tabs: [
            Tab(
              child: Text(
                "Temel Gıda",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Tab(
              child: Text(
                "Şekerleme",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Tab(
              child: Text(
                "İçecekler",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Tab(
              child: Text(
                "Temizlik",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: televizyonKontrolcusu,
            children: [
              Kategori(
                kategori: "Temel Gıda",
              ),
              Kategori(
                kategori: "Şekerleme",
              ),
              Kategori(
                kategori: "İçecekler",
              ),
              Kategori(
                kategori: "Temizlik",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
