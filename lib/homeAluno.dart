import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:oi/listaNotificacaoAluno.dart';
import 'package:oi/localizacaoAluno.dart';
import 'package:oi/login.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:dotted_border/dotted_border.dart';

class homeAluno extends StatefulWidget {
  const homeAluno({Key? key}) : super(key: key);

  @override
  State<homeAluno> createState() => _homeAlunoState();
}

class _homeAlunoState extends State<homeAluno> {
  
  void _voltaLogin() {
  Navigator.push(
    context, MaterialPageRoute(builder: (context)=> login()));
}
  void _localizacaoAluno() {
  Navigator.push(
    context, MaterialPageRoute(builder: (context)=> localizacaoAluno()));
}

  void _listaAviso() {
  Navigator.push(
    context, MaterialPageRoute(builder: (context)=> listaNotificacaoAluno()));
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
            onPressed: () {_voltaLogin();},
            icon: Icon(Icons.logout),
            color: Color(0xFF707585),
          ),
          IconButton(
            onPressed: () {_listaAviso();},
            icon: Icon(Icons.notifications),
            color: Color(0xFF707585),
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
                                EdgeInsetsDirectional.fromSTEB(150, 360, 0, 0),
                            child: DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(200),
                              padding: EdgeInsets.all(6),
                              color: Color(0xFF8A82E2),
                              child: Container(
                                height: 170,
                                width: 170,
                                color: Colors.transparent,
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
               Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  //título ePort
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 50, 0, 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
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
                    padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                    child: Text(
                      'seu destino te aguarda aluno',
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
                //botões menu/ gps e o icon
                padding: EdgeInsetsDirectional.fromSTEB(40, 30, 0, 0),
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
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FlatButton(
                                      textColor: Colors.white,
                                      child: Text("Menu"),
                                      onPressed: () {},
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(30.0))),
                                  FlatButton(
                                    textColor: Colors.white,
                                    child: Text("GPS"),
                                    onPressed: () {_localizacaoAluno();},
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Container(
                                height: 55,
                                decoration: BoxDecoration(
                                  color: Color(0xFF8A82E2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.fingerprint),
                                  color: Colors.white,
                                  iconSize: 40,
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
              Padding(
                //box que está os botões de vou e volto
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 140, 0),
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
                        padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                        child: ElevatedButton(
                            child: Text(
                              "VOU",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF8A82E2),
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xFFEEF0F6),
                              ),
                              minimumSize:
                                  MaterialStateProperty.all(Size(120, 50)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Color(0xFF8A82E2))),
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: ElevatedButton(
                            child: Text(
                              "VOLTO",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF8A82E2),
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xFFEEF0F6),
                              ),
                              minimumSize:
                                  MaterialStateProperty.all(Size(120, 50)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Color(0xFF8A82E2))),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                //box fo dia e data de "hj"
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: 300,
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
                                EdgeInsetsDirectional.fromSTEB(40, 10, 0, 0),
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
                                EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
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
          ), ]
        ),
      ),
    ), );
  }
}
