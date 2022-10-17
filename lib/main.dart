import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Vista/Tiendas.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  HomeStart createState() => HomeStart();
}

class HomeStart extends State<Home> {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi tienda',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bienvenidos a mi tienda'),
          backgroundColor: Colors.blueGrey,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only( bottom: 0),
                child: Center(
                  child: Container(
                    width: 500,
                    height: 500,
                    child: Image.asset('Image/Shop.png'),
                  ),
                ),
              ),
              Padding(
                padding:
                EdgeInsets.only( top: 2),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey, minimumSize: Size(500, 50)),
                  onPressed: () {
                    print('Ingreso Login');
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Tiendas()));
                  },
                  child: Text(
                    'Ingresar',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
