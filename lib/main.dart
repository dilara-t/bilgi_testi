
import 'package:bilgi_testi/test_veri.dart';
import 'package:flutter/material.dart';

import 'const.dart';

void main(){
  runApp(BilgiTesti());

}

class BilgiTesti extends StatelessWidget{
  @override 
  Widget build(BuildContext buildContext){
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.indigo[700],
        body:SafeArea(child: SoruSayfasi(),
        )
      )
    );
  }
}



class SoruSayfasi extends StatefulWidget{
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {

  void fuction(bool a){

    if(test_1.testbittimi()==true){
      showDialog(
          context: context,
          builder: (BuildContext context){
            return AlertDialog(
              title: new Text('TEST BİTTİ'),
              content: new Text('Başa Dönmek İster misiniz?'),
              actions: <Widget>[
                new FlatButton(
                    child: new Text('Evet'),
                    onPressed: () {
                      Navigator.of(context).pop();

                      setState(() {
                        secimler=[];
                        test_1.indexsifirla();


                      });
            },
                     ),
              ],

            );
          }
      );
    }

    setState(() {
      if (test_1.getYanit() == a) {
        secimler.add(yanlis);
      } else {
        secimler.add(dogru);
      }

      test_1.arttirma();
    });
  }

  List<Widget> secimler = [];

  test_veri test_1 = test_veri();

  @override
  Widget build(BuildContext buildContext) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
              child: Center(
                child: Text(
                  test_1.getSoru(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                  ),
                ),
              ),
            ),
            Wrap(
              spacing: 3,
              children: secimler
              ,
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 40
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          ),
                          color: Colors.green,
                          onPressed: () {
                          fuction(false);
                          },
                          child: Icon(Icons.thumb_up,
                            color: Colors.white,)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          ),
                          color: Colors.red,
                          onPressed: () {
                            fuction(true);
                          },
                          child: Icon(Icons.thumb_down,
                            color: Colors.white,)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}






