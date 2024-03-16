import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xox/sounds/app_sounds.dart';
import 'package:xox/theme/app_theme.dart';

class BtnGoBack extends StatelessWidget {
  const BtnGoBack({
    super.key,
    required this.ruta,
    required this.icon,
  });

  final String ruta;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await AppSounds().BtnSound();
        context.go(ruta);
      },
      child: Container(
        width: 100,
        height: 100,
        alignment: Alignment.centerLeft,
        child: Container(
            margin: const EdgeInsets.only(left: 20),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: AppTheme.yellow,
              border: Border.all(
                color: Colors.black, 
                width: 3.0, 
              ),
              //sombra
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(4, 6), 
                ),
              ],
            ),
            child: Icon(
              icon,
              size: 40,
              color: Colors.black,
            )),
      ),
    );
  }
}
