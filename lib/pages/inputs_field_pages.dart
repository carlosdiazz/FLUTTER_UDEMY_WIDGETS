import 'package:componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputFieldPages extends StatelessWidget {
  const InputFieldPages({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': "",
      "last_name": "",
      "email": "",
      "password": "",
      'role': ''
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('InputText'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(children: [
            SizedBox(height: 30),
            CustomInpuutField(
              labelText: 'Nombre',
              hintText: 'Nombre del usuario',
              formProperty: 'first_name',
              formValues: formValues,
            ),
            SizedBox(height: 30),
            CustomInpuutField(
                labelText: 'Apellido',
                hintText: 'Apellido del usuario',
                formProperty: 'last_name',
                formValues: formValues),
            SizedBox(height: 30),
            CustomInpuutField(
                labelText: 'Correo',
                hintText: 'Correo del usuario',
                keyBoardType: TextInputType.emailAddress,
                formProperty: 'email',
                formValues: formValues),
            SizedBox(
              height: 30,
            ),
            CustomInpuutField(
                labelText: 'Constrasena',
                hintText: 'Conttrasena del user',
                keyBoardType: TextInputType.visiblePassword,
                oscuredText: true,
                formProperty: 'password',
                formValues: formValues),
            SizedBox(height: 30),
            DropdownButtonFormField(
                items: [
                  DropdownMenuItem(
                    child: Text('Admin'),
                    value: 'Admin',
                  ),
                  DropdownMenuItem(
                    child: Text('SuperUser'),
                    value: 'SuperUser',
                  ),
                  DropdownMenuItem(
                    child: Text('Developer'),
                    value: 'Developer',
                  ),
                  DropdownMenuItem(
                    child: Text('Jr.Developer'),
                    value: 'Jr.Developer',
                  )
                ],
                onChanged: (value) {
                  print(value);
                  formValues['role'] = value ?? 'Admin';
                }),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(
                      FocusNode()); //Quito el teclado a presionar guardar
                  // imprimir valores del formaulario
                  if (!myFormKey.currentState!.validate()) {
                    print('Formualrio no valido');
                    return;
                  }
                  ;
                  print(formValues);
                },
                child: SizedBox(
                  child: Center(child: Text('Guardar')),
                  width: double.infinity,
                ))
          ]),
        ),
      )),
    );
  }
}
