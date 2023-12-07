import 'package:flutter/material.dart';
import 'package:mentoria_app/src/presentation/widgets/texts.dart';

import 'register_page.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.25),
          TitleGarage(title: "Iniciemos"),
          SizedBox(height: 50),
          SocialButton(
              textButton: 'Continua con Facebook', nameIcon: 'facebook'),
          SocialButton(textButton: 'Continua con Google', nameIcon: 'google'),
          SocialButton(textButton: 'Continua con Apple', nameIcon: 'apple'),
          OrLine(),
          SizedBox(height: 30),
          GotoLogin(),
          SizedBox(height: 100),
          Expanded(child: SizedBox()),
          GoToRegister(),
          SizedBox(height: 30)
        ],
      ),
    ));
  }
}

class SocialButton extends StatelessWidget {
  final String textButton;
  final String nameIcon;
  const SocialButton(
      {super.key, required this.textButton, required this.nameIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("assets/social_icons/$nameIcon.png", width: 20),
        const SizedBox(width: 5),
        Text(textButton, style: const TextStyle(fontWeight: FontWeight.bold)),
      ]),
    );
  }
}

class GotoLogin extends StatelessWidget {
  const GotoLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ElevatedButton(
          onPressed: () {},
          child: Text("Iniciar con correo"),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(15),
            shape: const StadiumBorder(),
          )),
    );
  }
}

class OrLine extends StatelessWidget {
  const OrLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
                height: 2,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromRGBO(238, 238, 238, 1))),
                child: const SizedBox()),
          ),
          const SizedBox(width: 15),
          const Text("ó"),
          const SizedBox(width: 15),
          Expanded(
            child: Container(
                // width: double.infinity,
                height: 2,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromRGBO(238, 238, 238, 1))),
                child: const SizedBox()),
          ),
        ],
      ),
    );
  }
}

class GoToRegister extends StatelessWidget {
  const GoToRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("¿No tienes una cuenta?"),
        const SizedBox(width: 10),
        InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const RegisterPage())),
          child: const Text(
            "Ir a registro",
            style: TextStyle(color: Color.fromRGBO(77, 93, 250, 1)),
          ),
        ),
      ],
    );
  }
}
