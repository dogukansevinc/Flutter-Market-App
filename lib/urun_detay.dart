import 'package:flutter/material.dart';

class UrunDetay extends StatelessWidget {
  final String fiyat;
  final String isim;
  final String resimYolu;
  final bool mevcut;

  const UrunDetay({Key key, this.fiyat, this.isim, this.resimYolu, this.mevcut})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Hero(
                tag: resimYolu,
                child: Image.network(
                  resimYolu,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.red[400],
                  size: 40,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                isim,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                fiyat,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Text(
                  "Bu bölümde ürün açıklaması bulunacak. Ürünün ne kadar kaliteli olduğu hakkında bilgiler verilecek.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 50,
                decoration: BoxDecoration(
                  color: mevcut ? Colors.red[400] : Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    mevcut ? "Sepete Ekle" : "Stokta Yok",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
