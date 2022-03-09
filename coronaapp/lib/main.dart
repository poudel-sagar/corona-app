import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(
      title: "corona app",
      debugShowCheckedModeBanner: false,
      home: sanoCovid(),
    ));

class sanoCovid extends StatefulWidget {
  bool get mounted => null;

bool loading = false;

List lstCountry;
//for taking data from
  Future<String> getWorldData() async {
    var response =
        await http.get(Uri.parse("https://brp.com.np/covid/country.php"));
        var getData = json.decode(response.body);
        if(this.mounted){
         setState((){
            loading: false;
            lstCountry = [getData];
            

          });
          

        }
  }
  // 

  @override
  State<sanoCovid> createState() => _sanoCovidState();

  void setState(Null Function() param0) {}
}

class _sanoCovidState extends State<sanoCovid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("covid app"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh), onPressed: () {})
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(5),
        children: [
         
        
          
        ],
      ),
    );
  }
}
