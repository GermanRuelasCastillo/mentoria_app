import 'package:flutter/material.dart';
import 'package:mentoria_app/src/presentation/widgets/texts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.25),
            TitleGarage(title: "Crea tu cuenta"),
            SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                focusColor: Color.fromRGBO(77, 93, 250, 1),
                filled: true,
                fillColor: Colors.grey.withOpacity(0.1),
                hintText: "Ingresa tu correo",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(24),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(77, 93, 250, 1), width: 2.0),
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility_off),
                prefixIcon: Icon(Icons.lock),
                filled: true,
                fillColor: Colors.grey.withOpacity(0.1),
                hintText: "Contraseña",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(24),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(77, 93, 250, 1), width: 2.0),
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  value: false,
                  onChanged: (bool? value) {
                    setState(() {
                      // isChecked = value!;
                    });
                  },
                ),
                Text("Recordar cuenta"),
              ],
            ),
            GotoLogin(),
            SizedBox(height: 50),
            OrLine(),
            Expanded(child: SizedBox()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset("assets/social_icons/facebook.png",
                      width: 30, height: 30),
                ),
                Container(
                  // width: 100,
                  // height: 70,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset("assets/social_icons/google.png",
                      width: 30, height: 30),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset("assets/social_icons/apple.png",
                        width: 30, height: 30))
              ],
            ),
            SizedBox(height: 50),
            GoToRegister(),
            SizedBox(height: 50)
          ])),
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
          const Text("o registrate con"),
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
        )
      ],
    );
  }
}
