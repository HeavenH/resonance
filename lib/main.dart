import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Resonance'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        child: Column(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0XFF6959CD),
                  Color(0xFF9370DB)
                ]
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(200, 90),
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Icon(Icons.person, size: 80, color: Colors.white)
                ),

                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 44,
                      right: 32
                    ),
                    child: Text('Resonance',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 32
                      )
                    )
                  )
                )
            ],),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2.1,
            padding: EdgeInsets.only(top: 62),
            child: Column(children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width/1.2,
                height: 50,
                padding: EdgeInsets.only(
                  top: 4, left: 16, right: 16, bottom: 4
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10
                    )
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.email,
                    color: Colors.deepPurple
                    ),
                    hintText: 'E-mail'
                  ),
                  
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width/1.2,
                height: 50,
                margin: EdgeInsets.only(top: 32),
                padding: EdgeInsets.only(
                  top: 4, left: 16, right: 16, bottom: 4
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10
                    )
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.vpn_key,
                    color: Colors.deepPurple
                    ),
                    hintText: 'Password'
                  ),
                  
                ),
              ),

              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 16, right: 36
                  ),
                  child: Text('Esqueceu sua senha?',
                    style: TextStyle(
                      color: Colors.deepPurple
                    ),
                  ),
                )
              ),
              Spacer(),

              Container(
                width: MediaQuery.of(context).size.width/1.2,
                height: 55,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0XFF6959CD),
                      Color(0xFF9370DB)
                    ]
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50)
                  )
                ),
                child: Center(
                child: Text('Login'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
                )
              )
            ],)
          )
        ],)
      )
    );
  }
}


/*
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Resonance',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  )  
                )
            ],
            ),
          ),
        SizedBox(height: 40.0),
        Container(
          height: MediaQuery.of(context).size.height - 188,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(150.0))
          ),
        )
        ],
        */