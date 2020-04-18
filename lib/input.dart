import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'inputberat.dart';
import 'package:flutter/cupertino.dart';



class InputDiri extends StatefulWidget {
  @override
  _InputDiriState createState() => _InputDiriState();
}


class _InputDiriState extends State<InputDiri> {
  String nama='';
  int tanggal = 0;
  int bulan = 0;
  int tahun = 0;
  String jk="";
  final focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.green,

      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 5,),
            new Container(
              margin: EdgeInsets.only(top: 0,left: 5,right: 10),
              child:
              Image.asset('assets/kenalan.png',
                fit: BoxFit.fitWidth,
              ),
            ),


            Container(
//              margin: EdgeInsets.only(top:30,left: 40),
              child: Text(
                'halo, tulis',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
//              margin: EdgeInsets.only(left: 45),
              child: Text(
                'data diri dulu yuk?',
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
              child: Text("Nama"),
            ),

            new Container(
              margin: EdgeInsets.only(top: 0,left: 20,right: 20),
              padding: EdgeInsets.all(10),
              child: new TextField(
                onChanged: (txt){
                  setState(() {
                    nama=txt;
                  });
                },
                decoration: new InputDecoration(
                    hintText: "Nama Lengkap",
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
              margin: EdgeInsets.only(right: 250),
              child: Text("Data Kelahiran:"),
            ),

            new Container(
              margin: EdgeInsets.only(top: 0,left: 20,right: 20),
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Expanded(child:  new TextField(
                    onChanged: (txt){
                      setState(() {
                        tanggal = int.parse(txt);

                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        hintText: "dd",
                        //labelText: "Tanggal Lahir",
                        fillColor: Colors.white,
                        filled: true,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                        )
                    ),
                  ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(child: new TextField(
                    onChanged: (txt){
                      setState(() {
                        bulan = int.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,

                    decoration: new InputDecoration(
                        hintText: "mm",
                        //labelText: "Bulan Lahir",
                        fillColor: Colors.white,
                        filled: true,
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(15.0)
                        )
                    ),
                  ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(child: new TextField(
                    onChanged: (txt){
                      setState(() {
                        tahun = int.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,

                    decoration: new InputDecoration(
                        hintText: "yyyy",
                        //labelText: "Tahun Lahir",
                        fillColor: Colors.white,
                        filled: true,
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(15.0)
                        )
                    ),
                  ),
                  ),
                ],
              ),
            ),

            new Container(
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.only(right: 250),
              child: Text("Jenis Kelamin:"),
            ),
            new Container(
              margin: EdgeInsets.only(top: 10,left: 30,right: 30),
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: new Row(
                children: <Widget>[
                  Expanded(child:  new RadioListTile(
                    value: "wanita",
                    title: new Text("Wanita" , style:
                    TextStyle(fontSize: 16, ),),
                    groupValue: jk,
                    onChanged: (val){
                      setState(() {
                        jk = val;
                      });
                    },
                  ),
                  ),
                  Expanded(child: new RadioListTile(
                    value: "pria",
                    title: new Text("Pria" , style:
                    TextStyle(fontSize: 16, ),),
                    groupValue: jk,
                    onChanged: (val){
                      setState(() {
                        jk = val;
                      });
                    },
                  ),
                  )
                ],
              ),
            ),


            new Container(
              margin: EdgeInsets.only(left: 320,right: 40,bottom: 20,top: 30),
              child: RaisedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> InputBerat(
                      nama: nama,
                      jk: jk,
                      bulan: bulan,
                      tanggal: tanggal,
                      tahun: tahun,
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



