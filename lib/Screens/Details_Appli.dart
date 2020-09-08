import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refontnanews/Providers/Models/Information.dart';
import 'package:refontnanews/Providers/Services/Informations.dart';
import 'package:refontnanews/Widgets/AppBar_Details.dart';
import 'package:refontnanews/Widgets/Badge.dart';
import 'package:refontnanews/Widgets/WebView.dart';

class DetailAppli extends StatefulWidget {
  final String urls;
  final Information information;

  DetailAppli({Key key, this.urls, this.information}) : super(key: key);
  @override
  _DetailAppliState createState() => _DetailAppliState();
}

class _DetailAppliState extends State<DetailAppli> {
  bool commentaire = false;
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

  Widget comment() {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: MediaQuery.of(context).size.height / 6,
              width: MediaQuery.of(context).size.width,
              // decoration: BoxDecoration(color: Colors.red),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(color: Colors.black),
                      color: Colors.grey[300]),
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: '  Commentaires',
                      border: UnderlineInputBorder(),
                    ),
                    maxLines: 1,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                      child: Text(
                        'PUBLIER',
                        style: TextStyle(color: Colors.blue),
                      ),
                      onPressed: () {})
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget commentPresent() {
    return Container(
      height: MediaQuery.of(context).size.height / 12,
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  commentaire = true;
                });
              },
              child: Container(
                height: 40,
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.edit, color: Colors.grey),
                    Text(
                      'Commentaire',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    border: Border.all(color: Colors.grey[400]),
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Badge(
                      child: IconButton(
                        icon: Icon(Icons.comment, color: Colors.grey),
                        onPressed: () {},
                      ),
                      value: '4'),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      child: Row(
                    children: [
                      Icon(Icons.thumb_up, color: Colors.grey),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '35',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Icon(
                        Icons.bookmark_border,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<bool> retour() {
    setState(() {
      commentaire = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Informations>(context);
    final dataInformation = provider.items;
    return WillPopScope(
      onWillPop: () async => retour(),
      child: Scaffold(
        // bottomNavigationBar: commentPresent(),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Column(
                children: [
                  Container(
                    height: 80,
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
                                    icon: Icon(Icons.arrow_back,
                                        color: Colors.white),
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
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white)))),
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
                                    icon: Icon(Icons.more_horiz,
                                        color: Colors.white),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Text(
                                            widget.information.title,
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
                                          child: Container(
                                            height: 40,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, right: 8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    height: 20,
                                                    child: Text(widget
                                                        .information.siteWeb),
                                                  ),
                                                  Container(
                                                    height: 20,
                                                    child: Text(widget
                                                        .information.date),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 200,
                                          width: 300,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(widget
                                                      .information.image))),
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
                                            widget.information.description,
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
                                              child: Icon(
                                                Icons.call,
                                                color: Colors.white,
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
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
                                                Icons.share,
                                                color: Colors.white,
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                            ),
                                            Container(
                                              child: Text(
                                                "Partager",
                                                style: TextStyle(
                                                    color: Colors.black),
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
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                            ),
                                            Container(
                                              child: Text(
                                                "Signalé",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
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
                                                    child: Text(
                                                        "Trending Informations"),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8.0),
                                              child: Container(
                                                child: Text(
                                                  "Plus",
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        // Container(
                                        //   height: 200,
                                        //   child: ListView.builder(
                                        //       scrollDirection: Axis.horizontal,
                                        //       itemCount: 3,
                                        //       itemBuilder: (context, index) {
                                        //         return Padding(
                                        //           padding: const EdgeInsets.all(8.0),
                                        //           child: Container(
                                        //             height: 150,
                                        //             width: 300,
                                        //             decoration: BoxDecoration(
                                        //                 image: DecorationImage(
                                        //                     image: NetworkImage(
                                        //                         dataInformation[index]
                                        //                             .image),
                                        //                     fit: BoxFit.cover)),
                                        //             child: Column(
                                        //               children: [
                                        //                 Row(
                                        //                   mainAxisAlignment:
                                        //                       MainAxisAlignment.end,
                                        //                   children: [
                                        //                     Padding(
                                        //                       padding:
                                        //                           const EdgeInsets
                                        //                               .all(8.0),
                                        //                       child: Container(
                                        //                         height: 20,
                                        //                         width: 50,
                                        //                         color: Colors.black,
                                        //                         child: Center(
                                        //                           child: Text(
                                        //                             "01:09",
                                        //                             style: TextStyle(
                                        //                                 color: Colors
                                        //                                     .white),
                                        //                           ),
                                        //                         ),
                                        //                       ),
                                        //                     )
                                        //                   ],
                                        //                 ),
                                        //                 SizedBox(
                                        //                   height: 90,
                                        //                 ),
                                        //                 Column(
                                        //                   crossAxisAlignment:
                                        //                       CrossAxisAlignment
                                        //                           .start,
                                        //                   children: [
                                        //                     Padding(
                                        //                       padding:
                                        //                           const EdgeInsets
                                        //                                   .only(
                                        //                               left: 8.0),
                                        //                       child: Container(
                                        //                         child: Text(
                                        //                           dataInformation[
                                        //                                   index]
                                        //                               .title,
                                        //                           style: TextStyle(
                                        //                               color: Colors
                                        //                                   .white),
                                        //                         ),
                                        //                       ),
                                        //                     ),
                                        //                     Container(
                                        //                       child: Row(
                                        //                         children: [
                                        //                           Padding(
                                        //                             padding:
                                        //                                 const EdgeInsets
                                        //                                     .all(8.0),
                                        //                             child: Container(
                                        //                               child: Row(
                                        //                                 children: [
                                        //                                   Container(
                                        //                                       child: Icon(
                                        //                                           Icons.favorite)),
                                        //                                   Container(
                                        //                                     child: Text(
                                        //                                         "6.1k"),
                                        //                                   )
                                        //                                 ],
                                        //                               ),
                                        //                             ),
                                        //                           ),
                                        //                           Padding(
                                        //                             padding:
                                        //                                 const EdgeInsets
                                        //                                     .all(8.0),
                                        //                             child: Container(
                                        //                               child: Row(
                                        //                                 children: [
                                        //                                   Container(
                                        //                                       child: Icon(
                                        //                                           Icons.favorite)),
                                        //                                   Container(
                                        //                                     child: Text(
                                        //                                         "$index"),
                                        //                                   )
                                        //                                 ],
                                        //                               ),
                                        //                             ),
                                        //                           ),
                                        //                           Padding(
                                        //                             padding:
                                        //                                 const EdgeInsets
                                        //                                     .all(8.0),
                                        //                             child: Container(
                                        //                               child: Row(
                                        //                                 children: [
                                        //                                   Container(
                                        //                                       child: Icon(
                                        //                                           Icons.favorite)),
                                        //                                   Container(
                                        //                                     child: Text(
                                        //                                         "6.$index k"),
                                        //                                   )
                                        //                                 ],
                                        //                               ),
                                        //                             ),
                                        //                           ),
                                        //                         ],
                                        //                       ),
                                        //                     ),
                                        //                   ],
                                        //                 ),
                                        //               ],
                                        //             ),
                                        //           ),
                                        //         );
                                        //       }),
                                        // ),
                                        Divider(
                                          height: 4,
                                        ),
                                        ...dataInformation
                                            .map((e) => Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          height: 80,
                                                          width: 80,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: NetworkImage(
                                                                      e.image))),
                                                          // color: Colors.black,
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            height: 80,
                                                            width: 250,
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          8.0),
                                                                  child:
                                                                      Container(
                                                                    child: Text(
                                                                        e.title),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            8.0),
                                                                    child:
                                                                        Container(
                                                                      child:
                                                                          Text(
                                                                        e.date,
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.black38),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ))
                                            .take(3),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                14,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            // decoration:
                                            //     BoxDecoration(color: Colors.blue),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text('Meilleurs commentaires',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16)),
                                                Container(
                                                  width: 1,
                                                  height: 20,
                                                  color: Colors.black,
                                                ),
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      Icon(Icons.thumb_up),
                                                      SizedBox(width: 10),
                                                      Text('(2)')
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        ...widget.information.comment.map((e) =>
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                  color: Colors.white),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    child: ListTile(
                                                      leading: CircleAvatar(
                                                        backgroundColor:
                                                            Colors.grey[300],
                                                        child: Icon(
                                                            Icons.person,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      title: Text(
                                                        e.pseudo.toString(),
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[600]),
                                                      ),
                                                      subtitle: Text(e.date),
                                                    ),
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    // decoration: BoxDecoration(
                                                    //     color: Colors.blue),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 70.0),
                                                    child: Container(
                                                      child:
                                                          Text(e.commentaire),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 50.0),
                                                    child: Container(
                                                      height: 40,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      // decoration: BoxDecoration(
                                                      //     color: Colors.red),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Container(
                                                            width: 60,
                                                            // color: Colors.green,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceAround,
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .thumb_up,
                                                                    color: Colors
                                                                            .grey[
                                                                        600]),
                                                                Text(
                                                                  '0',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                              .grey[
                                                                          600]),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Icon(Icons.thumb_down,
                                                              color: Colors
                                                                  .grey[600]),
                                                          Container(
                                                            child: Text(
                                                              'Repondre',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                          .grey[
                                                                      600]),
                                                            ),
                                                          ),
                                                          Icon(Icons.more_horiz,
                                                              color: Colors
                                                                  .grey[600])
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0,
                                                            right: 8.0),
                                                    child: Divider(),
                                                  )
                                                ],
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ))
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: (commentaire == false) ? commentPresent() : comment(),
            ),
          ],
        ),
      ),
    );
  }
}
