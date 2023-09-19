import 'package:dino_app/Pages/Groups/Menu.dart';
import 'package:dino_app/config/app_theme.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/Header.png'),
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text("¡Bienvenido!",
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
              label: const Text("Inicia sesión con cuenta de Google",
                  style: TextStyle(color: white, fontSize: 13)),
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
              height: 37, // Establece la altura que desees
              width: 320,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Correo...',
                  prefixIcon: Icon(Icons.mail),
                  contentPadding: EdgeInsets.all(3),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              height: 37, // Establece la altura que desees
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
            Container(
              height: 16, // Establece la altura que desees
              width: 320,
              alignment: Alignment.centerRight,
              child: const Text(
                "¿Olvidaste tu contraseña?",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 13),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Menu()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: secondaryColor,
                minimumSize: const Size(166, 37),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: const Text('Iniciar sesión',
                  style: TextStyle(color: white, fontSize: 13)),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "¿No tienes una cuenta?",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                Text(
                  " Regístrate",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 13, color: primaryColor),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
