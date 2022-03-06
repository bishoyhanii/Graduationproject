import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ATG',
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        '/screen2': (BuildContext context) => new Screen2(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget phoneSection = Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: Text(
                    'Welcome to Egypt',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 45.0,fontStyle: FontStyle.italic,),
                  ),
                ),
                Container(
                  child: new Image(
                      image: NetworkImage(
                          'https://c4.wallpaperflare.com/wallpaper/914/112/982/egypt-ubisoft-game-assassin-s-creed-origins-wallpaper-preview.jpg')),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget buttonSection = RaisedButton(
      child: const Text('Lets Take a Tour',
      style: TextStyle(color: Colors.white, backgroundColor: Colors.black),),
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0)),
      elevation: 0.0,
      color: Colors.black,
      splashColor: Colors.black,
      onPressed: () {
        Navigator.of(context).pushNamed('/screen2');
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Tour Guide'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: <Widget>[
          phoneSection,
          buttonSection,
        ],
      ),
    );
  }

  void button1(BuildContext context) {
    Navigator.of(context).pushNamed('/screen2');
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
            child: AppBar(
            backgroundColor: Colors.black,

            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            bottom: new TabBar(
              isScrollable: true,
              tabs: <Widget>[
                new Tab(text: 'Cairo', icon: Icon(Icons.local_activity)),
                new Tab(text: 'Alexendria', icon: Icon(Icons.local_parking)),
                new Tab(text: 'Aswan', icon: Icon(Icons.local_dining)),
                new Tab(text: 'Louxor', icon: Icon(Icons.local_hotel)),
              ],
            ),
          ),
        ),
          body: new Container(
            padding: new EdgeInsets.all(16.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  child: new TabBarView(
                    children: <Widget>[
                      new ListView(
                        children: list1,
                        scrollDirection: Axis.vertical,
                      ),
                      new ListView(
                        children: list2,
                        scrollDirection: Axis.vertical,
                      ),
                      new ListView(
                        children: list3,
                        scrollDirection: Axis.vertical,
                      ),
                      new ListView(
                        children: list4,
                        scrollDirection: Axis.vertical,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<Widget> list1 = <Widget>[
  Container(
    child: new Text(
      'Pyramids Of Giza',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
      textAlign: TextAlign.center,
    ),
  ), //Title
  Container(
    child: new Image(
        image: NetworkImage(
            'https://media.architecturaldigest.com/photos/58e2a407c0e88d1a6a20066b/2:1/w_1287,h_643,c_limit/Pyramid%20of%20Giza%201.jpg')),
  ), //Image
  Container(
    child: Text(
      'Description',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
    ),
  ), // Description
  Container(
    child: Text(
      'The Great Pyramid of Giza is the oldest monument on the list of the seven wonders of the Ancient world. It was built for the fourth dynasty pharaoh Khufu and was completed around 2560 BCE. ... Some evidence and theories suggest that 20,000 workers over the course of 20 years built the great pyramid.',
      style: TextStyle(),
    ),
  ), // Text Description

  new Divider(
    height: 8.0,
    color: Colors.blue,
  ),

  Container(
    child: new Text(
      'Egyption Museum',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
      textAlign: TextAlign.center,
    ),
  ),
  Container(
    child: new Image(
        image: NetworkImage(
            'https://www.egypttoday.com/siteimages/Larg/202104060425572557.jpg')),
  ),
  Container(
    child: Text(
      'Description',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
    ),
  ), // Description
  Container(
    child: Text(
      'The Egyptian Museum is the oldest archaeological museum in the Middle East, and houses the largest collection of Pharaonic antiquities in the world. The museum displays an extensive collection spanning from the Predynastic Period to the Greco-Roman Era.',
      style: TextStyle(),
    ),
  ), // Text Description

  new Divider(
    height: 8.0,
    color: Colors.blue,
  ),

  Container(
    child: new Text(
      'Sphinx',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
      textAlign: TextAlign.center,
    ),
  ),
  Container(
    child: new Image(
        image: NetworkImage(
            'https://storage.googleapis.com/pod_public/1300/117994.jpg')),
  ),
  Container(
    child: Text(''
        'Description',
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0
    ),
    ),
  ),
  Container(
      child: Text(
    'Colossal statues are one of the hallmarks of ancient Egyptian civilization, and the Great Sphinx of Giza is the most famous. It was carved directly out of the bedrock during the Fourth Dynasty (c.2613–2494 BC), which also makes it the oldest. Ancient Egyptian sphinxes represented the king with the body of a lion, in a clear demonstration of his power.',
  )),

  new Divider(
    height: 8.0,
    color: Colors.blue,
  ),

  Container(
    child: new Text(
      'Cairo Tower',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
      textAlign: TextAlign.center,
    ),
  ),
  Container(
    child: new Image(
        image: NetworkImage(
            'https://watanimg.elwatannews.com/image_archive/original_lower_quality/18787469541621328318.jpg')),
  ),
  Container(
    child: Text(
      'Descritpion',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
    ),
  ),
  Container(
    child: Text(
        'At a height of 600 feet, this tower offers magnificent views of the entire city and monuments from its revolving rooftop restaurant and bar.'),
  ),
  new Divider(
    height: 8.0,
    color: Colors.blue,
  ),
];
List<Widget> list2 = <Widget>[
  new ListTile(
    title: new Text('Montazah Palace',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'SIt is an ancient palace built by Khedive Abbas Helmy II in 1892 as a summer home for him. The secret of the splendor of this palace lies in its location on a hill at a height of 14 feet. It covers an area of 370 acres with surrounding gardens, and its architecture combines the French and Ottoman Islamic styles.'),
  ),
  new Divider(
    height: 8.0,
    color: Colors.blue,
  ),
  new ListTile(
    title: new Text(' Citadel of Qaitbay',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'Qaitbay Castle is one of the archaeological treasures that the city of Alexandria is proud of. It is located on the Mediterranean coast and is an open-air museum. It was established by Sultan Al-Ashraf Abu Al-Nasr Qaitbay Al-Mahmoudi in 1477 AD in the same place as the ancient lighthouse of Alexandria, one of the Seven Wonders of the Ancient World. It was destroyed by an earthquake, and this castle is considered one of the most important castles on the Mediterranean coast, so the rulers of Egypt have taken care of it throughout the ages.'),
  ),
  new Divider(
    height: 8.0,
    color: Colors.blue,
  ),
  new ListTile(
    title: new Text('mast pole',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'It is a column made of red granite stone up to 27 meters long and is one of the most famous monuments in Alexandria. The people called it the masts because it resembles the masts of ships, then it was later distorted into the masts.'),
  ),
  new Divider(
    height: 8.0,
    color: Colors.blue,
  ),
];
List<Widget> list3 = <Widget>[];
List<Widget> list4 = <Widget>[];
