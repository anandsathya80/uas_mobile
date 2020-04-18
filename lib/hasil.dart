import 'package:flutter/material.dart';
import 'landing.dart';


class Hasil extends StatelessWidget {
  Hasil({
    @required this .nama,
    @required this .tanggal,
    @required this .bulan,
    @required this .tahun,
    @required this .jk,
    @required this .tinggi,
    @required this .berat,
    @required this .tingkat,
  });

  final String nama;
  final int tanggal;
  final int bulan;
  final int tahun;
  final String jk;
  final int tinggi;
  final int berat;
  final String tingkat;
  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    int umur;
    umur =  currentDate.year-tahun;
    int bulan1 = currentDate.month;
    int bulan2 = bulan;
    if (bulan2>bulan1){
      umur--;
    }else if(bulan1==bulan2){
      int hari1 = currentDate.day;
      int hari2 = tanggal;
      if(hari2>hari1){
        umur--;
      }
    }
    //String umur_user= '$umur';

    double kalori;

    if (jk=='pria' && tingkat=='jar')
      kalori= (88+(13*berat)+(4*tinggi)-(5*umur))*1.2;
    if (jk=='pria' && tingkat=='jarr')
      kalori= (88+(13*berat)+(4*tinggi)-(5*umur))*1.37;
    if (jk=='pria' && tingkat=='ser')
      kalori= (88+(13*berat)+(4*tinggi)-(5*umur))*1.57;
    if (jk=='pria' && tingkat=='serr')
      kalori= (88+(13*berat)+(4*tinggi)-(5*umur))*1.7;

    if (jk=='wanita' && tingkat=='jar')
      kalori= (447+(9*berat)+(3*tinggi)-(4*umur))*1.2;
    if (jk=='wanita' && tingkat=='jarr')
      kalori= (447+(9*berat)+(3*tinggi)-(4*umur))*1.37;
    if (jk=='wanita' && tingkat=='ser')
      kalori= (447+(9*berat)+(3*tinggi)-(4*umur))*1.57;
    if (jk=='wanita' && tingkat=='serr')
      kalori= (447+(9*berat)+(3*tinggi)-(4*umur))*1.7;



    return Scaffold(
      backgroundColor: Color(0xff6E4E3F),
      body: Container(
        child: new Column(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 0,left: 5,right: 10),
              child:
              Image.asset('assets/kalori.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
             margin: EdgeInsets.only(top:0,left: 40,right: 20),
              child: Text(
                'Hai, $nama  jumlah maksimal kalori per hari kamu:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:30),
              child: Text(
                '$kalori kalori',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 80,right: 80,bottom: 0,top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(child:
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  LandingPage()),
                      );
                    },
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    color: Colors.white,

                    child: Text(
                      'Coba lagi',
                      style:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
