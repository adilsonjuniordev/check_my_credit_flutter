import 'package:check_my_credito/app/ui/my_colors.dart';
import 'package:check_my_credito/app/widgets/my_button.dart';
import 'package:check_my_credito/app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetRegister extends StatefulWidget {
  const BottomSheetRegister({Key? key}) : super(key: key);

  @override
  State<BottomSheetRegister> createState() => _BottomSheetRegisterState();
}

class _BottomSheetRegisterState extends State<BottomSheetRegister> {
  bool isChecked = false;

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
                  Expanded(child: Text("Preencha mais alguns campos para seguir!", style: TextStyle(fontSize: 22, color: MyColors.primary, fontWeight: FontWeight.bold))),
                ],
              ),
              const SizedBox(height: 20),
              MyTextField(
                title: "Nome Completo",
                borderColor: Colors.grey,
                hintColor: Colors.grey,
                hint: "Digite aqui",
                titleColor: MyColors.primary,
                fontColor: Colors.grey,
                obscure: false,
              ),
              const SizedBox(height: 12),
              MyTextField(
                title: "E-mail",
                borderColor: Colors.grey,
                hintColor: Colors.grey,
                hint: "Ex.: seunome@mail.com.br",
                titleColor: MyColors.primary,
                fontColor: Colors.grey,
                obscure: false,
              ),
              const SizedBox(height: 20),
              MyTextField(
                title: "Senha",
                borderColor: Colors.grey,
                hintColor: Colors.grey,
                hint: "Digite aqui",
                titleColor: MyColors.primary,
                fontColor: Colors.grey,
                obscure: true,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(
                            text: "Estou de acordo com o ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                          TextSpan(
                            text: "Termo de uso ",
                            style: TextStyle(
                              color: MyColors.tertiary,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const TextSpan(
                            text: "e a ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                          TextSpan(
                            text: "Política de Privacidade ",
                            style: TextStyle(
                              color: MyColors.tertiary,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const TextSpan(
                            text: "do Check My Crédito",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              MyButton(
                  onPressed: () {
                    Get.back();
                  },
                  text: "Consultar meu CPF",
                  bgColor: MyColors.tertiary,
                  textColor: MyColors.secondary),
            ],
          )),
    );
  }
}
