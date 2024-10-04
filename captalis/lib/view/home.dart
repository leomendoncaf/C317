import 'package:flutter/material.dart';
import 'package:cool_stepper_reloaded/cool_stepper_reloaded.dart';

import 'steppers/feedback_widget.dart';
import 'steppers/steppers_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: const AssetImage("assets/logo.png"),
              width: size.width * .8,
            ),
            const SizedBox(height: 50),
            const Text(
              'Captalis',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 58,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Metrificando a felicidade.',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: size.width * .8,
              child: FloatingActionButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StepperWidget(
                      steps: [
                        CoolStep(
                          title: "Informaçoes do colaborador",
                          content: FeedbackWidget(formKey: formKey),
                          /*
                          validation: () {
                            if (!formKey.currentState!.validate()) {
                              return 'Prencha corretamente';
                            }
                            return null;
                          },*/
                        ),
                        CoolStep(
                          title: "Informaçoes do colaborador",
                          content: FeedbackWidget(formKey: formKey),
                        ),
                      ],
                      onComplete: () {},
                    ),
                  ),
                ),
                isExtended: true,
                child: const Text(
                  'Fazer Feedback',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
