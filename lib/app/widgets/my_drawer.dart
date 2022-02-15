import 'package:check_my_credito/app/screens/ajuda.dart';
import 'package:check_my_credito/app/screens/cadastro_positivo.dart';
import 'package:check_my_credito/app/screens/dados.dart';
import 'package:check_my_credito/app/screens/encerrar_conta.dart';
import 'package:check_my_credito/app/screens/home.dart';
import 'package:check_my_credito/app/screens/privacidade.dart';
import 'package:check_my_credito/app/screens/termos.dart';
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
            onTap: () {
              Get.off(const Home());
            },
          ),
          ListTile(
            dense: true,
            title: const Text('Dados Cadastrais', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54)),
            onTap: () {
              Get.off(const Dados());
            },
          ),
          ListTile(
            dense: true,
            title: const Text('Cadastro Positivo', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54)),
            onTap: () {
              Get.off(const CadastroPositivo());
            },
          ),
          ListTile(
            dense: true,
            title: const Text('Encerrar Conta', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54)),
            onTap: () {
              Get.off(const EncerrarConta());
            },
          ),
          ListTile(
            dense: true,
            title: const Text('Preciso de Ajuda', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54)),
            onTap: () {
              Get.off(const Ajuda());
            },
          ),
          ListTile(
            dense: true,
            title: const Text('Termos de Uso e Políticas do App', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54)),
            onTap: () {
              Get.off(const Termos());
            },
          ),
          ListTile(
            dense: true,
            title: const Text('Privacidade', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54)),
            onTap: () {
              Get.off(const Privacidade());
            },
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
