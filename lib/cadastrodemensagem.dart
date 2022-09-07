import 'package:flutter/material.dart';

class cadastrodemensagens extends StatefulWidget {
  const cadastrodemensagens({Key? key}) : super(key: key);

  @override
  State<cadastrodemensagens> createState() => _cadastrodemensagensState();
}

class _cadastrodemensagensState extends State<cadastrodemensagens> {
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
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 400, 0),
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
                      padding: EdgeInsetsDirectional.fromSTEB(80, 30, 0, 0),
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
