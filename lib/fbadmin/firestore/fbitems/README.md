# Firebase Firestore Items
Esta carpeta contendra las listas de rooms_chat de nuestra applicacion. 

### Codigo DART

Ejemplo:

```dart
class RoomItem extends StatelessWidget {

  final String sTitulo ;
  final Function(int index) onShortClick;
  final int index;

  const RoomItem({Key? key, this.sTitulo="Titulo", required this.onShortClick,
    required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(sTitulo),
      subtitle: Text('Secondary text'),
      leading: Icon(Icons.label),
      onTap: () {
        onShortClick(index);
      },

    );
    /*
    Container(
                height: 100,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text('Entry ${entries[index]}')),
              );
     */

  }


}
```

### Ejemplo FIRESTORE

La clase de arriba tendra una equivalencia a rooms en el Firestore,
En Firestore (MongoDB) seria:

```bash
-/
  |-romms
    |-G5646456546O (UID del documento) Documento rooms
      |-name:String
      |-image:String
      |-members:int
      
```
