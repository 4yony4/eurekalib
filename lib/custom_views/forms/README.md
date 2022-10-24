# Formview

Esta carpeta contendrá una clase llamama **Form_View** en la que tendré una vista de tipo formmualario

***
## ATRIBUTOS
En el cual tendremos los siquientes atributos:
```dart
    final String name;
    final int edad;
    final String Ciudad;
    final int telefono;
    final String correo;
    final Firebasestore db = new Firebasestore();
```
***
## MÉTODOS

```dart
    getTEXT();
```
    
Conexión con la base de datos *Firebase*

Recogida de datos de la BD para reflejar los en la pestaña del view sin necesidad de tener que introducir nada nosotros

***
## INFORMACIÓN ADICIONAL