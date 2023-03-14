import 'package:componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputFieldPages extends StatelessWidget {
  const InputFieldPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InputText'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(children: [
          CustomInpuutField(
            labelText: 'Nombre',
            hintText: 'Nombre del usuario',
          ),
          SizedBox(height: 30),
          CustomInpuutField(
            labelText: 'Apellido',
            hintText: 'Apellido del usuario',
          ),
          SizedBox(height: 30),
          CustomInpuutField(
            labelText: 'Correo',
            hintText: 'Correo del usuario',
            keyBoardType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 30,
          ),
          CustomInpuutField(
            labelText: 'Constrasena',
            hintText: 'Conttrasena del user',
            keyBoardType: TextInputType.visiblePassword,
            oscuredText: true,
          ),
        ]),
      )),
    );
  }
}
