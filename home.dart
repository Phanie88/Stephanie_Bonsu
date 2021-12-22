import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {

  int _index = 0;
  List quotes = [
    "The greatest glory in living lies not in never falling, but in rising every time we fall.",
        "The way to get started is to quit talking and begin doing.",
        "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking.",
        "If life were predictable it would cease to be life, and be without flavor.",
        "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough.",
        "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success.",
        "Life is what happens when you're busy making other plans.",
        "Spread love everywhere you go. Let no one ever come to you without leaving happier.",
        "When you reach the end of your rope, tie a knot in it and hang on.",
        "Always remember that you are absolutely unique. Just like everyone else.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(50.0),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent.shade100,
                        borderRadius: BorderRadius.circular(14.5)
                    ),
                    child: Center(child: Text(quotes[_index % quotes.length],
                      style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 16.5,
                      ),))),
              ),
            ),
            Divider(thickness: 1.0,),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton.icon(
                  onPressed: _showQuote,
                  color: Colors.indigoAccent,
                  icon: Icon(Icons.wb_cloudy_outlined,
                  color: Colors.white),
                  label: Text("Inspire me!", style: TextStyle(
                      fontSize:18.8,
                      color: Colors.white
                  ),)),
            ),
            Spacer()

          ],
        ),
      ),
    );
  }

  void _showQuote() {
    //increment our index/counter by 1
    setState(() {
      _index += 1;
    });

  }
}
