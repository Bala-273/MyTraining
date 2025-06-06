import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Musically",
        style: TextStyle(color:Colors.white))
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 250,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey
            ),
            child:Container(
              height: 100,
              width: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black),
                child: Text("What`s your mood...?",
                style: TextStyle(color:Colors.white)
               )
               ),
             
          ) 
        ),
      ),
    
   ) );
}