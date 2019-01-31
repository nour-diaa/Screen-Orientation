import 'package:flutter/material.dart';

final String img =
    'https://d4kkpd69xt9l7.cloudfront.net/sys-master/root/hea/h86/9126618234910/razer-blade-15-gallery01.jpg';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Razer Plade 15'),
        centerTitle: true,
      ),
      body: screenContent(),
    );
  }

  Widget screenContent() {
    var orientation = MediaQuery
        .of(context)
        .orientation;
    if (orientation == Orientation.portrait) {
      return Column(
        children: <Widget>[
          Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .45,
              child: imageFetcher()),
          Padding(padding: EdgeInsets.only(top: 50)),
          bodyMaker(),
        ],
      );
    } else {
      return Row(
        children: <Widget>[
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width * .5,
            height: MediaQuery
                .of(context)
                .size
                .height,
            child: imageFetcher(),
          ),
          Padding(padding: EdgeInsets.only(left: 50)),
          bodyMaker(),
        ],
      );
    }
  }

  Widget imageFetcher() {
    return Image.network(
      img,
      fit: BoxFit.cover,
    );
  }

  Widget bodyMaker() {
    return Builder(builder: (context) {
     return RaisedButton(
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Added to your Cart'),
            duration: Duration(seconds: 2),
          ));
        },
        color: Colors.green,
        child: Text('BUY 2,000,000,00\$'),
      );
    });
  }
}
