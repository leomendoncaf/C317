import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:confetti/confetti.dart';
import 'steppers/feedback_widget.dart';
import 'steppers/form_widget.dart';
import 'steppers/steppers_page.dart';
import 'package:cool_stepper_reloaded/cool_stepper_reloaded.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final formKey = GlobalKey<FormState>();
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  void showFeedbackDialog() {
    _confettiController.play(); // Aciona o confetti quando o diálogo abre

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Formulário enviado!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Muito obrigado pelo seu feedback!",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Theme.of(context).colorScheme.inversePrimary, // Define a cor de fundo do botão
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(); // Fecha o diálogo
                    },
                    child: Text("Fechar", style: TextStyle(color: Theme.of(context).colorScheme.tertiary),),
                  ),
                ],
              ),
            ),
            Lottie.asset(
              'assets/success.json', // Coloque um arquivo Lottie na pasta assets
              width: MediaQuery.of(context).size.width,
              height: 300,
              fit: BoxFit.fill,
              repeat: false, // Desativa o loop da animação
            ),
          ],
        );
      },
    );
  }

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
                          title: "Informações do colaborador",
                          content: FeedbackWidget(),
                        ),
                        CoolStep(
                          title: "Informações do colaborador",
                          content: FormWidget(),
                        ),
                      ],
                      onComplete: showFeedbackDialog,
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
