import 'package:flutter/material.dart';
import 'package:refontnanews/Widgets/AppBar_Details.dart';
import 'package:refontnanews/Widgets/WebView.dart';

class DetailAppli extends StatefulWidget {
  final String urls;

  const DetailAppli({Key key, this.urls}) : super(key: key);
  @override
  _DetailAppliState createState() => _DetailAppliState();
}

class _DetailAppliState extends State<DetailAppli> {
  static const stateItems = <String>[
    'Favoris',
    'Partager',
    'Signaler',
    'Text',
  ];

  final List<PopupMenuItem<String>> _dropDownMenuItems = stateItems
      .map((String values) => PopupMenuItem<String>(
            value: values,
            child: Text(values),
          ))
      .toList();
  String _btnSelectedVal = 'Neuf';

  bool siteWeb = false;
  bool appliWeb = true;

  Widget siteWebButton() {
    return InkWell(
      onTap: () {
        setState(() {
          appliWeb = true;
          siteWeb = false;
          print(2);
        });
      },
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Icon(Icons.format_align_left, color: Color(0xFF777FFF)),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
            )),
      ),
    );
  }

  Widget appliWebButton() {
    return InkWell(
      onTap: () {
        setState(() {
          appliWeb = false;
          siteWeb = true;
          print(1);
        });
      },
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Icon(Icons.format_align_left, color: Colors.white),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.01),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: Column(
          children: [
            Container(
              height: 75,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.amber),
              child: Container(
                height: MediaQuery.of(context).size.height / 7,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(0xFF777FFF)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              icon: Icon(Icons.arrow_back, color: Colors.white),
                              onPressed: () => Navigator.pop(context)),
                          Container(
                            height: 35,
                            width: 200,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: Center(
                                        child: (appliWeb == true)
                                            ? Text(
                                                'Bonjour',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            : Text(widget.urls,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                    color: Colors.white)))),
                                Expanded(
                                    child: (appliWeb == true)
                                        ? appliWebButton()
                                        : siteWebButton())
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          PopupMenuButton<String>(
                              icon: Icon(Icons.more_horiz, color: Colors.white),
                              onSelected: (String newValue) {
                                setState(() {
                                  _btnSelectedVal = newValue;
                                  print(_btnSelectedVal);
                                });
                              },
                              itemBuilder: (_) => this._dropDownMenuItems)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Icon(
                                Icons.call,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                            Container(
                              child: Text("Whatshapp"),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Icon(
                                Icons.enhanced_encryption,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                            Container(
                              child: Text(
                                "Partager",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Icon(
                                Icons.error,
                                color: Colors.black,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                            Container(
                              child: Text(
                                "Signalé",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: (siteWeb == true)
                    ? WebWiew(
                        url: widget.urls,
                      )
                    : ListView(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      "Présidentielle en Côte d'Ivoire: à la découverte des candidats",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Card(
                                    elevation: 1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 20,
                                          child: Text("Fraternite matin"),
                                        ),
                                        Container(
                                          height: 20,
                                          child: Text("04-sept.2020"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 200,
                                    width: 300,
                                    color: Colors.blue,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 300,
                                    child: Text(
                                      "La Côte d'Ivoire se dirige vers une élection pleine d'incertitude",
                                      style: TextStyle(),
                                    ),
                                  ),
                                  Container(
                                    height: 110,
                                    width: 300,
                                    child: Text(
                                      " Les partis traditionnels de la scène politique ivoirienne auront leurs candidats en lice pour l'élection présidentielle d'octobre, mais il faudra compter avec les candidats indépendants qui tentent de briser le cycle de la configuration politique classique que le pays connait depuis l'avènement du multipartisme.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 110,
                                    width: 300,
                                    child: Text(
                                      " Les partis traditionnels de la scène politique ivoirienne auront leurs candidats en lice pour l'élection présidentielle d'octobre, mais il faudra compter avec les candidats indépendants qui tentent de briser le cycle de la configuration politique classique que le pays connait depuis l'avènement du multipartisme.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 110,
                                    width: 300,
                                    child: Text(
                                      " Les partis traditionnels de la scène politique ivoirienne auront leurs candidats en lice pour l'élection présidentielle d'octobre, mais il faudra compter avec les candidats indépendants qui tentent de briser le cycle de la configuration politique classique que le pays connait depuis l'avènement du multipartisme.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 110,
                                    width: 300,
                                    child: Text(
                                      " Les partis traditionnels de la scène politique ivoirienne auront leurs candidats en lice pour l'élection présidentielle d'octobre, mais il faudra compter avec les candidats indépendants qui tentent de briser le cycle de la configuration politique classique que le pays connait depuis l'avènement du multipartisme.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                      ),
                                      Container(
                                        child: Text("J'aime"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                      ),
                                      Container(
                                        child: Text("J'aime"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                      ),
                                      Container(
                                        child: Text("J'aime"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                      ),
                                      Container(
                                        child: Text("J'aime"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Card(
                            elevation: 5,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                child: IconButton(
                                                    icon: Icon(
                                                      Icons.ac_unit,
                                                      color: Colors.red,
                                                    ),
                                                    onPressed: () {})),
                                            Container(
                                              child: Text("Trending video"),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Plus",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ],
                                  ),

                                  
                                  Container(
                                    height: 200,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 150,
                                            width: 300,
                                            color: Colors.pink,
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Container(
                                                        height: 20,
                                                        width: 50,
                                                        color: Colors.black,
                                                        child: Center(
                                                          child: Text(
                                                            "01:09",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 90,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Container(
                                                        child: Text(
                                                          "Moi quand je suis en train de conduire une fille",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Container(
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                      child: Icon(
                                                                          Icons
                                                                              .favorite)),
                                                                  Container(
                                                                    child: Text(
                                                                        "6.1k"),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Container(
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                      child: Icon(
                                                                          Icons
                                                                              .favorite)),
                                                                  Container(
                                                                    child: Text(
                                                                        "6.1k"),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Container(
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                      child: Icon(
                                                                          Icons
                                                                              .favorite)),
                                                                  Container(
                                                                    child: Text(
                                                                        "6.1k"),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 150,
                                            width: 300,
                                            color: Colors.pink,
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Container(
                                                        height: 20,
                                                        width: 50,
                                                        color: Colors.black,
                                                        child: Center(
                                                          child: Text(
                                                            "01:09",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 90,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Container(
                                                        child: Text(
                                                          "Moi quand je suis en train de conduire une fille",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Container(
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                      child: Icon(
                                                                          Icons
                                                                              .favorite)),
                                                                  Container(
                                                                    child: Text(
                                                                        "6.1k"),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Container(
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                      child: Icon(
                                                                          Icons
                                                                              .favorite)),
                                                                  Container(
                                                                    child: Text(
                                                                        "6.1k"),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Container(
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                      child: Icon(
                                                                          Icons
                                                                              .favorite)),
                                                                  Container(
                                                                    child: Text(
                                                                        "6.1k"),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 150,
                                            width: 300,
                                            color: Colors.pink,
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Container(
                                                        height: 20,
                                                        width: 50,
                                                        color: Colors.black,
                                                        child: Center(
                                                          child: Text(
                                                            "01:09",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 90,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Container(
                                                        child: Text(
                                                          "Moi quand je suis en train de conduire une fille",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Container(
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                      child: Icon(
                                                                          Icons
                                                                              .favorite)),
                                                                  Container(
                                                                    child: Text(
                                                                        "6.1k"),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Container(
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                      child: Icon(
                                                                          Icons
                                                                              .favorite)),
                                                                  Container(
                                                                    child: Text(
                                                                        "6.1k"),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Container(
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                      child: Icon(
                                                                          Icons
                                                                              .favorite)),
                                                                  Container(
                                                                    child: Text(
                                                                        "6.1k"),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
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




                                  Divider(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 80,
                                            color: Colors.black,
                                          ),
                                          Container(
                                            height: 80,
                                            width: 250,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    child: Text(
                                                        "le ministre Hamede Bakayoko a change le nom de la comune abobo "),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    child: Text(
                                                      "Benson il y a 16h",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.black38),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 80,
                                            color: Colors.black,
                                          ),
                                          Container(
                                            height: 80,
                                            width: 250,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    child: Text(
                                                        "le ministre Hamede Bakayoko a change le nom de la comune abobo "),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    child: Text(
                                                      "Benson il y a 16h",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.black38),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 80,
                                            color: Colors.black,
                                          ),
                                          Container(
                                            height: 80,
                                            width: 250,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    child: Text(
                                                        "le ministre Hamede Bakayoko a change le nom de la comune abobo "),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    child: Text(
                                                      "Benson il y a 16h",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.black38),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ))
          ],
        ),
      ),
    );
  }
}
