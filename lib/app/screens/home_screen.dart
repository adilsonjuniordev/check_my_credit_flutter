import 'package:check_my_credito/app/screens/score_screen.dart';
import 'package:check_my_credito/app/ui/my_colors.dart';
import 'package:check_my_credito/app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/my_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(color: MyColors.primary, fontWeight: FontWeight.bold)),
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
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset("assets/images/gauge_2.png"),
                    ),
                    const SizedBox(height: 10),
                    const Text("O seu nome está limpo no Check My Crédito!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 2, color: MyColors.primary),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          ),
                          child: Text("Entenda seu Score", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: MyColors.primary)),
                          onPressed: () {
                            Get.to(const ScoreScreen());
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text("Benefícios para você!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const MyCard(
                      image: "assets/images/emprestimos.png",
                      title: "Empréstimos",
                      description: "Simule um empréstimo e resolva suas pendências",
                    ),
                    const SizedBox(height: 8),
                    const MyCard(
                      image: "assets/images/cartoes.png",
                      title: "Cartões",
                      description: "Facilite sua vida! Solicite\nseu cartão de crédito",
                    ),
                    const SizedBox(height: 8),
                    const MyCard(
                      image: "assets/images/conta_digital.png",
                      title: "Conta digital",
                      description: "Abra uma conta digital com benefícios exclusivos",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
