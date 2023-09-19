import 'package:flutter/material.dart';

import '../Pages/Items/EditItem.dart';
import '../config/app_theme.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EditItems()));
      },
      child: Container(
          height: 45,
          width: 325,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            border: Border.all(
              color: secondaryColor, // Color del borde
              width: 2.0, // Ancho del borde
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(
                image: AssetImage("assets/gorro.png"),
                width: 45,
                height: 45,
              ),
              SizedBox(
                width: 275,
                child: Center(
                  child: Text("Gorra Policial",
                      style: TextStyle(
                        fontSize: 15,
                        color: black,
                      )),
                ),
              ),
            ],
          )),
    );
  }
}
