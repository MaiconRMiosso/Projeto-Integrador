import 'package:flutter/material.dart';
import 'package:oi/LocalizacaoAluno.dart';
import 'package:oi/home.dart';
import 'package:oi/homeAluno.dart';
import 'cadastroTransporte.dart';
import 'login.dart';
import 'cadastroTransporte.dart';

void main() {
  runApp(MaterialApp(
    home: HomeAluno(), //trocar aqui conforme os componentes que querem usar
    debugShowCheckedModeBanner: false,
  ));
}
