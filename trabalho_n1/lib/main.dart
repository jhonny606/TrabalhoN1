import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: PrimeiraRota(),
      //home: Tela1(),
      //home: Tela2(),
    ));
}

class PrimeiraRota extends StatefulWidget {
  const PrimeiraRota({ Key? key }) : super(key: key);

  @override
  _PrimeiraRotaState createState() => _PrimeiraRotaState();
}

class _PrimeiraRotaState extends State<PrimeiraRota> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Início"),
        backgroundColor: Colors.blue,


      ),
      body: Center(
        child: Column(
          children: <Widget>[
          Padding(padding: EdgeInsets.all(5),
          child: Image.asset("imagens/assistente.png",
          ),
          ),
          Text("Free Fire", style: TextStyle(fontSize: 60, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
          MaterialButton(
            splashColor: Colors.orange[900],
            color: Colors.blue[400],
            child: Text(
              "Entrar",
              style: TextStyle(
                fontSize: 20,
                 color: Colors.white,
                 ),
                 ),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(15.0)
                   ),
          onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => SegundaRota()),
            );
          },
          ),
        ],
        ),
      ));
  }
}

class SegundaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Free Fire'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10),
              child: Image.asset(
                "imagens/crono.png",
                ),
                ),
                Text("Uma das características deste jogo é a variedade de personagens. Você sabia que o game disponibiliza mais de 36 deles? Sendo que recentemente, estes personagens são criados em parceria com pessoas reais e famosas! Conheça os mais recentes clicando abaixo.", style: TextStyle(fontSize: 20, color: Colors.blue[700], fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
                Padding(
                  padding: EdgeInsets.all(
                    3),
                    ),
                MaterialButton(
                  splashColor: Colors.orange[900],
                  color: Colors.blue[400],
                  child: Text(
                    "Personagens Recentes",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                        ),
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => TerceiraRota()),
                  );
                },
                ),
                Padding(padding: EdgeInsets.all(3),),
                MaterialButton(
                  splashColor: Colors.orange[900],
                  color: Colors.blue[400],
                  child: Text(
                    "Wallpaper",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                      ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QuartaRota()),
                  );
                },
                ),

                Padding(padding: EdgeInsets.all(3),),
                RaisedButton.icon(
                  splashColor: Colors.orange[900],
                  color: Colors.blue[400],
                  onPressed: () {},
                  icon: Icon(
                    Icons.download
                    ),
                    label: Text(
                      'Faça o Download',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                          ),
                ),
                Padding(padding: EdgeInsets.all(3),),
                MaterialButton(
                  splashColor: Colors.orange[900],
                  color: Colors.blue[400],
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Voltar",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                        ),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    3),
                    ),
            ],
          ),
        ),
      ));
  }
}

class TerceiraRota extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lista de Personagens"
          ),
      ),

      body: ListView(
        children: <Widget> [
          ListTile(
            title: Text('Skyle'),
          ),
          ListTile(
            title: Text('Shirou'),
          ),
          ListTile(
            title: Text('Chrono (CR7)'),
          ),
          ListTile(
            title: Text('Dasha'),
          ),
          ListTile(
            title: Text('Jai'),
          ),
          ListTile(
            title: Text('K'),
          ),
          ListTile(
            title: Text('Luqueta'),
          ),
          ListTile(
            title: Text('Clu'),
          ),
          ListTile(
            title: Text('Jota'),
          ),
          ListTile(
            title: Text('Alvaro'),
          ),
          ListTile(
            title: Text('Wolfrahh'),
          ),
          ListTile(
            title: Text('Kapella'),
          ),
          ListTile(
            title: Text('Steffie'),
          ),
          ListTile(
            title: Text('Notora'),
          ),
          ListTile(
            title: Text('Alok'),
          ),
          MaterialButton(
            splashColor: Colors.orange[900],
            color: Colors.blue[400],
            onPressed: (){
              Navigator.pop(context);
            },
            child:
             Text(
               'Voltar',
               style: TextStyle(
                 fontSize: 20,
                 color: Colors.white,
                 ),
               ),
            ),
        ],
        ),
    );
  }
}

class QuartaRota extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wallpaper"
          ),
        ),

        body: Center(
          child: Column(
            children: <Widget>[
              Padding(padding:
               EdgeInsets.all(
                 10
                 ),
              child:
               Image.asset(
                 "imagens/frifas.jpg", width: 400,
              ),
              ),
              MaterialButton(
                splashColor: Colors.orange[900],
                color: Colors.blue[400],
                onPressed: () {Navigator.pop(context);
                },
                child: Text(
                  'Voltar',
                  style: TextStyle(
                    fontSize: 20.0,
                  color: Colors.white,
                  ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                    ),
              )
            ],
          ),
        ),
    );
  }
}