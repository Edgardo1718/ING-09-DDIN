import 'package:flutter/material.dart';
import 'package:login/pages/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Fondo(),
          Center(child: Contenido())
        ],
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF19203D)
    );
  }
} 

class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20,),
          const Image(
            image: NetworkImage('https://img.freepik.com/vector-premium/concepto-proteccion-archivos-documentos-seguros-telefono-o-informacion-confidencial-movil-datos-privacidad-dibujos-animados-planos-telefonos-celulares_101884-616.jpg?w=740'),
            width:150,
            height:150,
          ),
          const Text('Welcome to TGD!',
          textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
            ),
          ),

          const SizedBox(height: 10,),
          const Text('A one stop portal for you to learn the latest technologies for SCRATCH',
          textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w400,
              letterSpacing: 2,
            ),
          ),


          const SizedBox(height: 50,),

          SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(  
            style: ElevatedButton.styleFrom(
            primary:Colors.blue,
          ),
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
            },
            child: const Text(
              'Inicia Sesión',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                letterSpacing: 2
              ),
            ),
          ),
        ),
        ],
      ),
    );
  }
}