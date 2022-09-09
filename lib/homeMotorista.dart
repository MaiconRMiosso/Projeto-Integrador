import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:oi/listaAluno.dart';

class HomeMotorista extends StatefulWidget {
  const HomeMotorista({Key? key}) : super(key: key);

  @override
  State<HomeMotorista> createState() => _HomeMotorista();
}

class _HomeMotorista extends State<HomeMotorista> {
  bool isSwitched = false;

  void _listaAluno() {
  Navigator.push(context, MaterialPageRoute(builder: (context)=> listaAluno()));
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF0F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFEEF0F6),
        title: Text(
          'Nome do usuário',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Color(0xFF707585),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.account_circle,
            color: Color(0xFF707585),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout),
            color: Color(0xFF707585),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Color(0xFF707585),
          ),
        ],
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  //título ePort
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 55, 0),
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
                padding: EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      child: ElevatedButton(
                                          child: Text(
                                            "Menu",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          onPressed: null,
                                          style: ButtonStyle(
                                            elevation: null,
                                            shadowColor: null,
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              Color(0xFF8A82E2),
                                            ),
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  side: BorderSide(
                                                      color:
                                                          Color(0xFFFFFFFF))),
                                            ),
                                          ))),
                                  Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      child: ElevatedButton(
                                          child: Text(
                                            "Alunos",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          onPressed: () {_listaAluno;},
                                          style: ButtonStyle(
                                            elevation:
                                                MaterialStateProperty.all(0),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              Color(0xFF8A82E2),
                                            ),
                                          ))),
                                  Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      child: ElevatedButton(
                                          child: Text(
                                            "Transportes",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            elevation:
                                                MaterialStateProperty.all(0),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              Color(0xFF8A82E2),
                                            ),
                                          ))),
                                  Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      child: ElevatedButton(
                                          child: Text(
                                            "Avisos",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            elevation:
                                                MaterialStateProperty.all(0),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              Color(0xFF8A82E2),
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
                      //box que está os botões de vou e volto
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 20, 0),
                      child: Container(
                        width: 170,
                        height: 200,
                        decoration: BoxDecoration(
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(6, 35, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Container(
                                      height: 55,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF8A82E2),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.rotate_left),
                                        color: Colors.white,
                                        iconSize: 40,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(6, 30, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
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
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
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
                      padding: EdgeInsetsDirectional.fromSTEB(30, 20, 0, 0),
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
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
                                            borderRadius: BorderRadius.all(
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: Container(
                                            child: Text(
                                              'Vão',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF707585),
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
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
                                            borderRadius: BorderRadius.all(
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: Container(
                                            child: Text(
                                              'Voltam',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF707585),
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
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
                                            borderRadius: BorderRadius.all(
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: Container(
                                            child: Text(
                                              'Faltam',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF707585),
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                child: Container(
                  width: 345,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xffeef0f6),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 50,
                        color: Color(0xffcaccd1),
                        offset: Offset(
                          22,
                          22,
                        ),
                      ),
                      BoxShadow(
                        blurRadius: 50,
                        color: Color(0xffffffff),
                        offset: Offset(
                          -22,
                          -22,
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(80, 25, 0, 0),
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(80, 0, 0, 0),
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(7, 20, 0, 0),
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
      ),
    );
  }
}
