import 'package:flutter/material.dart';
import 'package:formulariosgarciaj/drawer_menu.dart';

class Formu1 extends StatefulWidget {
  static const String routeName = '/formu1';

  @override
  _Formu1State createState() => _Formu1State();
}

class _Formu1State extends State<Formu1> {
  TextEditingController idController = TextEditingController();
  TextEditingController idAutorController = TextEditingController();
  TextEditingController tituloController = TextEditingController();
  TextEditingController portadaController = TextEditingController();
  TextEditingController editorialController = TextEditingController();
  TextEditingController anioController = TextEditingController();
  TextEditingController generoController = TextEditingController();
  TextEditingController precioController = TextEditingController();
  TextEditingController stockController = TextEditingController();

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
                'Formulario Libro',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3C1143)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('ID', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el ID del libro',
                ),
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
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
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Titulo', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: tituloController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.title, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el titulo del libro',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Portada', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: portadaController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.image, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe la imagen de la portada',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Editorial', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: editorialController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.domain, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe la editorial del libro',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Año', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: anioController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.calendar_month,
                      color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el año del libro',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Género', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: generoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.auto_stories, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el género del libro',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Precio', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: precioController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.sell, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el precio del libro',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('En stock', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: stockController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.inventory_2, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe la cantidad disponible',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 15,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idController.text);
                  print(idAutorController.text);
                  print(tituloController.text);
                  print(portadaController.text);
                  print(editorialController.text);
                  print(anioController.text);
                  print(generoController.text);
                  print(precioController.text);
                  print(stockController.text);
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
