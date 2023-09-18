import 'package:dino_app/Pages/Home/Rol.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:dino_app/config/app_theme.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isValidEmail = true;
  final TextEditingController _emailController = TextEditingController();

  final KeyboardVisibilityController _keyboardVisibilityController =
      KeyboardVisibilityController();

  @override
  void initState() {
    super.initState();

    _keyboardVisibilityController.onChange.listen((bool visible) {
      if (visible) {
        _scrollScreenUp();
      } else {
        _scrollScreenDown();
      }
    });
  }

  void _scrollScreenUp() {
    final scrollController = ScrollController();
    scrollController.animateTo(
      100.0, // Ajusta la cantidad de desplazamiento según tus necesidades
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void _scrollScreenDown() {
    final scrollController = ScrollController();
    scrollController.animateTo(
      0.0, // Puedes restaurar la posición del scroll a la parte superior de la pantalla
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void validateEmail() {
    String value = _emailController.text;
    if (!EmailValidator.validate(value)) {
      setState(() {
        _isValidEmail = false;
      });
    } else {
      setState(() {
        _isValidEmail = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller:
            ScrollController(), // Agrega un controlador de desplazamiento
        child: Center(
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/Header.png'),
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text("¡Aprendamos juntos!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  )),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  'assets/Icons/google.png',
                  height: 25,
                  width: 25,
                ),
                label: const Text("Registrarse con cuenta de Google",
                    style: TextStyle(fontSize: 13, color: white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: black,
                  minimumSize: const Size(320, 37),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                height: 37,
                width: 320,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nombre...',
                    prefixIcon: Icon(Icons.person),
                    contentPadding: EdgeInsets.all(3),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 37,
                width: 320,
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Correo...',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: _isValidEmail ? Colors.grey : secondaryColor,
                      ),
                    ),
                    prefixIcon: const Icon(Icons.email),
                    contentPadding: const EdgeInsets.all(3),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  // Usamos el atributo `onBlur` para validar el correo electrónico al perder el foco
                  // del campo de texto.
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    validateEmail();
                  },
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(
                height: 37,
                width: 320,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contraseña...',
                    prefixIcon: Icon(Icons.lock),
                    contentPadding: EdgeInsets.all(3),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Rol()));
                  // Agrega aquí la lógica para registrar al usuario
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                  minimumSize: const Size(166, 37),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text('Registrarse',
                    style: TextStyle(color: white, fontSize: 13)),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "¿Ya tienes una cuenta?",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 13),
                  ),
                  Text(
                    " Inicia Sesión",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 13, color: primaryColor),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
