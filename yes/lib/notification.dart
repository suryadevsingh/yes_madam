import 'package:flutter/material.dart';

class notification extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Scaffold(
        appBar: AppBar(title: Text("Notifications"),elevation: 8.0,backgroundColor: Colors.redAccent,

        ),

        body: Center(
          child:  Column(
            children: <Widget>[
              Center(

                child: Container(
                  child: Image.network("http://pngimg.com/uploads/box/box_PNG133.png",fit: BoxFit.fill
                    ,alignment: Alignment.center,),

                ),

              ),
              Column(
                children: <Widget>[
                  Center(child:
                  Container(
                    child: Text("No Notifications",),
                  ),
                  ),
                ],
              ),
            ],
          ),

        ),

      );
  }

}