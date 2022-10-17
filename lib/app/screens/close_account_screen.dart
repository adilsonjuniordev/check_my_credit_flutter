import 'package:check_my_credito/app/ui/my_colors.dart';
import 'package:check_my_credito/app/widgets/my_button.dart';
import 'package:check_my_credito/app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class CloseAccountScreen extends StatefulWidget {
  const CloseAccountScreen({Key? key}) : super(key: key);

  @override
  State<CloseAccountScreen> createState() => _CloseAccountScreenState();
}

class _CloseAccountScreenState extends State<CloseAccountScreen> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Encerrar conta', style: TextStyle(color: MyColors.primary, fontWeight: FontWeight.bold)),
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
                        Expanded(child: Text("Deseja realmente encerrar sua conta? :(", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: MyColors.primary))),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Expanded(
                          child: Text("Ao encerrar a conta, você não poderá mais consultar suas informações financeiras e os dados em nosso app serão apagados.", style: TextStyle(fontSize: 16)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: MyButton(
                        onPressed: () {},
                        text: "Encerrar conta",
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
