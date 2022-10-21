# Firebase Firestore Items
Esta carpeta contendra todas las clases que reflejen las colecciones en la 
base de datos. 

## Codigo DART

Ejemplo:

```dart
Perfil.dart
class Perfil{
  final String? name;
  final String uid;

  Perfil({
    this.name="",
    this.uid=""
  });

  factory Perfil.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
  final data = snapshot.data();
  return Perfil(
    name: data?['name'],
    uid: snapshot.id
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (name != null) "name": name,
    };
  }
  
}
```

## Ejemplo FIRESTORE

La clase de arriba tendra una equivalencia en el Firestore, coleccion de
Perfiles.
En Firestore (MongoDB) seria:
```bash
-/
  |-Perfiles
    |-hagejnalirbnwjgf (UID del documento) Documento Perfil
      |-name:String
      |-age:Int
```
