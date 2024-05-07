import 'package:flutter/material.dart';
import 'package:formulariosgarciaj/drawer_menu.dart';

class Formu4 extends StatefulWidget {
  static const String routeName = '/formu4';

  @override
  _Formu4State createState() => _Formu4State();
}

class _Formu4State extends State<Formu4> {
  TextEditingController idReservaController = TextEditingController();
  TextEditingController idClienteController = TextEditingController();
  TextEditingController idLibroController = TextEditingController();
  TextEditingController fechaReservaController = TextEditingController();
  TextEditingController fechaEntregaController = TextEditingController();
  TextEditingController estadoController = TextEditingController();
  TextEditingController codigoController = TextEditingController();
  TextEditingController comentarioController = TextEditingController();

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
                'Formulario Reserva',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3C1143)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('ID Reserva', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idReservaController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.pin, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el ID de reserva',
                ),
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
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
                  prefixIcon: const Icon(Icons.account_circle,
                      color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el ID del cliente',
                ),
                keyboardType: TextInputType.number,
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('ID Libro', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idLibroController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.book, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el ID del Libro',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Fecha Reserva', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: fechaReservaController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.date_range, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe la fecha de reserva',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Fecha Entrega', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: fechaEntregaController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.today, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe la fecha de entrega',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Estado', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: estadoController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.info, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el estado de la reserva',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Código', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: codigoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.subtitles, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el codigo de reserva',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Comentario', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: comentarioController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.comment, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe un comentario extra para la reserva',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idReservaController.text);
                  print(idClienteController.text);
                  print(idLibroController.text);
                  print(fechaReservaController.text);
                  print(fechaEntregaController.text);
                  print(estadoController.text);
                  print(codigoController.text);
                  print(comentarioController.text);
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
                child: const Text(
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
