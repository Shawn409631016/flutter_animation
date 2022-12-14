import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool takeOff = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter animation'),
      ),
      body: SizedBox(
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              left: 100.0,
              right: 100.0,
              top: takeOff ? 50.0 : 250.0,
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: Icon(
                  Icons.airplanemode_active,
                  color: Colors.blueGrey,
                  size: 48.0
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton.icon(
                icon: Icon(Icons.airplanemode_active, color: Colors.white),
                label: Text('起飛'),
                onPressed: () => {
                  setState(() {
                    takeOff = !takeOff;
                  })
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


}
