import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'inputkeg.dart';
import 'package:flutter/cupertino.dart';

class InputBerat extends StatefulWidget {
  String nama='';
  int tanggal = 0;
  int bulan = 0;
  int tahun = 0;
  String jk='';


  InputBerat({
    this.nama ,
    this.tanggal,
    this.bulan,
    this.tahun,
    this.jk, });


  @override
  _InputBeratState createState() => _InputBeratState();
}

class _InputBeratState extends State<InputBerat> {
  int tinggi = 0;
  int berat = 0;



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xff588da8),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 0,left: 5,right: 10),
              child:
              Image.asset('assets/tinggi.png',
                fit: BoxFit.fitWidth,
              ),
            ),


            Container(
//              margin: EdgeInsets.only(top:30,left: 40),
              child: Text(
                'berat & tinggi berapa ?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),


            new Container(
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.only(right: 300),
              child: Text("tinggi:"),
            ),
            new Container(
              margin: EdgeInsets.only(top:0, left: 20,right: 20),
              padding: EdgeInsets.all(10),
              child: new TextField(
                onChanged: (txt){
                  setState(() {
                    tinggi = int.parse(txt);
                  });
                },
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "cm",
                  //labelText: "Nama",
                  fillColor: Colors.white,
                  filled: true,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),

            new Container(
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.only(right: 300),
              child: Text("berat:"),
            ),
            new Container(
              margin: EdgeInsets.only(top: 0,left: 20,right: 20),
              padding: EdgeInsets.all(10),
              child: new TextField(
                onChanged: (txt){
                  setState(() {
                    berat = int.parse(txt);
                  });
                },
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "kg",
                  //labelText: "Nama",
                  fillColor: Colors.white,
                  filled: true,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),

            new Container(
              margin: EdgeInsets.only(left: 320,right: 40,bottom: 20,top: 70),
              child: RaisedButton(
              onPressed: (){
                Navigator.push(
                  context,
                    MaterialPageRoute(builder: (context)=> InputKeg(
                      nama: widget.nama ,
                      tanggal: widget.tanggal,
                      bulan: widget.bulan,
                      tahun: widget.tahun,
                      jk: widget.jk,
                      tinggi: tinggi,
                      berat: berat,
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
        ),
      ),
    );
  }
}