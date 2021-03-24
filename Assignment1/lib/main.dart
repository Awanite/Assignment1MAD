import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: App(),
    ));

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Image(image: NetworkImage('https://scontent.fisb6-1.fna.fbcdn.net/v/t1.0-1/c0.0.160.160a/p160x160/74226541_2239478696342021_7572508392070053888_o.jpg?_nc_cat=106&ccb=1-3&_nc_sid=7206a8&_nc_eui2=AeFap5veGOXNBrO4XSnEac5zmE8h9HTGzgGYTyH0dMbOAfaDhcslsyIK57vwCGG5EvNQZWDPL595uJMN4mq6eGYx&_nc_ohc=SOJF-ciDxNwAX-6BhLF&_nc_ht=scontent.fisb6-1.fna&tp=27&oh=514c35d576a85ee301d36552de01aef0&oe=60802997'))),
        title: Text('Muhammad Awais Adnan'),
      ),
      body: Center(
        child: TextChanger(),
      ),
    );
  }
}

class Text1 extends StatelessWidget {
  @override
   static String text = "Hello User";
   
   
   Widget build(BuildContext context) {
    return Text('\n\n$text\n\n');
  }
  
}

class TextChanger extends StatefulWidget {
  @override
  TextChangerState createState() => TextChangerState();
}

class TextChangerState extends State<TextChanger> {
  var tex = Text1();
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
          Container(
            child: Text1(),
          ),
          Container(
            child: RaisedButton(
      onPressed: () {
        setState(() {
          Text1.text = "Hello CMSID (207701)";
        });
      },
      child: Text("Click Me"),
     ),
          )
        ]),
    );
  }
}
