import 'package:check_my_credito/app/ui/my_colors.dart';
import 'package:check_my_credito/app/widgets/my_button.dart';
import 'package:check_my_credito/app/widgets/my_drawer.dart';
import 'package:check_my_credito/app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  bool isSwitched = true;
  String? _selectedItem = '';
  final _itemsDropDown = ['Selecione', 'Crédito', 'Conta', 'Sugestão', 'Reclamação', 'Elogio'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preciso de ajuda', style: TextStyle(color: MyColors.primary, fontWeight: FontWeight.bold)),
        iconTheme: const IconThemeData(color: Colors.grey, size: 32),
        centerTitle: true,
        backgroundColor: MyColors.secondary,
        elevation: 0,
      ),
      endDrawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.85,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Text("Entre em contato conosco, adoraríamos te ouvir e melhorar ainda mais nosso app",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: MyColors.primary))),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: InputDecorator(
                            decoration: const InputDecoration(isDense: true, border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                isDense: true,
                                isExpanded: true,
                                borderRadius: BorderRadius.circular(10),
                                value: _itemsDropDown.first,
                                items: _itemsDropDown.map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (String? novoItemSelecionado) {
                                  _dropDownItemSelected(novoItemSelecionado);
                                  setState(() {
                                    //_itemSelecionado = novoItemSelecionado ?? "";
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    MyTextField(
                      title: "Mensagem",
                      borderColor: Colors.grey,
                      hintColor: Colors.grey,
                      hint: "Digite aqui",
                      fontColor: Colors.black,
                      maxLines: 6,
                      titleColor: MyColors.primary,
                      validator: Validatorless.required("Campo obrigatório"),
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: MyButton(
                        onPressed: () {},
                        text: "Enviar",
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

  void _dropDownItemSelected(String? newItem) {
    setState(() {
      _selectedItem = newItem ?? "";
    });
  }
}
