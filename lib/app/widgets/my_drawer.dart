import 'package:check_my_credito/app/screens/help_screen.dart';
import 'package:check_my_credito/app/screens/positive_record_screen.dart';
import 'package:check_my_credito/app/screens/my_account_screen.dart';
import 'package:check_my_credito/app/screens/close_account_screen.dart';
import 'package:check_my_credito/app/screens/home_screen.dart';
import 'package:check_my_credito/app/screens/privacy_screen.dart';
import 'package:check_my_credito/app/screens/terms_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(height: 20),
          Image.asset("assets/images/logo.png", scale: 1.2),
          ListTile(
            dense: true,
            title: const Text('Home', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54)),
            onTap: () => Get.off(const HomeScreen()),
          ),
          ListTile(
            dense: true,
            title: const Text('Dados Cadastrais', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54)),
            onTap: () => Get.off(const MyAccountScreen()),
          ),
          ListTile(
            dense: true,
            title: const Text('Cadastro Positivo', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54)),
            onTap: () => Get.off(const PositiveRecordScreen()),
          ),
          ListTile(
            dense: true,
            title: const Text('Encerrar Conta', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54)),
            onTap: () => Get.off(const CloseAccountScreen()),
          ),
          ListTile(
            dense: true,
            title: const Text('Preciso de Ajuda', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54)),
            onTap: () => Get.off(const HelpScreen()),
          ),
          ListTile(
            dense: true,
            title: const Text('Termos de Uso e Políticas do App', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54)),
            onTap: () => Get.off(const TermosScreen()),
          ),
          ListTile(
            dense: true,
            title: const Text('Privacidade', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54)),
            onTap: () =>Get.off(const PrivacyScreen()),
          ),
          ListTile(
            dense: true,
            title: const Text('Sair', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
