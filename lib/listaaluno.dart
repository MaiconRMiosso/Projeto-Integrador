import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:oi/cadastroAluno.dart';

class listaAluno extends StatefulWidget {
  const listaAluno({Key? key}) : super(key: key);

  @override
  State<listaAluno> createState() => _listaAlunoState();
}

class _listaAlunoState extends State<listaAluno> {
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

  void _cadastroAluno() {
  Navigator.push(
    context, MaterialPageRoute(builder: (context)=> CadastroAluno()));
}

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
                                EdgeInsetsDirectional.fromSTEB(200, 350, 0, 0),
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
                              'A',
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
                                'lunos',
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
                      'quem você transporta',
                      style: TextStyle(
                        fontFamily: 'Poppins',
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 0),
                                            child: ElevatedButton(
                                                child: Text(
                                                  "Menu",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                onPressed: () {},
                                                style: ButtonStyle(
                                                  elevation:
                                                      MaterialStateProperty.all(
                                                          0),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    Color(0xFF8A82E2),
                                                  ),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        side: BorderSide(
                                                            color: Color(
                                                                0xFFFFFFFF))),
                                                  ),
                                                ))),
                                        Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 0),
                                            child: ElevatedButton(
                                                child: Text(
                                                  "Alunos",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                                onPressed: () {print("Apertei"); Navigator.push(context, MaterialPageRoute(builder: (context)=> listaAluno()));},
                                                style: ButtonStyle(
                                                  elevation:
                                                      MaterialStateProperty.all(
                                                          0),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    Color(0xFF8A82E2),
                                                  ),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                ))),
                                        Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 0),
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
                                                      MaterialStateProperty.all(
                                                          0),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    Color(0xFF8A82E2),
                                                  ),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                ))),
                                        Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 0),
                                            child: ElevatedButton(
                                                child: Text(
                                                  "Avisos",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                                onPressed: () {},
                                                style: ButtonStyle(
                                                  elevation:
                                                      MaterialStateProperty.all(
                                                          0),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    Color(0xFF8A82E2),
                                                  ),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
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
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                      child: Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          children: [
                            TextFormField(
                              controller: textController1,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: '...',
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
                              ),
                            ),
                            TextFormField(
                              controller: textController2,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: '...',
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
                              ),
                            ),
                            TextFormField(
                              controller: textController3,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: '...',
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
                              ),
                            ),
                            TextFormField(
                              controller: textController4,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: '...',
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
                              ),
                            ),
                            TextFormField(
                              controller: textController5,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: '...',
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
                              ),
                            ),
                            TextFormField(
                              controller: textController6,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: '...',
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
                              ),
                            ),
                          ],

                          
                        ),
                      ),
                    ),
Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  300, 30, 0, 0),
                                          child: Container(
                                            height: 70,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF8A82E2),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),

                                            child: IconButton(
                                              onPressed: () {_cadastroAluno();},
                                              icon: Icon(Icons.add),
                                              color: Colors.white,
                                              iconSize: 40,
                                              hoverColor: Color(0xFF00000),
                                            ),
                                          ),
                                        ),
            ],
            
                ), ],
              ), ),
            
          ),
        );
      
  }
}
