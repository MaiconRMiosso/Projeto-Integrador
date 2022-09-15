import 'package:flutter/material.dart';
import 'package:oi/homeAluno.dart';
import 'package:oi/homeMotorista.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  TextEditingController? textController1;
  TextEditingController? textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }


  void _abrirHomeAluno() {
  Navigator.push(
    context, MaterialPageRoute(builder: (context)=> HomeAluno()));
}

  void _abrirHomeMotorista() {
  Navigator.push(
    context, MaterialPageRoute(builder: (context)=> HomeMotorista()));
}


  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                      child: Text(
                        'e',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 36,
                        ),
                      ),
                    ),
                    Text(
                      'Port',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF8A82E2),
                        fontSize: 36,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                    child: Text(
                      'seu destino te aguarda',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFFB9BECC),
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 140, 20, 0),
                child: TextFormField(
                  controller: textController1,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x22000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x22000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    contentPadding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
                child: TextFormField(
                  controller: textController2,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Senha',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x22000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x22000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    contentPadding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                    child: Text(
                      'confirme o cadastro com seu motorista',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
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
                    padding: EdgeInsetsDirectional.fromSTEB(20, 15, 0, 0),
                    child: FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text("Salvar"),
                      onPressed: () {_abrirHomeMotorista();},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

