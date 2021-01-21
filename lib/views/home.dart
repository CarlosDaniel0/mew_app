import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Meu App'),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Container(
            width: 300,
            color: Colors.indigo,
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                ListTile(
                  title: Text('Teste Drawer',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: ListTile(
                        leading: Image.asset(
                          'assets/casa.png',
                          color: Colors.white,
                          width: 25,
                        ),
                        selected: index == 0 ? true : false,
                        selectedTileColor: Colors.indigo[600],
                        title: Text(
                          'Page 2',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          setState(() {
                            _controller.jumpToPage(0);
                            Navigator.of(context).pop();
                            index = 0;
                          });
                        }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: ListTile(
                        selected: index == 1 ? true : false,
                        leading: Icon(
                          Icons.agriculture,
                          color: Colors.white,
                        ),
                        selectedTileColor: Colors.indigo[600],
                        title: Text(
                          'Page 3',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          setState(() {
                            _controller.jumpToPage(1);
                            index = 1;
                            Navigator.of(context).pop();
                          });
                        }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: ListTile(
                        selected: index == 2 ? true : false,
                        leading: Icon(
                          Icons.airline_seat_flat,
                          color: Colors.white,
                        ),
                        selectedTileColor: Colors.indigo[600],
                        title: Text(
                          'Page 3',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          setState(() {
                            _controller.jumpToPage(2);
                            Navigator.of(context).pop();
                            index = 2;
                          });
                        }),
                  ),
                )
              ],
            ),
          ),
        ),
        body: PageView(
          controller: _controller,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              color: Colors.red,
              child: Center(
                  child:
                      Text('Página 1', style: TextStyle(color: Colors.white))),
            ),
            Container(
              color: Colors.green,
              child: Center(
                  child: Column(
                children: [
                  Text('Página 2', style: TextStyle(color: Colors.white)),
                  RaisedButton(
                    child: Text(
                      'Página 3',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.green[700],
                    onPressed: () {
                      setState(() {
                        _controller.jumpToPage(2);
                        index = 2;
                      });
                    },
                  )
                ],
              )),
            ),
            Container(
              color: Colors.blue,
              child: Center(
                child: Column(
                  children: [
                    Text('Página 3'),
                    RaisedButton(
                      child: Text('Voltar para página inicial',
                          style: TextStyle(color: Colors.white)),
                      color: Colors.blue[700],
                      onPressed: () {
                        setState(() {
                          _controller.jumpToPage(0);
                          index = 0;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
