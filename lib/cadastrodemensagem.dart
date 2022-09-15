import 'package:flutter/material.dart';

class cadastroDeMensagem extends StatefulWidget {
  const cadastroDeMensagem({Key? key}) : super(key: key);

  @override
  State<cadastroDeMensagem> createState() => _cadastroDeMensagemState();
}

class _cadastroDeMensagemState extends State<cadastroDeMensagem> {
  TextEditingController? textController1;
  TextEditingController? textController2;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
        ],
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                child: Column(
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
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 250, 0),
                                child: Text(
                                  'Cadastro',
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
                            Align(
                              child: IconButton(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                icon: Icon(
                                  Icons.edit,
                                  size: 15,
                                ),
                              ),
                            ),
                            Align(
                              child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      25, 0, 0, 0),
                                  child: IconButton(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      size: 15,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Text(
                        'de mensagens',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFFB9BECC),
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
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
                                    onPressed: () {},
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
                      // imput do titulo
                      padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
                      child: TextFormField(
                        controller: textController1,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Título',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(0, 186, 51, 51),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Container(
                        width: 250,
                        height: 250,
                        decoration:
                            BoxDecoration(), // colorir o box da mensagem
                        child: TextFormField(
                          controller: textController2,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Mensagem',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      // arruma o botão de salvar
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 15, 0, 0),
                          child: FlatButton(
                            color: Colors.blue,
                            textColor: Colors.white,
                            child: Text("Salvar"),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
