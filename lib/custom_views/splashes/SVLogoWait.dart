
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SVLogoWait extends StatefulWidget{
  final String sLogoPath;
  const SVLogoWait(this.sLogoPath, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _SVLogoWaitState();
  }
}

class _SVLogoWaitState extends State<SVLogoWait> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //FirebaseAuth.instance.signOut();
    //loadAllData();
  }

  /*
  void loadAllData() async{
    await Future.delayed(Duration(seconds: 2));
    //CARGAMOS TODOS LOS RECURSOS

    if(FirebaseAuth.instance.currentUser==null){
      setState(() {
        Navigator.of(context).popAndPushNamed("/Login");
      });
    }
    else{
      bool existe=await checkExistingProfile();
      if(existe){
        setState(() {
          Navigator.of(context).popAndPushNamed("/Home");
        });
      }
      else{
        setState(() {
          Navigator.of(context).popAndPushNamed("/OnBoarding");
        });
      }



    }
  }


  Future<bool> checkExistingProfile() async{
    String? idUser=FirebaseAuth.instance.currentUser?.uid;
    FirebaseFirestore db = FirebaseFirestore.instance;
    final docRef = db.collection("perfiles").doc(idUser);

    DocumentSnapshot docsnap= await docRef.get();

    return docsnap.exists;
  }

   */

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(widget.sLogoPath)),
              const SizedBox(height: 30),
              const Text("CARGANDO...",style: TextStyle(fontSize: 20)),
              const SizedBox(height: 30),
              const CircularProgressIndicator(
                semanticsLabel: 'Circular progress indicator',
              )
            ],
          ),
        )
    );
  }

}