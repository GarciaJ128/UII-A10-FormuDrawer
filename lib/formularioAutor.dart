import 'package:flutter/material.dart';
import 'package:formulariosgarciaj/drawer_menu.dart';

class Formu5 extends StatefulWidget {
  static const String routeName = '/formu5';

  @override
  _Formu5State createState() => _Formu5State();
}

class _Formu5State extends State<Formu5> {
  TextEditingController idAutorController = TextEditingController();
  TextEditingController nombreAController = TextEditingController();
  TextEditingController nacionalidadController = TextEditingController();
  TextEditingController biografiaController = TextEditingController();
  TextEditingController fotoController = TextEditingController();
  TextEditingController premiosController = TextEditingController();
  TextEditingController obrasController = TextEditingController();
  TextEditingController paginaController = TextEditingController();

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
                'Formulario Autor',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3C1143)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('ID Autor', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idAutorController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el ID del autor',
                ),
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Nombre Autor', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombreAController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.text_fields, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el nombre del autor',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Nacionalidad', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nacionalidadController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.location_on, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe la nacionalidad del autor',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Biografía', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                maxLines: 5,
                controller: biografiaController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.edit_note, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe la biografía del autor',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Foto', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: fotoController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.photo_camera_front,
                      color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el nombre de la foto',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Premios', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                maxLines: 5,
                controller: premiosController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.emoji_events, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe los premios del autor',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Obras Destacadas', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                maxLines: 5,
                controller: obrasController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.library_books, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe las obras destacadas',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Página Web', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: paginaController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.language, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe la página web del autor',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idAutorController.text);
                  print(nombreAController.text);
                  print(nacionalidadController.text);
                  print(biografiaController.text);
                  print(fotoController.text);
                  print(premiosController.text);
                  print(obrasController.text);
                  print(paginaController.text);
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
