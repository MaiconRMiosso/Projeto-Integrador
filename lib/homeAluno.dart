import 'package:flutter/material.dart';

class HomeAluno extends StatefulWidget {
  const HomeAluno({Key? key}) : super(key: key);

  @override
  State<HomeAluno> createState() => _HomeAlunoState();
}

class _HomeAlunoState extends State<HomeAluno> {
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  //título ePort
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
                //subtítulo
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
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
              Padding(
                //botões menu/ gps e o icon
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
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
                                  child: Text("GPS"),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Padding(
                              //icon menu
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.logout),
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 60, 120, 0),
                child: Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Divider(),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                        child: FlatButton(
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Text("Vou"),
                          onPressed: () {},
                        ),
                      ),
                      FlatButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("Volto"),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                //box fo dia e data de "hj"
                padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                child: Container(
                  width: 300,
                  height: 130,
                  decoration: BoxDecoration(),
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
          ),
        ),
      ),
    );
  }
}
