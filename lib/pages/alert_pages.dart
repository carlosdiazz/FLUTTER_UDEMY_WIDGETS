import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              elevation: 5,
              title: const Text('Titulo'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              content: Column(
                children: const [
                  Text('CONTENIDO DE LA ALERTA'),
                  SizedBox(
                    height: 10,
                  ),
                  FlutterLogo(
                    size: 100,
                  ),
                ],
                mainAxisSize: MainAxisSize.min,
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                TextButton(
                    onPressed: () => Navigator.pop(context), child: Text('Ok'))
              ],
            ),
        barrierDismissible: false);
  }

  void displayDialogIos(BuildContext context) {
    showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text("Titulo"),
            content: Column(
              children: const [
                Text('CONTENIDO DE LA ALERTA'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 100,
                ),
              ],
              mainAxisSize: MainAxisSize.min,
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Cancelar',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              TextButton(
                  onPressed: () => Navigator.pop(context), child: Text('Ok'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Pages'),
      ),
      body: Center(
          child: ElevatedButton(
        //onPressed: () => displayDialogAndroid(context),
        onPressed: () => !Platform.isAndroid
            ? displayDialogIos(context)
            : displayDialogAndroid(context),

        child: const Text('Mostrar Alerta'),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.close),
      ),
    );
  }
}
