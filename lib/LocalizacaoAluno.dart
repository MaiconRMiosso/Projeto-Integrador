import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_border/dotted_border.dart';

class localizacaoAluno extends StatefulWidget {
  const localizacaoAluno({Key? key}) : super(key: key);

  @override
  State<localizacaoAluno> createState() => _localizacaoAlunoState();
}

class _localizacaoAlunoState extends State<localizacaoAluno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF0F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFEEF0F6),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_circle_left,
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
            child: Stack(children: <Widget>[
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        
                            Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(200, 450, 0, 0),
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
                              'L',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF707585),
                                fontSize: 45,
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
                                'ocalização',
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
                      'Não se perca ',
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
                                borderRadius: BorderRadius.circular(20),
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
                                    onPressed: () {},
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: Container(
                  // container para a localização
                  width: 300,
                  height: 250,
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
                ),
              ),
            ],
          ),
            ]
        ),
      ),),
    );
  }
}
