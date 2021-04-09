import 'package:flutter/material.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset('assets/mmo.jpg'),
          Text(
              "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 173006013 numaralı Öğrenci Yiğit Berat Kırıkkale tarafından 30 Nisan 2021 günü yapılmıştır."),
          Text("Versiyon: 0.0.1"),
        ],
      ),
    );
  }
}
