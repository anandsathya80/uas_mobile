import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'hasil.dart';

class InputKeg extends StatefulWidget {
  String nama='';
  int tanggal = 0;
  int bulan = 0;
  int tahun = 0;
  String jk='';
  int tinggi = 0;
  int berat = 0;



  InputKeg({
    this.nama ,
    this.tanggal,
    this.bulan,
    this.tahun,
    this.jk,
    this.tinggi,
    this.berat});

  @override
  _InputKegState createState() => _InputKegState();
}

class _InputKegState extends State<InputKeg> {
  String tingkat="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff47CAFE),
      body: SingleChildScrollView(child: Column(
        children: <Widget>[
          new Container(
            margin: EdgeInsets.only(top: 0,left: 5,right: 10),
            child:
            Image.asset('assets/aktivitas.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
//              margin: EdgeInsets.only(top:30,left: 40),
            child: Text(
              'pilih tingkat olahraga kamu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          new Container(
            margin: EdgeInsets.only(top:10, left: 20,right: 20),

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child:    new RadioListTile(
              value: "jar",
              title: new Text("Olahraga 0 hari seminggu" , style:
              TextStyle(fontSize: 20, ),),
              groupValue: tingkat,
              onChanged: (val){
                setState(() {
                  tingkat = val;
                });
              },
            ),
          ),

          new Container(
            margin: EdgeInsets.only(top:10, left: 20,right: 20),

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child: RadioListTile(
              value: "jarr",
              title: new Text("Olahraga 1-3 hari seminggu " , style:
              TextStyle(fontSize: 20, ),),
              groupValue: tingkat,
              onChanged: (val){
                setState(() {
                  tingkat = val;
                });
              },
            ),
          ),

          new Container(
            margin: EdgeInsets.only(top:10, left: 20,right: 20),

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child: RadioListTile(
              value: "ser",
              title: new Text("Olahraga 3-5 hari seminggu " , style:
              TextStyle(fontSize: 20, ),),
              groupValue: tingkat,
              onChanged: (val){
                setState(() {
                  tingkat = val;
                });
              },
            ) ,
          ),

          new Container(
            margin: EdgeInsets.only(top:10, left: 20,right: 20),

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child: RadioListTile(
              value: "serr",
              title: new Text("Olahraga 7 hari seminggu " , style:
              TextStyle(fontSize: 20, ),),
              groupValue: tingkat,
              onChanged: (val){
                setState(() {
                  tingkat = val;
                });
              },
            ),
          ),

          new Container(
            margin: EdgeInsets.only(left: 320,right: 40,bottom: 20,top: 40),
            child: RaisedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> Hasil(
                    nama: widget.nama ,
                    tanggal: widget.tanggal,
                    bulan: widget.bulan,
                    tahun: widget.tahun,
                    jk: widget.jk,
                    tinggi: widget.tinggi,
                    berat: widget.berat,
                    tingkat: tingkat,
                  )),
                );
              },
              padding: EdgeInsets.only(top: 5, bottom: 5),
              color: Colors.amber,
              child: Text(
                "lanjutkan",
                style:
                TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
            ),
          ),
        ],
      ),),
    );
  }
}
