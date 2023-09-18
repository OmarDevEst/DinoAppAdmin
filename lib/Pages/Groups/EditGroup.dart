import 'package:flutter/material.dart';
import '../../Widgets/NavBar.dart';
import '../../config/app_theme.dart';

class EditGroup extends StatelessWidget {
  const EditGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grupos ciclo 2023 - 2',
            style: TextStyle(color: white, fontWeight: FontWeight.bold)),
        backgroundColor: primaryColor,
      ),
      drawer: const NavBar(),
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 135,
            width: 320,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: black)),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.image_search, size: 50, color: black),
                Text(
                  "Subir imagen",
                  style: TextStyle(fontSize: 13, color: black),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 58,
            width: 320,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ID de grupo',
                contentPadding: EdgeInsets.all(3),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 58,
            width: 320,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nombre del grupo',
                contentPadding: EdgeInsets.all(3),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: secondaryColor,
                minimumSize: const Size(100, 44),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: const Text("Guardar",
                  style: TextStyle(color: white, fontSize: 13))),
        ],
      )),
    );
  }
}
