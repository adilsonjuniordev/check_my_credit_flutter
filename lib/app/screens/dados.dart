import 'package:check_my_credito/app/ui/my_colors.dart';
import 'package:check_my_credito/app/widgets/my_button.dart';
import 'package:check_my_credito/app/widgets/my_drawer.dart';
import 'package:check_my_credito/app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class Dados extends StatelessWidget {
  const Dados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados Cadastrais', style: TextStyle(color: MyColors.primary, fontWeight: FontWeight.bold)),
        iconTheme: const IconThemeData(color: Colors.grey, size: 32),
        centerTitle: true,
        backgroundColor: MyColors.secondary,
        elevation: 0,
      ),
      endDrawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Color(0xFFF3F2F9),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    MyTextField(
                      title: "CPF",
                      hint: "000.000.000-00",
                      keyBoardType: TextInputType.number,
                      borderColor: Colors.grey,
                      hintColor: Colors.grey,
                      titleColor: MyColors.primary,
                      fontColor: Colors.black,
                      validator: Validatorless.multiple([
                        Validatorless.cpf("CPF Inválido"),
                        Validatorless.required("Campo obrigatório"),
                        Validatorless.number("Somente números é permitido"),
                      ]),
                    ),
                    const SizedBox(height: 20),
                    MyTextField(
                      title: "Nome Compelto",
                      hint: "Jhenyfer Diogo dos Santos",
                      keyBoardType: TextInputType.name,
                      borderColor: Colors.grey,
                      hintColor: Colors.grey,
                      titleColor: MyColors.primary,
                      fontColor: Colors.black,
                      validator: Validatorless.required("Campo obrigatório"),
                    ),
                    const SizedBox(height: 20),
                    MyTextField(
                      title: "E-mail",
                      hint: "jhenifer@mail.com.br",
                      keyBoardType: TextInputType.emailAddress,
                      borderColor: Colors.grey,
                      hintColor: Colors.grey,
                      titleColor: MyColors.primary,
                      fontColor: Colors.black,
                      validator: Validatorless.multiple([
                        Validatorless.required("Campo obrigatório"),
                        Validatorless.email("E-mail inválido"),
                      ]),
                    ),
                    const SizedBox(height: 20),
                    MyTextField(
                      title: "Senha",
                      hint: "Digite aqui",
                      borderColor: Colors.grey,
                      hintColor: Colors.grey,
                      titleColor: MyColors.primary,
                      fontColor: Colors.black,
                      obscure: true,
                      validator: Validatorless.multiple([
                        Validatorless.required("Campo obrigatório"),
                      ]),
                    ),
                    const SizedBox(height: 20),
                    MyTextField(
                      title: "Telefone",
                      hint: "11 00000-0000",
                      keyBoardType: TextInputType.phone,
                      borderColor: Colors.grey,
                      hintColor: Colors.grey,
                      titleColor: MyColors.primary,
                      fontColor: Colors.black,
                      validator: Validatorless.required("Campo obrigatório"),
                    ),
                    const SizedBox(height: 20),
                    MyTextField(
                      title: "Data de Nascimento",
                      hint: "00/00/0000",
                      keyBoardType: TextInputType.number,
                      borderColor: Colors.grey,
                      hintColor: Colors.grey,
                      titleColor: MyColors.primary,
                      fontColor: Colors.black,
                      validator: Validatorless.required("Campo obrigatório"),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: MyButton(
                        onPressed: () {},
                        text: "Salvar",
                        bgColor: MyColors.tertiary,
                        textColor: MyColors.secondary,
                        textSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
