import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  final titulo = TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0);
  final subtitulo = TextStyle(color: Colors.grey, fontSize: 12.0);

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFFD600),
            leading: GestureDetector(
              onTap: (){},
              child: Icon(
                Icons.menu, color: Colors.black,
              ),
            ),
          title: Text('Producto',
          style: TextStyle(
            color: Colors.black
          ),),
        //-----------------------------------------//
          actions: <Widget>[
            Padding(
                  padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap:(){},
                  child: Icon(
                    Icons.favorite_border
                  ),
                ),
              ),
              //----------------------------------------//
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap:(){},
                  child: Icon(
                    Icons.share
                  ),
                ),
              ),
              //------------------------------------------//
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap:(){},
                  child: Icon(
                    Icons.search
                  ),
                ),
              ),
          ],
          actionsIconTheme: IconThemeData(
            color: Colors.black
          ),
          

        ),
        body: SingleChildScrollView(
          
            child: Container(
            child: Column(
              children: <Widget>[
                
                _seccion1(),
                Image.network("https://http2.mlstatic.com/portatil-acer-53lp-core-i5-8va-1tb-128gb-ssd-gtx-1050-4gb-D_NQ_NP_865368-MCO32946935633_112019-F.jpg"),
                _seccion2(),
              ],
            ),
          ),
        )
      );
  }


/////////////////////////////////////////////////////////////////
Widget _seccion1(){
  return Container(
    decoration: BoxDecoration(
    color: Colors.yellow[600],
  ),
    padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 15.0),
    child:  Row(
      children: <Widget>[
        Icon(Icons.room),
        Text("Enviar a Yefer Lopez - Cra 9 #25-86"),
        _iconTarjeta(Icons.keyboard_arrow_right),  
      ],
    ),
  );
}
/////////////////////////////////////////////////////////////////////
  Widget _seccion2(){
    return  Container(
       decoration: BoxDecoration(
    color: Colors.grey[300],
  ),
            padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("35 vendidos \n",style: subtitulo,),
                    Text("Portátil Acer 53lp Core I5 8va 1tb+128gb Ssd Gtx 1050 4gb",style: titulo ),
                    SizedBox(height: 5.0,),
                    Text("por Acer",style: subtitulo,),
                    _seccion3(),
                     _seccion4(),
                      _seccion5(),
                      Divider(color: Colors.blueGrey),
                      _seccion6(),
                       Text(" Llega entre el 1 y 3 de abril\n Beneficio Mercado Puntos",style: subtitulo,),
                  ],

                ), 
                ),
            ],),
          );
  }
  ////////////////////////////////////////////
  Widget _seccion3(){
     return  Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("3.699.000 ",style: titulo,),
                    Text("Disponible en 2 días a partir de tu compra",style: TextStyle(
                    color: Colors.orange
                     ),),
                  ],

                ), 
                ),
            ],),
          );
  }
}
/////////////////////////////////////////
Widget _seccion5(){
  return Container(
    child:  Row(
      children: <Widget>[
        _iconTarjeta(Icons.credit_card),
        Text("   36x 102.750"),
        _iconTarjeta(Icons.keyboard_arrow_right),
      ],
    ),
  );
}
Widget _iconTarjeta(IconData icon){
return   Container(
child:  Row(
children: <Widget>[
              Icon(icon, color: Colors.black38,)
            ],
  ),
            
);
}
////////////////////////////////////////////////////////
//funcion para crear iconos de estrellas
 Widget _seccion4(){
    return Container(
      child: Row(
        children: <Widget>[ _icons(Icons.star),_icons(Icons.star),_icons(Icons.star),_icons(Icons.star),_icons(Icons.star),
        Text(" 12 opiniones"),
      ],),
    );
  }
  
 Widget _icons(IconData icon){
return   Column(
            children: <Widget>[
              Icon(icon,color: Colors.yellow,),
              //Icon(icon, color: Colors.black38,)
            ],
          );
}

/////////////////////////////////////////////
Widget _seccion6(){
  return Container(
    child:  Row(
      children: <Widget>[
        _iconenvio(Icons.local_shipping),
        Text("   Envío gratis",
          style: TextStyle(
            color: Colors.green
          ),),
        Text("14000", style: TextStyle(color: Colors.black45,decoration: TextDecoration.lineThrough),),
        _iconTarjeta(Icons.keyboard_arrow_right),
      ],
    ),
  );
}

Widget _iconenvio(IconData icon){
return   Column(
            children: <Widget>[
              Icon(icon, color: Colors.green,)
            ],
          );
}
 /////////////////////////////////////////////////////////////////

