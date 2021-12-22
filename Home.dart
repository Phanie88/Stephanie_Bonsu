import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BizCard"),
          //centerTitle: true,//
        ),
        body: Container(
          alignment: Alignment.center,
          child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[_getCard(), _getAvatar()]),
        ));
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Colors.purple.shade100,
        borderRadius: BorderRadius.circular(14.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Stephanie Bonsu",
            style: TextStyle(
                fontSize: 20.9,
                color: Colors.purple.shade500,
                fontWeight: FontWeight.w500),
          ),
          Text("buildappswithstephanie.com"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person_outline),
              Text("T: @buildappswithme"),
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.orangeAccent.shade100, width: 1.2),
        image: DecorationImage(
            image: NetworkImage("https://picsum.photos/300/300"),
            fit: BoxFit.cover),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blueGrey.shade100,
        child: Center(
            child: Text(
              "Abracadabra",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 23.4,
                  fontStyle: FontStyle.italic

              ),
            )
        )
    );
  }
}

class ScaffoldExample extends StatelessWidget {


  _tapButton() {
    debugPrint("Tapped button");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Women's_Haven_App",),
        centerTitle: true,
        backgroundColor: Colors.amber.shade400,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.email), onPressed: () => debugPrint("Email Tapped!")),
          IconButton(icon: Icon(Icons.access_alarms), onPressed: _tapButton)
        ],


      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
          child: Icon(Icons.call_missed),
          onPressed: () => debugPrint("Eish")),
      bottomNavigationBar: BottomNavigationBar(items:[
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), title:Text("First")),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title:Text("Second")),
        BottomNavigationBarItem(icon: Icon(Icons.access_alarm), title:Text("Third"))
      ], onTap: (int index) => debugPrint("Tapped item: $index") ,),
      backgroundColor: Colors.blueGrey.shade500,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton()

 //           InkWell(
  //          child: Text("Tap Me!",
   //           style: TextStyle(fontSize: 23.4),),

 //             onTap: () => debugPrint("tapped..."),


          ]

        )

      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
            final snackBar=SnackBar(content:Text("Eish"),
            backgroundColor:Colors.indigo.shade400);

            Scaffold.of(context).showSnackBar(snackBar);
        },

      child: Container(
        padding: EdgeInsets.all(5.0),
        decoration:BoxDecoration(
          color:Colors.orangeAccent.shade200,
          borderRadius:BorderRadius.circular(8.0)
        ),
        child:Text("Button"),
      ),
      
    );
  }
}
