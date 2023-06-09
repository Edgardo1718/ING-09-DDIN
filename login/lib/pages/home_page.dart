import 'package:flutter/material.dart';
import 'package:login/pages/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Fondo(),
          Center(child: Contenido()),
        ],
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF19203D),
      width: double.infinity,
      height: double.infinity,
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({Key? key}) : super(key: key);

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var size = constraints.biggest;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: size.width * 0.5,
                height: size.width * 0.5,
                child: const Image(
                  image: NetworkImage(
                      'https://img.freepik.com/vector-premium/concepto-proteccion-archivos-documentos-seguros-telefono-o-informacion-confidencial-movil-datos-privacidad-dibujos-animados-planos-telefonos-celulares_101884-616.jpg?w=740'),
                ),
              ),
              const Text(
                'Welcome to TGD!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                 
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'A one stop portal for you to learn the latest technologies for SCRATCH',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  
                  fontWeight: FontWeight.w400,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: double.infinity,
                height: size.width * 0.1,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
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
                  
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}