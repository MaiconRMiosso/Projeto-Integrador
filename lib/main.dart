import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oi/cadastrodemensagem.dart';
import 'package:oi/listaTransporte.dart';
import 'package:oi/localizacaoAluno.dart';
import 'package:oi/cadastroAluno.dart';
import 'package:oi/homeAluno.dart';
import 'package:oi/homeMotorista.dart';
import 'package:oi/listaNotificacaoAluno.dart';
import 'package:oi/listaAluno.dart';
import 'package:oi/listaEmbarque.dart';
import 'package:oi/notificacaoAluno.dart';
import 'package:oi/cadastroTransporte.dart';
import 'package:oi/login.dart';



void main() {
  runApp(MaterialApp(


     home: CadastroAluno(), //trocar aqui conforme os componentes que querem usar


    debugShowCheckedModeBanner: false,
  ));
}
