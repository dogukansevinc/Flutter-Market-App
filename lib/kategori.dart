import 'package:flutter/material.dart';
import 'package:fmarket/urun_detay.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key key, this.kategori}) : super(key: key);

  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<Widget> gosterilecekListe;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (widget.kategori == "Temel Gıda") {
      gosterilecekListe = [
        urunKarti(
          "Zeytin Yağı",
          "23.5 TL",
          "https://cdn.pixabay.com/photo/2016/05/24/13/29/olive-oil-1412361_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Süt",
          "3.5 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        urunKarti(
          "Et 1 kg",
          "3.5 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        urunKarti(
          "Süt",
          "3.5 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        urunKarti(
          "Süt",
          "3.5 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        urunKarti(
          "Süt",
          "3.5 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        urunKarti(
          "Süt",
          "3.5 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        urunKarti(
          "Süt",
          "3.5 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
      ];
    } else if (widget.kategori == "Şekerleme") {
      gosterilecekListe = [
        urunKarti(
          "Süt",
          "3.5 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        urunKarti(
          "Süt",
          "3.5 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
      ];
    } else if (widget.kategori == "İçecekler") {
      gosterilecekListe = [
        urunKarti(
          "Süt",
          "3.5 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        urunKarti(
          "Süt",
          "3.5 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        urunKarti(
          "Süt",
          "3.5 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        urunKarti(
          "Süt",
          "3.5 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
      ];
    } else if (widget.kategori == "Temizlik") {
      gosterilecekListe = [
        urunKarti(
          "Süt",
          "3.5 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        urunKarti(
          "Süt",
          "3.5 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
        urunKarti(
          "Süt",
          "3.5 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        ),
      ];
    }
  }

  Widget urunKarti(String isim, String fiyat, String resimYolu,
      {bool mevcut = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => UrunDetay(
                      isim: isim,
                      resimYolu: resimYolu,
                      fiyat: fiyat,
                      mevcut: mevcut,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4.0,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: resimYolu,
              child: Container(
                width: 120,
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(resimYolu),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              isim,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              fiyat,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.red[400],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      padding: EdgeInsets.all(10),
      childAspectRatio: 1,
      children: gosterilecekListe,
    );
  }
}
