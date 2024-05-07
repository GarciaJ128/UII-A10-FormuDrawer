import 'package:flutter/material.dart';
import 'package:formulariosgarciaj/drawer_menu.dart';

class Formu2 extends StatefulWidget {
  static const String routeName = '/formu2';

  @override
  _Formu2State createState() => _Formu2State();
}

class _Formu2State extends State<Formu2> {
  TextEditingController idClienteController = TextEditingController();
  TextEditingController nombreController = TextEditingController();
  TextEditingController usuarioController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();
  TextEditingController nacimientoController = TextEditingController();
  TextEditingController correoController = TextEditingController();
  TextEditingController direccionController = TextEditingController();
  TextEditingController puntosController = TextEditingController();
  TextEditingController contraseniaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Librería DenysTale GarciaJ",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff361035),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(
                'Formulario Cliente',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3C1143)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('ID Cliente', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idClienteController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el ID del cliente',
                ),
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Nombre Cliente', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombreController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.text_fields, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el nombre completo',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Usuario', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: usuarioController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.account_circle,
                      color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el usuario del cliente',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Teléfono', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: telefonoController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.call, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el teléfono del cliente',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Fecha Nacimiento', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nacimientoController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.perm_contact_cal,
                      color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe la fecha de nacimiento',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Correo electrónico', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: correoController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.mail, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el correo electrónico',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Dirección', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: direccionController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.auto_stories, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe la dirección del cliente',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Puntos Acumulados', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: puntosController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.confirmation_num,
                      color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe la cantidad de puntos acumulados',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Contraseña', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: "*",
                controller: contraseniaController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.key, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe una contraseña',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idClienteController.text);
                  print(nombreController.text);
                  print(usuarioController.text);
                  print(telefonoController.text);
                  print(nacimientoController.text);
                  print(correoController.text);
                  print(direccionController.text);
                  print(puntosController.text);
                  print(contraseniaController.text);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xff3C1143)), // Cambia el color de fondo
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30), // Ajusta el padding
                  ),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(
                        fontSize: 20,
                        fontWeight:
                            FontWeight.bold), // Cambia el estilo del texto
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Ajusta la forma del botón
                      // Puedes ajustar más propiedades aquí, como bordes, sombras, etc.
                    ),
                  ),
                ),
                child: Text(
                  'Enviar',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
