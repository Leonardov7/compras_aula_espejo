import 'package:flutter/material.dart';

class Producto extends StatefulWidget{
  ProductoApp createState() => ProductoApp();
}
class ProductoApp extends State<Producto>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Producto'),

      ),
      body: SingleChildScrollView(),
    );
  }
}v