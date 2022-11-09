# Firebase Authentification

Auth sirve para autenticar a los usuarios en su aplicación. 
Admite la autenticación mediante contraseñas, números de teléfono, gmail, Facebook, etc.

## Codigo DART

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();

await Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform,
);

//nos avisa si el usuario esta o no logeado
/* FirebaseAuth.instance
.authStateChanges()
.listen((User? user) {
if (user == null) {
print('User is currently signed out!');
} else {
print('User is signed in!');
}
});*/

runApp(App());
}