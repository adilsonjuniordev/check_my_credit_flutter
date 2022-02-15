import 'package:check_my_credito/app/ui/my_colors.dart';
import 'package:check_my_credito/app/widgets/my_button.dart';
import 'package:check_my_credito/app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

class BottomSheetForgot extends StatefulWidget {
  const BottomSheetForgot({Key? key}) : super(key: key);

  @override
  State<BottomSheetForgot> createState() => _BottomSheetForgotState();
}

class _BottomSheetForgotState extends State<BottomSheetForgot> {
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
                  Expanded(child: Text("Esqueceu sua senha?", style: TextStyle(fontSize: 22, color: MyColors.primary, fontWeight: FontWeight.bold))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Expanded(
                    child: Text(
                      "Nós te ajudamos a recuperar",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Form(
                key: _formKey,
                child: MyTextField(
                  title: "Digite o e-mail cadastrado",
                  borderColor: Colors.grey,
                  hintColor: Colors.grey,
                  hint: "Digite aqui",
                  titleColor: MyColors.primary,
                  fontColor: Colors.grey,
                  obscure: false,
                  keyBoardType: TextInputType.emailAddress,
                  validator: Validatorless.multiple([
                    Validatorless.email("E-mail inválido"),
                    Validatorless.required("Este campo é obrigatório"),
                  ]),
                ),
              ),
              const SizedBox(height: 30),
              MyButton(
                  onPressed: () {
                    validaRecover();
                  },
                  text: "Recuperar",
                  bgColor: MyColors.tertiary,
                  textColor: MyColors.secondary),
              const SizedBox(height: 20),
            ],
          )),
    );
  }

  validaRecover() {
    final formValid = _formKey.currentState!.validate();
    if (formValid) {
      Get.back();
      Get.dialog(
        AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 8,
          contentPadding: const EdgeInsets.all(6),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    maxRadius: 10,
                    child: Icon(
                      Icons.close,
                      size: 16,
                      color: MyColors.secondary,
                    ),
                  ),
                )
              ]),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Image.asset("assets/images/recover_pass.png", width: 100),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Expanded(
                          child: Text(
                            "Um e-mail com uma nova senha foi enviado!",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
