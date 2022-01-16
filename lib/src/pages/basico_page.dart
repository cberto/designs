import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //singleChail un controlador para hacer scroll
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
      ),
    ));
  }

  /*OPTIMIZAR COD de imagen
        Image(
        image: NetworkImage(
            'https://lh3.googleusercontent.com/proxy/ppKAn8LCxiPOaZ1Dy-RjdnTIVf4NdS2eR2Dumm8aOh_XAG1JNXA5uff3MdEGlz9UYAS_Rv5k6bf3EWPVGGGW9Dr04fp3oYSar-hh8TexdErLmiqbu_lTj3NdNIo4DpVsuxaqEJWhkgalwsCpG8AWbQ')),
        
      
         OPTIMIZAR el codigo de container
        Container(
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
          child: Row(
            children: <Widget>[
              //expandir en todo el espacio posible
              Expanded(
                child: Column(
                  //forma para la izquierda, en una columna, vertical
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: ,
                  //crossAxisAlignment: ,
                  children: <Widget>[
                    Text(
                      'Imagen del Monte Fuji',
                      style: estiloTitulo,
                    ),
                    //separacion
                    SizedBox(height: 7.0),
                    Text(
                      'Mount Fuji, Japan',
                      style: estiloSubTitulo,
                    ),
                  ],
                ),
              ),
              Icon(Icons.star, color: Colors.red, size: 30.0),
              Text('41', style: TextStyle(fontSize: 20.0))
            ],
          ),
        )
        */

  //hace un return de Image
  Widget _crearImagen() {
    return Container(
      //agarre el ancho double.infinity
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://www.overseasattractions.com/wp-content/uploads/2019/03/japan-places-to-visit.jpg'),
        height: 290.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    //determinar si se puede desplegar la inf de manera horizonal con SAfeArea
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 4.0),
        child: Row(
          children: <Widget>[
            //expandir en todo el espacio posible
            Expanded(
              child: Column(
                //forma para la izquierda, en una columna, vertical
                crossAxisAlignment: CrossAxisAlignment.start,
                /*mainAxisAlignment: ,
                    crossAxisAlignment: ,*/
                children: <Widget>[
                  Text(
                    'Imagen del Monte Fuji',
                    style: estiloTitulo,
                  ),
                  //separacion
                  SizedBox(height: 7.0),
                  Text(
                    'Mount Fuji, Japan',
                    style: estiloSubTitulo,
                  ),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      //horizontal
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 12.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 1.0),
        child: Text(
          'Culpa etrn exsdfsdf enim nostrud elit aliquip exercitation.Nostrud do do commodo sint. Consectetur id anim cillum sint cillum sit qui veniam velit elit in. Nostrud do do commodo sint. Consectetur id anim cillum sint cillum sit qui veniam velit elit in..Nostrud do do commodo sint. Consectetur id anim cillum sint cillum sit qui veniam velit elit in. Nostrud do do commodo sint. Consectetur id anim cillum sint cillum sit qui veniam velit elit in.',
          //texto justificado
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
