import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('AppBar'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      backgroundColor: Color(0xFFEFEFEF), //fundo principal
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
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
                            //titulo
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: Text(
                              'e',
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
                                'Port',
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
                    //subtitulo
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Text(
                      'Seu destino te aguarda ',
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
                    padding: EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        //linha do menu principal
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlatButton(
                                  color: Colors.blue,
                                  textColor: Colors.white,
                                  child: Text("Menu"),
                                  onPressed: () {},
                                ),
                                FlatButton(
                                  color: Colors.blue,
                                  textColor: Colors.white,
                                  child: Text("Alunos"),
                                  onPressed: () {},
                                ),
                                FlatButton(
                                  color: Colors.blue,
                                  textColor: Colors.white,
                                  child: Text("Transporte"),
                                  onPressed: () {},
                                ),
                                FlatButton(
                                  color: Colors.blue,
                                  textColor: Colors.white,
                                  child: Text("Avisos"),
                                  onPressed: () {},
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          50, 0, 0, 0), //muda posição dos container
                      child: Container(
                        width: 150,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEF0F6),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0x64000000),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                              child: Container(
                                //container 1 (lado esquerdo)
                                width: 200,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEF0F6),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          125, 0, 0, 0),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.threesixty,
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Limpar ',
                                          ),
                                          Text(
                                            'Embarques',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              //lógica do swift, porém só pode ser integrado com back (firebase)
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                              /* child: SwitchListTile(
                  value: switchListTileValue ??= true,
                  onChanged: (newValue) =>
                      setState(() => switchListTileValue = newValue),
                  title: Text(
                    'localização',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  activeColor: Color(0x64000000),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ), */
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      //lado direito
                      width: 150,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEF0F6),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xFFEEF0F6),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Divider(
                            color: Color(0xFF8A82E2),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration:
                                      BoxDecoration(color: Color(0xFF8A82E2)),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                                child: Text(
                                  'Vão',
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Color(0xFF8A82E2),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8A82E2),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                                child: Text(
                                  'Voltam',
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Color(0xFF8A82E2),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8A82E2),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                                child: Text(
                                  'Faltam',
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Color(0xFF8A82E2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                child: Container(
                  width: 300,
                  height: 130,
                  decoration: BoxDecoration(//..
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
                        //box do final da página
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
          ),
        ),
      ),
    );
  }
}
