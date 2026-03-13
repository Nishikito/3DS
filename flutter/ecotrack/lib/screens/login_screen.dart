import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>(); //se há o underline = trabalhando com o estado da variavel

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Stack(
                  children: [
                    Image.asset("logo_provisoria.png", 
                    height: 150,
                    fit: BoxFit.cover,
                    ),
                    Container(
                      width: 155,
                      height: 155,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: 
                          [const Color.fromARGB(0, 76, 175, 80), 
                           Colors.black
                        ]
                        )
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
              ),
              TextFormField(//daz com que apareça o icone de email no input
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  prefix: Icon(
                    Icons.email
                  ),
                  border: OutlineInputBorder()//irá aparecer uma caixa em volta do input de email(NAO OBRIGATORIO)
                ),
              ),
            ],
          )
          ),
      ),
    );
  }
}