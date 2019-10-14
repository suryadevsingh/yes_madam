
import 'package:yes/Map.dart';
import 'package:flutter/material.dart';
import 'package:yes/notification.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  final appTitle ="flutter";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget{
  final String title;
  List<String>listOfNetWorkImages =[
    "https://cdn.yesmadam.com/images/live/app/banner/1570086782771.jpg",
    "https://cdn.yesmadam.com/images/live/app/banner/1569678147299.jpg",
    "https://cdn.yesmadam.com/images/live/app/banner/1568197379292.jpg",
    "https://cdn.yesmadam.com/images/live/app/banner/1568456770010.jpg",
    "https://cdn.yesmadam.com/images/live/app/banner/1569926477749.jpg",
    "https://cdn.yesmadam.com/images/live/app/banner/1569678147299.jpg",
    "https://cdn.yesmadam.com/images/live/app/banner/1568456678254.jpg",
  ];
  MyHomePage({this.title}) : super();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title:
        InkWell(
          onTap: (){
             Navigator.push(context, new MaterialPageRoute(builder: (context) => Map()),);
          },
        ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context)=> notification()),);
              },
            ),
          ],
          backgroundColor: Colors.red[300],
        ),

//        body: CustomScrollView(
//          slivers: <Widget>[
//            SliverAppBar(
//              flexibleSpace:  TextField(
//                textAlign: TextAlign.center,
//                decoration: InputDecoration(
//                    border: InputBorder.none,
//                    hintText: 'Enter a search term'
//                ),
//              ),
//              automaticallyImplyLeading: false,
//              pinned: true,
//              titleSpacing: 0,
//              backgroundColor: Colors.white,
//              elevation: 1.0,
//              title: Container(
//
//
//                width: double.infinity,
//                child: Row(
//
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  mainAxisSize: MainAxisSize.max,
//                  children: <Widget>[
//
//                    IconButton(
//                      icon: Icon(Icons.search,color: Colors.red,),
//                      padding: EdgeInsets.all(0),
//
//                      onPressed: (){
//
//                      },
//
//
//                    ),
//                  ],
//                ),
//
//              ),
//
//            ),
//            SliverFillRemaining(
//              child:
//              Column(
//                children: <Widget>[
//                  Row(
//                    children: <Widget>[
//                      Card(
//                        child:
//                        Container(
//
//                          width:352.0,
//                          height: 200.0,
//                          alignment: Alignment.topLeft,
//                          child:
//                          ListView.builder(
//                            scrollDirection: Axis.horizontal,
//                            itemCount: listOfNetWorkImages.length,
//                            itemBuilder: (context,index){
//                              return  Container(child: Image.network(listOfNetWorkImages[index],));
//                            },
//
//                          ),
//                        ),
//
//                      ),
//                    ],
//                  ),
//                ],
//              ),
//
//            ),
//            Column(),
//          ],
//
//        ),


        drawer: Drawer(

          child:ListView(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 40.0,

                  child: Image.network("https://yesmadam.com/assets/imgs/ym-logo-round.png",fit: BoxFit.fill,),
                ),
              ),
              Container(

                alignment: Alignment.center,
                child: Text("Welcome" ),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: (){
                  //Navigator.push(context, new MaterialPageRoute(
                  //  builder: (context) => Page2(),),);
                },
              ),
              ListTile(
                title: Text("My Appointments"),
                leading: Icon(Icons.home),
                onTap: (){
                  //Navigator.push(context, new MaterialPageRoute(builder: (context) => flutter_url()),);
                },
              ),
              ListTile(
                title: Text("Profile"),
                leading: Icon(Icons.home),
                onTap: (){
                  //Navigator.push(context, new MaterialPageRoute(builder: (context) => sliver2()),);
                },
              ),
              ListTile(
                title: Text("Yes Madam Wallet"),
                leading: Icon(Icons.home),
                onTap: (){
                  //Navigator.push(context, new MaterialPageRoute(builder: (context) => card1()),);
                },
              ),
              Container(
                child: Divider(
                  thickness: 2.0,
                ),
              ),
              Container(
                child: Text("COMMUNICATE",textAlign: TextAlign.center,),
              ),
              ListTile(
                title: Text("Gift Vouchers"),
                leading: Icon(Icons.home),
                onTap: (){
                  //Navigator.push(context, new MaterialPageRoute(builder: (context) => transfrom()),);
                },
              ),
              ListTile(
                title: Text("Refer a Friend"),
                leading: Icon(Icons.home),
                onTap: (){
                  //Navigator.push(context, new MaterialPageRoute(builder: (context) => buttom1()),);
                },
              ),
              ListTile(
                title: Text("Tie up"),
                leading: Icon(Icons.home),
                onTap: (){},
              ),
              ListTile(
                title: Text("Franchise"),
                leading: Icon(Icons.home),
                onTap: (){},
              ),
              ListTile(
                title: Text("privacy policy"),
                leading: Icon(Icons.home),
                onTap: (){},
              ),
              ListTile(
                title: Text("FAQs"),
                leading: Icon(Icons.home),
                onTap: (){},
              ),
              ListTile(
                title: Text("call us"),
                leading: Icon(Icons.home),
                onTap: (){},
              ),
              Container(
                child: Divider(
                  thickness: 2.0,
                ),
              ),
              Container(
                child: Text("Login ",textAlign: TextAlign.center,),
              ),
              ListTile(
                title: Text("login"),
                leading: Icon(Icons.home),
                onTap: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}
