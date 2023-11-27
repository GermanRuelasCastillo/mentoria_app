import 'package:flutter/material.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Iniciemos"),
          SizedBox(height: 50),
          FacebookButton(),
          GoogleButton(),
          AppleButton(),
          GotoLogin()
        ],
      ),
    ));
  }
}

class FacebookButton extends StatelessWidget {
  const FacebookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("assets/social_icons/facebook.png", width: 20),
        SizedBox(width: 5),
        Text("Continua con Facebook",
            style: TextStyle(fontWeight: FontWeight.bold)),
      ]),
    );
  }
}

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("assets/social_icons/google.png", width: 20),
        SizedBox(width: 5),
        Text("Continua con Google",
            style: TextStyle(fontWeight: FontWeight.bold)),
      ]),
    );
  }
}

class AppleButton extends StatelessWidget {
  const AppleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("assets/social_icons/apple.png", width: 20),
        SizedBox(width: 5),
        Text("Continua con Apple",
            style: TextStyle(fontWeight: FontWeight.bold)),
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
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ElevatedButton(
          onPressed: () {},
          child: Text("Iniciar con correo"),
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15),
              shape: StadiumBorder(),
              backgroundColor: Color.fromRGBO(77, 93, 250, 1))),
    );
  }
}
