import 'package:flutter/material.dart';

class FeedbackWidget extends StatefulWidget {
  final GlobalKey<FormState> formKey;

  const FeedbackWidget({
    super.key,
    required this.formKey,
  });

  @override
  State<FeedbackWidget> createState() => _FeedbackWidgetState();
}

class _FeedbackWidgetState extends State<FeedbackWidget> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
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
          // Sei la,
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
                      key: widget.formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: size.height * .4,
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              enabled: true,
                              contentPadding:
                                  EdgeInsets.only(left: 15, right: 15),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25.0),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25.0),
                                ),
                              ),
                              labelText: '',
                              labelStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              enabled: true,
                              contentPadding:
                                  EdgeInsets.only(left: 15, right: 15),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25.0),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25.0),
                                ),
                              ),
                              labelText: '',
                              labelStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: size.width * .8,
                            child: DropdownButtonFormField<String>(
                              decoration: const InputDecoration(
                                //floatingLabelBehavior: FloatingLabelBehavior.always,
                                enabled: true,
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding:
                                    EdgeInsets.only(left: 15, right: 15),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                                labelText: null,
                                labelStyle: TextStyle(color: Colors.grey),
                              ),
                              onChanged: (value) => {dropdownValueSex = value},
                              value: dropdownValueSex,
                              hint: const Text(
                                'Cargo',
                              ),
                              items: [
                                "Cargo 1",
                                "Cargo 2",
                                "Cargo 3",
                                "Cargo 4",
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              enabled: true,
                              contentPadding:
                                  EdgeInsets.only(left: 15, right: 15),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25.0),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25.0),
                                ),
                              ),
                              labelText: '',
                              labelStyle: TextStyle(color: Colors.grey),
                            ),
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