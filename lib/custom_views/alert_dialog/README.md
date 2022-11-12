##AlertDialog class:

Un alert dialog informa al usuario de una situación que necesita conocer, o en la que es necesario que decida o haga algo. 
Tiene un titulo, contenido y acciones. El título está encima del contenido, y las acciones bajo el contenido. 


##:Features:

AlertDialog es un tipo específico de la clase Dialog de Flutter, implementa componentes directos de Material Dedign.
Para dialog que ofrecen una lista de opciones es recomendable usar SimpleDialog, en vez de AlertDialog. 

https://www.youtube.com/watch?v=75CsnyRXf5I&ab_channel=Flutter


##Getting started: 

Lo usamos en cuadros que tienen un mensaje, y botones para seleccionar que es lo que queremos hacer. 
Normalmente hacemos una llamada o retornamos el método showDialog, especificamos el tipo, y pasamos AlertDialog como un widget secundario.
Dentro de AlertDialog  configuramos las caracteristicas que necesitamos. 


##Usage:

***

@override
            Widget build(BuildContext context) {
                return TextButton(
                    onPressed: () => showDialog<String>(        //llamada a showDialog
                        context: context,                       //difinición de contexto
                        builder: (BuildContext context) => AlertDialog( //widget secundario pasado a showDialog
                            title: const Text('AlertDialog Title'),     //definición titulo
                            content: const Text('AlertDialog description'),     //definicion de contenido
                            actions: <Widget>[                                    //definicion de acciones
                                TextButton(                                        //Ambas acciones vuelven a la clase principal. 
                                    onPressed: () => Navigator.pop(context, 'Cancel'),
                                    child: const Text('Cancel'),
                                    ),
                                TextButton(                                         
                                    onPressed: () => Navigator.pop(context, 'OK'),
                                    child: const Text('OK'),
                                     ),
                                ],
                            ),
                        ),
                    child: const Text('Show Dialog'), //texto del botón que cuando pulsamos muestra el AlertDialog. 
                );
            }

***




##Additional information: 

Para mas información, es recomendable consultar  Dialog class y SimpleDialog class.

https://api.flutter.dev/flutter/material/AlertDialog-class.html
https://api.flutter.dev/flutter/material/Dialog-class.html
https://api.flutter.dev/flutter/material/SimpleDialog-class.html