import 'package:dino_app/Pages/Home/LogIn.dart';
import 'package:dino_app/Pages/Home/SignIn.dart';
import 'package:dino_app/Pages/Home/TandC.dart';
import 'package:dino_app/config/app_theme.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(93, 181, 78, 0),
        image: DecorationImage(
          image: AssetImage('assets/Inicio.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LogIn()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: yellow,
                    minimumSize: const Size(166, 33),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Text('Iniciar sesión',
                      style: TextStyle(color: black, fontSize: 13)),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignIn()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: yellow,
                    minimumSize: const Size(166, 33),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Text('Registrarse',
                      style: TextStyle(color: black, fontSize: 13)),
                ),
                const SizedBox(height: 78)
              ],
            ),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TandC())),
              child: const Text('© Todos los derechos reservados',
                  style: TextStyle(
                      color: white,
                      fontSize: 15,
                      decoration: TextDecoration.none)),
            ),
          ],
        ),
      ),
    );
  }
}
