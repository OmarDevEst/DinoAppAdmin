import 'package:dino_app/config/app_theme.dart';
import 'package:flutter/material.dart';
import '../../Widgets/NavBar.dart';

class EditItems extends StatelessWidget {
  const EditItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Recompensas',
              style: TextStyle(color: white, fontWeight: FontWeight.bold)),
          backgroundColor: primaryColor,
        ),
        drawer: const NavBar(),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 280,
                width: 280,
                decoration: BoxDecoration(
                    color: white,
                    border: Border.all(color: secondaryColor, width: 5),
                    borderRadius: BorderRadius.circular(5)),
                child: const Image(
                    image: AssetImage(
                  'assets/Recompensa.png',
                ))),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 37, // Establece la altura que desees
              width: 320,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre...',
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.all(3),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(""),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_time_filled, color: black),
                  label:
                      const Text("Suspender", style: TextStyle(color: black)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: alert,
                    minimumSize: const Size(161, 37),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.replay, color: black),
                  label:
                      const Text("Actualizar", style: TextStyle(color: black)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    minimumSize: const Size(161, 37),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                  ),
                ),
              ],
            )
          ],
        )));
  }
}
