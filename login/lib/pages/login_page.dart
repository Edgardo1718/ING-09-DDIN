import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: const [
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
      padding: const EdgeInsets.all(20),
      child: Container(
       child: Form(),
        ),
    );
  }
}


class Form extends StatefulWidget {
  const Form({super.key});

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {

  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20,),

          const SizedBox(
          child: Text(
            'Sign into TGD and continue',
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w400,
            letterSpacing: 2,
            ),
            ),
            ),

          const SizedBox(height: 30,),

          const SizedBox(
          child: Text(
            'Enter you email and password bellow to continue to the growning developer and let the learning begin!',
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w400,
            letterSpacing: 2,
            ),
            ),
            ),

          const SizedBox(height: 30,),
          
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
              label: Text('Email'),
              labelStyle: TextStyle(
                color: Colors.white,
              )
            ),
          ),

          const SizedBox(height: 15,),

          TextFormField(
            obscureText: obs,
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              label: const Text('Password'),
              labelStyle: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              suffixIcon: IconButton(
                icon: const Icon(Icons.remove_red_eye_outlined, color: Colors.white,),
                  onPressed: () {
                    setState(() {
                      obs == true ? obs=false : obs=true;
                    });
                  },
                )
            ),
          ),

          const SizedBox(height: 35,),

          Container(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(  
            onPressed: () {},
            style: ButtonStyle(  
              backgroundColor: MaterialStateProperty.all(Color.fromARGB(223, 42, 219, 219)),
            ),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                letterSpacing: 2
              ),
            ),
          ),
        ),

        const SizedBox(height: 15,),

        
        const SizedBox(height: 15,),

        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(  
            onPressed: () {},
            style: ButtonStyle(  
              backgroundColor: MaterialStateProperty.all(Color.fromARGB(223, 21, 96, 236)),
            ),
            child: const Text(
              'Sign-in with Google',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                letterSpacing: 2
              ),
            ),
          ),
        ),

        const SizedBox(height: 20,),


        ],
      ) 
    );
  }
}


