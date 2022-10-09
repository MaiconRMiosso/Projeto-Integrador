import 'package:flutter/material.dart';
import 'package:oi/homeAluno.dart';
import 'package:oi/homeMotorista.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:firebase_auth/firebase_auth.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  
  final scaffoldKey = GlobalKey<ScaffoldState>(); //nao tem no do professor

  _validaCampo() {
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;

    if (email.isNotEmpty && email.contains("@")) {
      if (senha.isNotEmpty && senha.length >= 6) {
        FirebaseAuth auth = FirebaseAuth.instance;
        auth
            .signInWithEmailAndPassword(email: email, password: senha)
            .then((value) => {
                  print("${value.toString()}"),
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const homeAluno()),
                      (route) => false)
                });
      }
    }
  }

  _verificaUsuarioLogado() {
    User? usuarioLogado = FirebaseAuth.instance.currentUser;
    if (usuarioLogado != null) {
      setState(() {
        /*Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));*/
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const homeAluno()),
            (route) => false);
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _verificaUsuarioLogado();
  }

  void _abrirHomeAluno() {
  Navigator.push(
    context, MaterialPageRoute(builder: (context)=> homeAluno()));
}

  void _abrirHomeMotorista() {
  Navigator.push(
    context, MaterialPageRoute(builder: (context)=> homeMotorista()));
}

  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
                                EdgeInsetsDirectional.fromSTEB(100, 0, 0, 200),
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
                            Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
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
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
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
                            Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(30, 290, 0, 0),
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
              Padding(
                            //box que está os botões de limpar e localização
                            padding:
                                EdgeInsetsDirectional.fromSTEB(25, 150, 0, 0),
                            child: Container(
                              width: 340,
                              height: 400,
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 00, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),
                      child: Text(
                        'e',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 64,
                        ),
                      ),
                    ),
                    Text(
                      'Port',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF8A82E2),
                        fontSize: 64,
                      ),
                    ),
                  ],
                ),
              ),
             
                                      ],
                                    ),
                                  ),

                                  Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                child: TextFormField(
                  controller: _controllerEmail,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x22000000),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x22000000),
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
                padding: EdgeInsetsDirectional.fromSTEB(20, 35, 20, 0),
                child: TextFormField(
                  controller: _controllerSenha,
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
                        color: Color(0xFF707585),
                        fontSize: 14,
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
                        padding: EdgeInsetsDirectional.fromSTEB(120, 35, 0, 0),
                        child: ElevatedButton(
                            child: Text(
                              "Entrar",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  color: Colors.white ,
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {_validaCampo();},
                            style: ButtonStyle(
                              
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xFF8A82E2),
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
                                ],
                              ),
                            ),
                          ),
            ],
          ),
        ),
      ],
      ),
    ),),);
  }
}

