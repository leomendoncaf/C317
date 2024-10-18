import 'package:flutter/material.dart';

class FormWidget2 extends StatefulWidget {
  //final GlobalKey<FormState> formKey;

  const FormWidget2({
    super.key,
    //required this.formKey,
  });

  @override
  State<FormWidget2> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget2> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  int selected1 = -1;
  int selected2 = -1;
  int selected3 = -1;

  String? dropdownValueSex;

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.grey.shade100,
            Theme.of(context).colorScheme.inversePrimary,
            Theme.of(context)
                .colorScheme
                .inversePrimary, // Cor inferior (azul claro)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 50,
            ),
            alignment: Alignment.topCenter,
            child: const Text(
              'Captalis',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 50,
              ),
            ),
          ),
          SizedBox(
            height: size.height,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Form(
                      //key: widget.formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: size.height * .15,
                          ),
                          const SizedBox(height: 40),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'A empresa oferece oportunidades claras de desenvolvimento e crescimento profissional?',
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Centraliza o conteúdo
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: List.generate(6, (index) {
                                  return IconButton(
                                    onPressed: () {
                                      setState(() {
                                        selected1 = index;
                                      });
                                    },
                                    icon: Icon(
                                      selected1 == index
                                          ? Icons.star
                                          : Icons
                                              .star_border_outlined, // Ícone circular para feedback
                                      color: selected1 == index
                                          ? Colors.yellow
                                          : Colors.grey, // Cor do botão
                                    ),
                                    iconSize: 15, // Tamanho dos ícones
                                  );
                                }),
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      'Muito ruim'), // Espaçamento entre o texto e os botões
                                  Text('Muito bom'),
                                ],
                              ) // Espaçamento entre os botões e o texto à direita
                            ],
                          ),
                          const SizedBox(height: 80),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'A empresa valoriza a diversidade e promove um ambiente inclusivo?',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Centraliza o conteúdo
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: List.generate(6, (index) {
                                  return IconButton(
                                    onPressed: () {
                                      setState(() {
                                        selected2 = index;
                                      });
                                    },
                                    icon: Icon(
                                      selected2 == index
                                          ? Icons.star
                                          : Icons
                                              .star_border_outlined, // Ícone circular para feedback
                                      color: selected2 == index
                                          ? Colors.yellow
                                          : Colors.grey, // Cor do botão
                                    ),
                                    iconSize: 15, // Tamanho dos ícones
                                  );
                                }),
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      'Muito ruim'), // Espaçamento entre o texto e os botões
                                  Text('Muito bom'),
                                ],
                              ) // Espaçamento entre os botões e o texto à direita
                            ],
                          ),
                          const SizedBox(height: 80),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'A liderança da empresa se preocupa com o bem-estar dos colaboradores?',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Centraliza o conteúdo
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: List.generate(6, (index) {
                                  return IconButton(
                                    onPressed: () {
                                      setState(() {
                                        selected3 = index;
                                      });
                                    },
                                    icon: Icon(
                                      selected3 == index
                                          ? Icons.star
                                          : Icons
                                              .star_border_outlined, // Ícone circular para feedback
                                      color: selected3 == index
                                          ? Colors.yellow
                                          : Colors.grey, // Cor do botão
                                    ),
                                    iconSize: 15, // Tamanho dos ícones
                                  );
                                }),
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      'Muito ruim'), // Espaçamento entre o texto e os botões
                                  Text('Muito bom'),
                                ],
                              ) // Espaçamento entre os botões e o texto à direita
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
