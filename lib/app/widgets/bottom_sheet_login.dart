import 'package:check_my_credito/app/ui/my_colors.dart';
import 'package:check_my_credito/app/widgets/bottom_sheet_forgot.dart';
import 'package:check_my_credito/app/widgets/my_button.dart';
import 'package:check_my_credito/app/widgets/my_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

import '../screens/home_screen.dart';

class BottomSheetLogin extends StatefulWidget {
  const BottomSheetLogin({Key? key}) : super(key: key);

  @override
  State<BottomSheetLogin> createState() => _BottomSheetLoginState();
}

class _BottomSheetLoginState extends State<BottomSheetLogin> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          decoration: BoxDecoration(
              color: MyColors.secondary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child: Text("Que bom te ver novamente", style: TextStyle(fontSize: 22, color: MyColors.primary, fontWeight: FontWeight.bold))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Expanded(
                    child: Text(
                      "Notamos que voce pussui um cadastro, faca seu login abaixo!",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    MyTextField(
                      title: "CPF",
                      borderColor: Colors.grey,
                      hintColor: Colors.grey,
                      hint: "Digite sem tracos ou pontos",
                      titleColor: MyColors.primary,
                      fontColor: Colors.grey,
                      obscure: false,
                      keyBoardType: TextInputType.number,
                      validator: Validatorless.multiple([
                        Validatorless.cpf("CPF inválido"),
                        Validatorless.required("Este campo é obrigatório"),
                        Validatorless.number("Somente números são aceitos"),
                      ]),
                    ),
                    const SizedBox(height: 12),
                    MyTextField(
                      title: "Senha",
                      borderColor: Colors.grey,
                      hintColor: Colors.grey,
                      hint: "Digite aqui",
                      titleColor: MyColors.primary,
                      fontColor: Colors.grey,
                      obscure: true,
                      validator: Validatorless.required("Campo obrigatório"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              MyButton(
                  onPressed: () {
                    validateLogin();
                  },
                  text: "Login",
                  bgColor: MyColors.tertiary,
                  textColor: MyColors.secondary),
              const SizedBox(height: 40),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    const TextSpan(
                        text: "Esqueceu a senha? ",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                        )),
                    TextSpan(
                      text: "Recupere aqui",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.back();
                          Get.bottomSheet(const BottomSheetForgot(), isScrollControlled: true);
                        },
                      style: TextStyle(
                        color: MyColors.tertiary,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }

  validateLogin() {
    final validForm = _formKey.currentState!.validate();
    if (validForm) {
      Get.back();
      Get.off(const HomeScreen());
    } else {}
  }
}
