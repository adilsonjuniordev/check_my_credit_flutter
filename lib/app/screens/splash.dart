import 'dart:developer';

import 'package:check_my_credito/app/ui/my_colors.dart';
import 'package:check_my_credito/app/widgets/bottom_sheet_login.dart';
import 'package:check_my_credito/app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';
import '../widgets/my_button.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final _cpfEC = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: MyColors.primary,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(26, 10, 26, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Text("Acompanhe seu CPF quando quiser sem custo!",
                          style: TextStyle(
                            fontSize: 28,
                            color: MyColors.secondary,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    const SizedBox(height: 10),
                    Text("Para acessar, digite o seu CPF",
                        style: TextStyle(
                          fontSize: 16,
                          color: MyColors.secondary,
                        )),
                  ],
                ),
                const SizedBox(height: 60),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Form(
                      key: _formKey,
                      child: MyTextField(
                        controller: _cpfEC,
                        title: "CPF",
                        hint: "000.000.000-00",
                        keyBoardType: TextInputType.number,
                        validator: Validatorless.multiple([
                          Validatorless.cpf("CPF Inválido"),
                          Validatorless.required("Informe o CPF"),
                          Validatorless.number("Digite somente números"),
                        ]),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Center(
                        child: MyButton(
                      text: "Continuar",
                      onPressed: valida,
                    )),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void valida() {
    final validForm = _formKey.currentState?.validate() ?? false;
    if (validForm) {
      log("CPF válido");
      Get.bottomSheet(const BottomSheetLogin(), isScrollControlled: true);
    } else {
      log("CPF Inválido");
    }
  }
}
