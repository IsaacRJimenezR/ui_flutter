import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Fondo(),
          Contenido(),
        ],
      ),
    );
  }
}

//FONDO DE PANTALLA
class Fondo extends StatefulWidget {
  const Fondo({super.key});

  @override
  State<Fondo> createState() => _FondoState();
}

class _FondoState extends State<Fondo> {
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
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Sign in to TGD and continue',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center, //Aliniar texto al centro
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Enter your email and password below to continue to the growing Developer and let the learning begin!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
            textAlign: TextAlign.center, // Aliniar texto al centro
          ),
          SizedBox(
            height: 20,
          ),
          Datos(),
        ],
      ),
    );
  }
}

class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
//Varoable tipo bool
  bool obs = true;
  bool obb = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 25, 32, 61),
      ),
      child: Column(
        children: [
          TextFormField(
            obscureText: obb,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              //RELLENO INTERNO
              filled: true,
              fillColor: Color.fromARGB(42, 110, 171, 224),
              hintText: 'Username',
              hintStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              //suffixIcon= A lado derecho
              //prefixIcon= A lado izquierdo
              prefixIcon: Icon(
                //Icono de usuario
                Icons.person_pin,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            obscureText: obs,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              //RELLENO INTERNO
              filled: true,
              fillColor: const Color.fromARGB(42, 110, 171, 224),
              hintText: 'Password',
              hintStyle: const TextStyle(
                // Color e texto
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              //suffixIcon= A lado derecho
              //prefixIcon= A lado izquierdo
              prefixIcon: IconButton(
                icon: const Icon(
                  //Icono de candado
                  Icons.lock,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(
                    () {
                      obs == true ? obs = false : obs = true;
                    },
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Botones(),
        ],
      ),
    );
  }
}

class Botones extends StatefulWidget {
  const Botones({super.key});

  @override
  State<Botones> createState() => _BotonesState();
}

class _BotonesState extends State<Botones> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 38, 188, 187),
              ),
            ),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
          width: double.infinity,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 35, 148, 247),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/src/img/google.png',
                  width: 30,
                  height: 30,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Sing-in using Google',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), //Margen
            child: Text(
              'G The Growing Developer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
