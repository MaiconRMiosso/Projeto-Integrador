import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oi/LocalizacaoAluno.dart';
import 'package:oi/cadastroAluno.dart';
import 'package:oi/cadastrodemensagem.dart';
import 'package:oi/homeAluno.dart';
import 'package:oi/homeMotorista.dart';
import 'package:oi/homeAluno.dart';
import 'package:oi/listaNotificacaoAluno.dart';
import 'package:oi/listaaluno.dart';
import 'package:oi/listaembarques.dart';
import 'package:oi/notificacaoAluno.dart';
import 'cadastroTransporte.dart';
import 'login.dart';
import 'cadastroTransporte.dart';

void main() {
  runApp(MaterialApp(

    home: HomeMotorista(), //trocar aqui conforme os componentes que querem usar

    debugShowCheckedModeBanner: false,
  ));
}
