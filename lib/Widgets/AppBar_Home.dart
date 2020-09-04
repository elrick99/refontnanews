import 'package:flutter/material.dart';

class AppBarHome extends StatefulWidget {
  @override
  _AppBarHomeState createState() => _AppBarHomeState();
}

class _AppBarHomeState extends State<AppBarHome> {
  bool couleur = false;
  bool couleur1 = false;
  bool couleur2 = false;
  bool couleur3 = false;
  bool couleur4 = false;
  bool couleur5 = false;
  bool couleur6 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Color(0xFF777FFF),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                child: Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100)),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.local_library,
                                    size: 10,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )),
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        Container(
                          child: Icon(
                            Icons.file_download,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.enhanced_encryption,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Expanded(
                        child: Container(
                            child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            color: Colors.white,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        couleur = !couleur;
                                      });
                                    },
                                    child: Container(
                                      child: Text(
                                        "Suivre",
                                        style: TextStyle(
                                          color: (couleur)
                                              ? Colors.red
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        couleur1 = !couleur1;
                                      });
                                    },
                                    child: Container(
                                      child: Text(
                                        "Pour-vous",
                                        style: TextStyle(
                                          color: (couleur1)
                                              ? Colors.red
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        couleur2 = !couleur2;
                                      });
                                    },
                                    child: Container(
                                      child: Text(
                                        "CoronaVirus",
                                        style: TextStyle(
                                          color: (couleur2)
                                              ? Colors.red
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        couleur3 = !couleur3;
                                      });
                                    },
                                    child: Container(
                                      child: Text(
                                        "Footbaal",
                                        style: TextStyle(
                                          color: (couleur3)
                                              ? Colors.red
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        couleur4 = !couleur4;
                                      });
                                    },
                                    child: Container(
                                      child: Text(
                                        "La maison",
                                        style: TextStyle(
                                          color: (couleur4)
                                              ? Colors.red
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        couleur5 = !couleur5;
                                      });
                                    },
                                    child: Container(
                                      child: Text(
                                        "Politique",
                                        style: TextStyle(
                                          color: (couleur5)
                                              ? Colors.red
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        couleur6 = !couleur6;
                                      });
                                    },
                                    child: Container(
                                      child: Text(
                                        "Sociaux",
                                        style: TextStyle(
                                          color: (couleur6)
                                              ? Colors.red
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Icon(Icons.add, color: Color(0xFF777FFF)),
                              ],
                            ),
                          ),
                        )
                      ],
                    )))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
