import 'package:flutter/material.dart';
import 'package:formulariosgarciaj/drawer_menu.dart';

class Formu3 extends StatefulWidget {
  static const String routeName = '/formu3';

  @override
  _Formu3State createState() => _Formu3State();
}

class _Formu3State extends State<Formu3> {
  TextEditingController idCompraController = TextEditingController();
  TextEditingController idClienteController = TextEditingController();
  TextEditingController idLibroController = TextEditingController();
  TextEditingController fechaController = TextEditingController();
  TextEditingController cantidadController = TextEditingController();
  TextEditingController descuentoController = TextEditingController();
  TextEditingController preciototalController = TextEditingController();
  TextEditingController facturaController = TextEditingController();

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
                'Formulario Compra',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3C1143)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('ID Compra', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idCompraController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.barcode_reader,
                      color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el ID de compra',
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
              const Text('Fecha', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: fechaController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.event, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe la fecha de compra',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Cantidad', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: cantidadController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.format_list_numbered,
                      color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe la cantidad comprada',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Descuento', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: descuentoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.percent, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el descuento',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Precio Total', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: preciototalController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.payment, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el precio total',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('No. Factura', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: facturaController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.receipt_long, color: Color(0xff683370)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Escribe el número de factura',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idCompraController.text);
                  print(idClienteController.text);
                  print(idLibroController.text);
                  print(fechaController.text);
                  print(cantidadController.text);
                  print(descuentoController.text);
                  print(preciototalController.text);
                  print(facturaController.text);
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
