import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // title: const Text('Login utec'),
          // centerTitle: true,
          // backgroundColor: Colors.purple, // Ajusta el color según tu diseño
          // Aquí va el banner
          flexibleSpace: Row(
            children: [
              Expanded(
                child:
                    Image.asset('assets/images/utec-ps.png', fit: BoxFit.cover),
              ),
            ],
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //carnet
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1, vertical: size.width * 0.1),
              child: TextField(
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: false),
                decoration: const InputDecoration(
                    labelText: 'Carnet',
                    labelStyle: TextStyle(
                        color: Color(0xFFBEBCBC), fontWeight: FontWeight.w700)),
                onChanged: (value) {},
              ),
            ),

            //password
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.1,
                  right: size.width * 0.1,
                  bottom: size.height * 0.1),
              child: TextField(
                //keyboardType: const TextInputType.numberWithOptions(decimal: false),
                decoration: const InputDecoration(
                    labelText: 'Contraseña',
                    labelStyle: TextStyle(
                        color: Color(0xFFBEBCBC), fontWeight: FontWeight.w700)),
                onChanged: (value) {},
              ),
            ),
            //boton inicio sesion
            ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                    side: const BorderSide(color: Colors.white),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    minimumSize: const Size(double.infinity, 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                child: const Text(
                  'Iniciar sesion',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )),

            //boton salir
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 77, 5, 5),
                    side: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    minimumSize: const Size(double.infinity, 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                child:
                    const Text('Salir', style: TextStyle(color: Colors.white))),
          ],
        )),
      ),
    );
  }
}
