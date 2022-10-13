
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class notificacaoAluno extends StatefulWidget {
  const notificacaoAluno({Key? key}) : super(key: key);

  @override
  State<notificacaoAluno> createState() => _notificacaoAlunoState();
}

class _notificacaoAlunoState extends State<notificacaoAluno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                            child: Text(
                              'N',
                              style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF707585),
                                    fontSize: 36,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 55, 0),
                              child: Text(
                                'otificações',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF8A82E2),
                                      fontSize: 36,
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
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                    child: Text(
                      'fique ligado',
                      style: TextStyle(
                            fontFamily: 'Poppins',
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
                    padding: EdgeInsetsDirectional.fromSTEB(30, 80, 0, 0),
                    child: Container(
                      width: 300,
                      height: 55,
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
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                        child: Text(
                          'Mudança de veículo',
                        ),
                      ),
                      ),
                     ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 30, 0, 0),
                    child: Container(
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
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                        child: Text(
                          'Mensagem',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
            ],
        ),
      ),
    ), );
  }
}
