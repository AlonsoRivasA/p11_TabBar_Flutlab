import 'package:flutter/material.dart';

void main() => runApp(AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ejemplo TabBar Alonso Rivas",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MiPaginaInicial(),
      debugShowCheckedModeBanner: false,
    );
  }
} //Fin AppMiTabBar

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} //MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar Alonso Rivas"),
            centerTitle: true,
            bottom: TabBar(tabs: [
              Tab(
                text: "Juegos",
                icon: Icon(Icons.bolt),
              ),
              Tab(
                text: "Control",
                icon: Icon(Icons.bookmark_added),
              ),
              Tab(
                text: "Consolas",
                icon: Icon(Icons.ad_units),
              ),
              Tab(
                text: "Extras",
                icon: Icon(Icons.headphones),
              ),
            ]),
          ),
          body: TabBarView(
            children: const <Widget>[
              Center(
                child: Text(
                  "Valorant",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Center(
                child: Text(
                  "Control Series S",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Center(
                child: Text(
                  "Xbox Series X",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Center(
                child: Text(
                  "Audifonos",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ],
          ),
        ));
  } // Fin Widget
} //_MiPaginaInicialState
