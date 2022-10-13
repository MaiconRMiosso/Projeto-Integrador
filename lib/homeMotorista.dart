import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:oi/cadastrodemensagem.dart';
import 'package:oi/listaAluno.dart';
import 'package:oi/listaEmbarque.dart';
import 'package:oi/listaNotificacaoAluno.dart';
import 'package:oi/listaTransporte.dart';

class homeMotorista extends StatefulWidget {
  const homeMotorista({Key? key}) : super(key: key);

  @override
  State<homeMotorista> createState() => _homeMotorista();
}

class _homeMotorista extends State<homeMotorista> {
  bool isSwitched = false;

  void _listaAluno() {
  Navigator.push(context, MaterialPageRoute(builder: (context)=> listaAluno()));}

  void _listaEmbarques() {
  Navigator.push(context, MaterialPageRoute(builder: (context)=> listaEmbarque()));
}

  void _listaTransporte() {
  Navigator.push(context, MaterialPageRoute(builder: (context)=> listaTransporte()));
}

  void _cadastroDeMensagem() {
  Navigator.push(context, MaterialPageRoute(builder: (context)=> cadastroDeMensagem()));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF0F6),
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Color(0xFFEEF0F6),
        title: Text(
          'Pedro Lucas Trentin Agostini',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xFFB9BECC),
          ),
        ),
        leading: IconButton(
          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
          onPressed: () {},
          icon: Icon(
            Icons.account_circle,
            size: 45,
            color: Color(0xFF707585),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 14, 20, 14),
            child: Container(
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Color(0xffeef0f6),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color(0xffcaccd1),
                    offset: Offset(1, 1),
                  ),
                  BoxShadow(
                    blurRadius: 5,
                    color: Color(0xffffffff),
                    offset: Offset(-1, -1),
                  ),
                ],
                gradient: null,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.logout),
                color: Color(0xFF707585),
                iconSize: 20,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(children: <Widget>[
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 220, 0, 0),
                            child: DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(200),
                              padding: EdgeInsets.all(6),
                              color: Color(0xFF8A82E2),
                              child: Container(
                                height: 310,
                                width: 110,
                                color: Colors.transparent,
                              ),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(260, 10, 0, 0),
                            child: DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(200),
                              padding: EdgeInsets.all(6),
                              color: Color(0xFF8A82E2),
                              child: Container(
                                height: 110,
                                width: 110,
                                color: Colors.transparent,
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        //título ePort
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 7, 0, 0),
                                  child: Text(
                                    'e',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF707585),
                                      fontSize: 36,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    child: Text(
                                      'Port',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF8A82E2),
                                        fontSize: 45,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      //subtítulo
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Text(
                            'seu destino te aguarda motorista',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF707585),
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      //botões menu
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: SingleChildScrollView(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height: 55,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF8A82E2),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 40,
                                          color: Color(0xffcaccd1),
                                          offset: Offset(15, 15),
                                        ),
                                        BoxShadow(
                                          blurRadius: 40,
                                          color: Color(0xffffffff),
                                          offset: Offset(-10, -10),
                                        ),
                                      ],
                                      gradient: null,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          20,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      // mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 0),
                                            child: ElevatedButton(
                                                child: Text(
                                                  "Menu",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                onPressed: () {_listaEmbarques();},
                                                style: ButtonStyle(
                                                  elevation:
                                                      MaterialStateProperty.all(
                                                          0),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    Color(0xFF8A82E2),
                                                  ),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        side: BorderSide(
                                                            color: Color(
                                                                0xFFFFFFFF))),
                                                  ),
                                                ))),
                                        Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 0),
                                            child: ElevatedButton(
                                                child: Text(
                                                  "Alunos",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                                onPressed: () {_listaAluno();},
                                                style: ButtonStyle(
                                                  elevation:
                                                      MaterialStateProperty.all(
                                                          0),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    Color(0xFF8A82E2),
                                                  ),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                ))),
                                        Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 0),
                                            child: ElevatedButton(
                                                child: Text(
                                                  "Transportes",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                                onPressed: () {_listaTransporte();},
                                                style: ButtonStyle(
                                                  elevation:
                                                      MaterialStateProperty.all(
                                                          0),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    Color(0xFF8A82E2),
                                                  ),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                ))),
                                        Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 0),
                                            child: ElevatedButton(
                                                child: Text(
                                                  "Avisos",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                                onPressed: () {_cadastroDeMensagem();},
                                                style: ButtonStyle(
                                                  elevation:
                                                      MaterialStateProperty.all(
                                                          0),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    Color(0xFF8A82E2),
                                                  ),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                ))),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      //limpar e localização
                      padding: EdgeInsetsDirectional.fromSTEB(20, 40, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            //box que está os botões de limpar e localização
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 20, 0),
                            child: Container(
                              width: 170,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Color(0xffeef0f6),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 15,
                                    color: Color(0xffcaccd1),
                                    offset: Offset(
                                      5,
                                      5,
                                    ),
                                  ),
                                  BoxShadow(
                                    blurRadius: 15,
                                    color: Color(0xffffffff),
                                    offset: Offset(
                                      -5,
                                      -5,
                                    ),
                                  ),
                                ],
                                gradient: null,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        6, 35, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: Container(
                                            height: 55,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF8A82E2),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.rotate_left),
                                              color: Colors.white,
                                              iconSize: 40,
                                              hoverColor: Color(0xFF00000),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Limpar",
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF707585),
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                              Text(
                                                "Embarques",
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF707585),
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        6, 30, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: Container(
                                            child: FlutterSwitch(
                                              width: 55.0,
                                              height: 25.0,
                                              toggleSize: 20.0,
                                              borderRadius: 30.0,
                                              value: isSwitched,
                                              onToggle: (value) {
                                                setState(() {
                                                  isSwitched = value;
                                                });
                                              },
                                              activeColor: Color(0xFF8A82E2),
                                              inactiveColor: Color(0xffcaccd1),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Localização",
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF707585),
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(30, 20, 0, 0),
                            child: Container(
                              //lado direito
                              width: 150,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          width: 120,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            border: Border(
                                              top: BorderSide(
                                                  color: Color(0xFF8A82E2)),
                                              bottom: BorderSide(
                                                  color: Color(0xFF8A82E2)),
                                              right: BorderSide(
                                                  color: Color(0xFF8A82E2)),
                                              left: BorderSide(
                                                  color: Color(0xFF8A82E2)),
                                            ),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 55,
                                                height: 55,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(20),
                                                  ),
                                                  color: Color(0xffeef0f6),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 20,
                                                      color: Color(0xffcaccd1),
                                                      offset: Offset(10, 10),
                                                    ),
                                                    BoxShadow(
                                                      blurRadius: 20,
                                                      color: Color(0xffffffff),
                                                      offset: Offset(-10, -10),
                                                    ),
                                                  ],
                                                  gradient: null,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: Container(
                                                  child: Text(
                                                    'Vão',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF707585),
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 20, 0, 0),
                                          child: Container(
                                            child: Text(
                                              '25',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF707585),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 15, 0, 0),
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          width: 120,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            border: Border(
                                              top: BorderSide(
                                                  color: Color(0xFF8A82E2)),
                                              bottom: BorderSide(
                                                  color: Color(0xFF8A82E2)),
                                              right: BorderSide(
                                                  color: Color(0xFF8A82E2)),
                                              left: BorderSide(
                                                  color: Color(0xFF8A82E2)),
                                            ),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 55,
                                                height: 55,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(20),
                                                  ),
                                                  color: Color(0xffeef0f6),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 20,
                                                      color: Color(0xffcaccd1),
                                                      offset: Offset(10, 10),
                                                    ),
                                                    BoxShadow(
                                                      blurRadius: 20,
                                                      color: Color(0xffffffff),
                                                      offset: Offset(-10, -10),
                                                    ),
                                                  ],
                                                  gradient: null,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: Container(
                                                  child: Text(
                                                    'Voltam',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF707585),
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 20, 0, 0),
                                          child: Container(
                                            child: Text(
                                              '15',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF707585),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 15, 0, 0),
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          width: 120,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            border: Border(
                                              top: BorderSide(
                                                  color: Color(0xFF8A82E2)),
                                              bottom: BorderSide(
                                                  color: Color(0xFF8A82E2)),
                                              right: BorderSide(
                                                  color: Color(0xFF8A82E2)),
                                              left: BorderSide(
                                                  color: Color(0xFF8A82E2)),
                                            ),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 55,
                                                height: 55,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(20),
                                                  ),
                                                  color: Color(0xffeef0f6),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 20,
                                                      color: Color(0xffcaccd1),
                                                      offset: Offset(10, 10),
                                                    ),
                                                    BoxShadow(
                                                      blurRadius: 20,
                                                      color: Color(0xffffffff),
                                                      offset: Offset(-10, -10),
                                                    ),
                                                  ],
                                                  gradient: null,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: Container(
                                                  child: Text(
                                                    'Faltam',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF707585),
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 20, 0, 0),
                                          child: Container(
                                            child: Text(
                                              '5',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF707585),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      //box fo dia e data de "hj"
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Container(
                        width: 345,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Color(0xffeef0f6),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 15,
                              color: Color(0xffcaccd1),
                              offset: Offset(
                                5,
                                5,
                              ),
                            ),
                            BoxShadow(
                              blurRadius: 15,
                              color: Color(0xffffffff),
                              offset: Offset(
                                -5,
                                -5,
                              ),
                            ),
                          ],
                          gradient: null,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      80, 25, 0, 0),
                                  child: Text(
                                    'Hoje',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF9096A5),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      80, 0, 0, 0),
                                  child: Text(
                                    '08/08',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF8A82E2),
                                      fontSize: 50,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      7, 20, 0, 0),
                                  child: Text(
                                    '2022',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF9096A5),
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ])),
      ),
    );
  }
}

