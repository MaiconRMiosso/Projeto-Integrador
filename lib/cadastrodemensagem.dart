import 'package:dotted_border/dotted_border.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';


class cadastroDeMensagem extends StatefulWidget {
  const cadastroDeMensagem({Key? key}) : super(key: key);

  @override
  State<cadastroDeMensagem> createState() => _cadastroDeMensagemState();
}

class _cadastroDeMensagemState extends State<cadastroDeMensagem> {
TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  TextEditingController? textController4;
  TextEditingController? textController5;
  TextEditingController? textController6;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
    textController6 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF0F6),
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Color(0xffeef0f6),
        leading: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(17, 14, 0, 14),
          child: Container(
            width: 40,
            height: 40,
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
              icon: Icon(Icons.arrow_back),
              color: Color(0xFF707585),
              iconSize: 20,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 14, 20, 14),
            child: Container(
              width: 40,
              height: 40,
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
        child: SingleChildScrollView(
          child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Stack(children: <Widget>[
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          //título ePort
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: Text(
                                      'C',
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      child: Text(
                                        'adastro',
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        80, 0, 0, 0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12),
                                        ),
                                        color: Color(0xFFEEF0F6),
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
                                        icon: Icon(Icons.edit),
                                        color: Color(0xFF707585),
                                        iconSize: 20,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12),
                                        ),
                                        color: Color(0xffF08C6C),
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
                                        icon: Icon(Icons.delete),
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        iconSize: 20,
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: Text(
                              'de mensagens',
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                              child: ElevatedButton(
                                                  child: Text(
                                                    "Menu",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w300),
                                                  ),
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                    elevation:
                                                        MaterialStateProperty
                                                            .all(0),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(
                                                      Color(0xFF8A82E2),
                                                    ),
                                                    shape: MaterialStateProperty
                                                        .all(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                    ),
                                                  ))),
                                          Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                              child: ElevatedButton(
                                                  child: Text(
                                                    "Alunos",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w300),
                                                  ),
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                    elevation:
                                                        MaterialStateProperty
                                                            .all(0),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(
                                                      Color(0xFF8A82E2),
                                                    ),
                                                    shape: MaterialStateProperty
                                                        .all(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                    ),
                                                  ))),
                                          Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                              child: ElevatedButton(
                                                  child: Text(
                                                    "Transportes",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w300),
                                                  ),
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                    elevation:
                                                        MaterialStateProperty
                                                            .all(0),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(
                                                      Color(0xFF8A82E2),
                                                    ),
                                                    shape: MaterialStateProperty
                                                        .all(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                    ),
                                                  ))),
                                           Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                              child: ElevatedButton(
                                                  child: Text(
                                                    "Avisos",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                    elevation:
                                                        MaterialStateProperty
                                                            .all(0),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(
                                                      Color(0xFF8A82E2),
                                                    ),
                                                    shape: MaterialStateProperty
                                                        .all(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                          side: BorderSide(
                                                              color: Color(
                                                                  0xFFFFFFFF))),
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

                      ///inputs
                      ///input Título
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 25, 30, 0),
                        child: Container(
                          width: 350,
                      height: 40,
                          child: TextFormField(
                            controller: textController1,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Titulo',
                              fillColor: Colors.transparent,
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF707585),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              contentPadding: EdgeInsets.all(15),
                            ),
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color(0xFF707585),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFEEF0F6),
                            boxShadow: [
                              //dentro
                              BoxShadow(
                                blurRadius: 2,
                                color: Color(0xffcaccd1),
                                inset: true,
                                offset: Offset(3, 3),
                              ),
                              BoxShadow(
                                blurRadius: 10,
                                color: Color(0xffffffff),
                                inset: true,
                                offset: Offset(-2, -2),
                              ),
                              //fora
                              BoxShadow(
                                blurRadius: 2,
                                color: Color(0xffcaccd1),
                                offset: Offset(3, 3),
                              ),
                              BoxShadow(
                                blurRadius: 10,
                                color: Color(0xffffffff),
                                offset: Offset(-2, -2),
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


                      //input mensagem
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 30, 0),
                        child: Container(
                        width: 350,
                        height: 250,
                          child: TextFormField(
                            controller: textController3,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                                hintText: 'Mensagem',
                                fillColor: Colors.transparent,
                                hintStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF707585),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                filled: true,
                                contentPadding: EdgeInsets.all(15)),
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color(0xFF707585),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFEEF0F6),
                            boxShadow: [
                              //dentro
                              BoxShadow(
                                blurRadius: 2,
                                color: Color(0xffcaccd1),
                                inset: true,
                                offset: Offset(3, 3),
                              ),
                              BoxShadow(
                                blurRadius: 10,
                                color: Color(0xffffffff),
                                inset: true,
                                offset: Offset(-2, -2),
                              ),
                              //fora
                              BoxShadow(
                                blurRadius: 2,
                                color: Color(0xffcaccd1),
                                offset: Offset(3, 3),
                              ),
                              BoxShadow(
                                blurRadius: 10,
                                color: Color(0xffffffff),
                                offset: Offset(-2, -2),
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

                     
                      //salvar
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: ElevatedButton(
                            child: Text(
                              "Salvar",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(Size(130, 45)),
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xFF8A82E2),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ])),
        ),
      ),
    );
  }
}
