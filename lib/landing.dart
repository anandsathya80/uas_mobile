import 'package:flutter/material.dart';
import 'input.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4F7C40),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 20,left: 5,right: 10),
              child: Column(
                children: <Widget>[
                  //Text("tentang aplikasi" ,style: TextStyle(fontSize: 25),),
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.jpg'),
                    maxRadius: 90,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("I Made Anand Sathya",style: TextStyle(fontSize: 25),),
                  SizedBox(
                    height: 10,
                  ),
                  Text("1815051097" ,style: TextStyle(fontSize: 20),)
                ],
              ),
            ),
          ],
        ),
      ) ,
      body: new ListView(
        children: <Widget>[
          new Container(
            child: new Column(
              children: <Widget>[
                new Container(
//                  margin: EdgeInsets.only(top: 110,left: 5,right: 10),
                  child:
                  Image.asset('assets/latar.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:10),
                  child: Text(
                    'KALKULATOR KALORI ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 0.2,
                      height: 1,
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                new Container(
                  child: RaisedButton(
                      onPressed: (){
                        Navigator.push(context, 
                            MaterialPageRoute(builder: (context)=> InputDiri()),
                        );
                      },
                    color: Colors.amber,

                    child: Text('mulai',
                     style:
                     TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                   ),
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(right: 210, top: 190),
                  child: Text(">> geser untuk melihat profile", style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
