import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Feronica Natalia Rivaldi - C14180099

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // int number = 0;
  int pengali=1;
  String hasil="";
  int hasilakhir=0;
  String status="Angka";
  String statteks="Huruf";

  void hitKali(){
    setState(() {
       pengali=pengali*2;
    });
   
  }

  void hitTambah() {

    setState(() {

      if (status=="Angka"){
      //ini biar kerefresh
        hasilakhir=pengali+hasilakhir;
        hasil+=" ";
        hasil+=hasilakhir.toString();
      }
      else{
        hasilakhir=pengali+hasilakhir;
        hasil+=" ";
        hasil += String.fromCharCode(hasilakhir+64)+" ";
      }
    });
  }

  void hitUbah(){
    setState(() {
    if(status=="Angka"){
      status="Huruf";
      statteks="Angka";
    }
    else{
      status="Angka";
      statteks="Huruf";
    }
      
    });

  }

  void hitReset() {
    setState(() {
      pengali=1;
      hasil="";
      hasilakhir=0;
      status="Angka";
    });
  }



  @override
  Widget build(BuildContext context) {
    //untuk merubah rubah
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Aplikasi pertama dengan button"),
            ),
            body: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: <Color>[
                      Colors.pinkAccent.shade100,
                      Colors.pinkAccent.shade400
                    ])),
                margin: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  //column ke bawah
                  mainAxisAlignment: MainAxisAlignment.center, //secara vertikal
                  children: <Widget>[
                    Text("Pengali : "+pengali.toString()),
                    Text("Hasil : "+hasil.toString()),
                    Text(status.toString()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          child: Text("Kalikan dengan 2"), 
                          onPressed: hitKali
                        ),
                        RaisedButton(
                          child: Text("Tambahkan"),
                          onPressed: hitTambah,
                        ),
                        RaisedButton(
                          color: Colors.pinkAccent.shade100,
                          child: Text("Ubah ke "+statteks),
                          onPressed: hitUbah,
  
                        ),
                        RaisedButton(
                          color: Colors.pinkAccent.shade100,
                          child: Text("Reset"),
                          onPressed: hitReset,
                        )
                      ],
                    )
                  ],
                ))));
  }
}
