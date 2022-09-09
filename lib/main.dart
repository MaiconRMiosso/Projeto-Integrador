import 'package:flutter/material.dart';
import 'package:oi/localizacaoAluno.dart';
import 'package:oi/cadastroAluno.dart';
import 'package:oi/cadastroDeMensagem.dart';
import 'package:oi/home.dart';
import 'package:oi/homeAluno.dart';
import 'package:oi/listaAluno.dart';
import 'package:oi/listaEmbarques.dart';
import 'package:oi/listaNotificacaoAluno.dart';
import 'package:oi/notificacaoAluno.dart';
import 'cadastroTransporte.dart';
import 'login.dart';
import 'cadastroTransporte.dart';

void main() {
  runApp(MaterialApp(
    home: listaNotificacaoAluno(), //trocar aqui conforme os componentes que querem usar
    debugShowCheckedModeBanner: false,
  ));
}
