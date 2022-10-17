import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Tiendas extends StatefulWidget {
  TiendasApp createState() => TiendasApp();
}

class TiendasApp extends State<Tiendas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Mi Tienda'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Container(
        child: Center(
          child: StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection("Productos").snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) return CircularProgressIndicator();
              return ListView.builder(
                itemCount: snapshot.data!.docs.length, // define las iteraciones
                itemBuilder: (BuildContext context, int index) {
                  return new Card(
                    child: new Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Text(snapshot.data!.docs[index]
                                            .get("NombreProducto"))),
                                    Text(
                                      snapshot.data!.docs[index]
                                          .get("DescripProducto"),
                                      style: TextStyle(
                                        color: Colors.green[500],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(right: 30,top: 0,bottom: 0,left: 0),
                                width: 80,
                                height: 80,
                                child: Image.asset('Image/' +
                                    snapshot.data!.docs[index].get("ruta")),
                              ),
                              IconButton(
                                onPressed: () {
                                  /*  tiendaObjeto.idTienda=snapshot.data!.docs[index].id;
                                    tiendaObjeto.nombre=snapshot.data!.docs[index].get("nombreTienda");
                                    tiendaObjeto.descripcion=snapshot.data!.docs[index].get("descrip");
                                    tiendaObjeto.imagen=snapshot.data!.docs[index].get("ruta");
                                    tiendaObjeto.website=snapshot.data!.docs[index].get("webSite");*/

                                  // Navigator.push(context, MaterialPageRoute(builder: (_) => ShopOne(tiendaObjeto)));
                                },
                                //  child: Text('Entrar'))
                                icon: const Icon(Icons.remove_red_eye_outlined),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
