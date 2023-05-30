import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          ColorFondo(),
          Contenido(),
        ],
      ),
    );
  }
}

//FONDO DE PANTALLA
class ColorFondo extends StatefulWidget {
  const ColorFondo({super.key});

  @override
  State<ColorFondo> createState() => _ColorFondoState();
}

class _ColorFondoState extends State<ColorFondo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 25, 32, 61),
    );
  }
}

//PARA CONTENIDO
class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                //Para el ancho y alto
                width: 200,
                height: 200,
                //PARA EL CIRCULO
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  // shape: BoxShape.circle, //tambien se puede usar siempre y cuando este presente el container //GENERA EL CIRCULO
                  color: const Color.fromARGB(42, 110, 171, 224),
                ),
              ),
              Image.asset(
                'lib/src/img/welcome.png',
                width: 235,
                height: 200,
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to TDG !',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
            width: 5,
          ),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20), //Margen
              child: Text(
                'A one-stop portal for you to learn the latest technologies from SCRATCH',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          //Boton
          const Boton(),
        ],
      ),
    );
  }
}

//PARA EL BOTON
class Boton extends StatefulWidget {
  const Boton({super.key});

  @override
  State<Boton> createState() => _BotonState();
}

class _BotonState extends State<Boton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 330,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 38, 188, 187),
              ),
            ),
            child: const Text(
              'Get Started >',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
