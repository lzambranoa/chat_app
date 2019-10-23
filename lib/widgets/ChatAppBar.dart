import 'package:chat_app/config/Assets.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/config/Palette.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget{
  
  final double height = 100;

  @override
  Widget build(BuildContext context) {

    var textHeading = TextStyle(color: Palette.primaryTextColorLight, fontSize: 20);  //Estilo de texto para el nombre
    var textStyle = TextStyle(color: Palette.secondaryTextColorLight);  //estilo de texto para toda la app

    double width = MediaQuery.of(context).size.width; //calcula el ancho de la pantalla
    return Material(
      child: Container(
        decoration: new BoxDecoration(boxShadow: [ // agrega una sombra al appbar
          new BoxShadow(
            color: Colors.black,
            blurRadius: 5.0,
          )
        ]),
        child: Container(
          color: Palette.primaryColor,
          child: Row(
            children: <Widget>[
              Expanded(  //Estamos dividiendo la barra de palicaciones en una relacion de 7 : 3
                flex: 7,
                child: Center(
                  child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 70 - ( width * .06),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: Icon(
                                Icons.attach_file,
                                color: Palette.secondaryColor,
                              ),
                            ),
                          ),
                     Expanded(
                          flex: 6,
                          child: Container(
                          child: Column(
                        crossAxisAlignment: 
                            CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                           mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('Aditya Gurjar', style: textHeading),
                        Text('@adityagurjar', style: textStyle,)
                    ],
                  ),
                ),
              ), 
                        ],
                      ),
                    ),
                     // Segunda fila contiene los botones para medios
        Container(
          height: 23,
          padding: EdgeInsets.fromLTRB(20, 5, 5, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Fotos',
                style: textStyle,
              ),
              VerticalDivider(
                width: 30,
                color: Palette.primaryTextColorLight,
              ),
              Text(
                'videos',
                style: textStyle
              ),
              VerticalDivider(
                width: 30,
                color: Palette.primaryTextColorLight,
              ),
              Text('Archivos', style:textStyle)
            ],
          ),
         ),
                  ],
                  ),
                ),
              ),
             // Este es el despliegue de la imagen
             Expanded(
               flex: 3,
               child: Container(
                 child: Center(
                   child: CircleAvatar(
                     radius: (80 - ( width * .06 )) / 2,
                     backgroundImage: Image.asset(
                       Assets.user,
                     ).image
                   ),
                 ),
               ),
             ) 
            ],
          ),
        ),
       
      ),
    
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}