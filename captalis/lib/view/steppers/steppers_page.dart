import 'package:cool_stepper_reloaded/cool_stepper_reloaded.dart';
import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  final List<CoolStep> steps;
  final Function()? onComplete;

  const StepperWidget({
    super.key,
    required this.steps,
    required this.onComplete,
  });

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int textSize = 10;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.inversePrimary,
        height: size,
        child: CoolStepper(
          config: CoolStepperConfig(
            stepText: 'Etapa',
            ofText: 'de',
            nextButton: Container(
              height: size * .05,
              padding: const EdgeInsets.only(
                right: 10,
              ),
              child: const Text('Proximo'),
            ),
            backButton: Container(
              height: size * .05,
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: const Text('Voltar'),
            ),
            finishButton: Container(
              height: size * .05,
              padding: const EdgeInsets.only(
                right: 10,
              ),
              child: const Text('Enviar'),
            ),
          ),
          onCompleted: widget.onComplete,
          steps: widget.steps,
          isHeaderEnabled: false,
        ),
      ),
    );
  }
}
