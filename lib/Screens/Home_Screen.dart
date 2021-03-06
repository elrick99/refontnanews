import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refontnanews/Providers/Services/Informations.dart';
import 'package:refontnanews/Screens/Details_Appli.dart';
import 'package:refontnanews/Widgets/AppBar_Home.dart';

class HommeSrceen extends StatefulWidget {
  @override
  _HommeSrceenState createState() => _HommeSrceenState();
}

class _HommeSrceenState extends State<HommeSrceen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Informations>(context);
    final dataInformation = provider.items;
    print(provider.items);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.amber),
              child: AppBarHome(),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.info),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('A la une'),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('Tout Voir'),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.6,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.white),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => DetailAppli(
                                            urls: dataInformation[index].url,
                                            information:
                                                dataInformation[index])));
                              },
                              child: Container(
                                height: MediaQuery.of(context).size.height / 3,
                                width: 230,
                                // decoration: BoxDecoration(color: Colors.yellow),
                                child: Card(
                                  elevation: 7,
                                  child: Column(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                    3 -
                                                100,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    dataInformation[index]
                                                        .image),
                                                fit: BoxFit.cover),
                                            color: Colors.green),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          // decoration:
                                          //     BoxDecoration(color: Colors.green[300]),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                    dataInformation[index]
                                                        .title,
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    maxLines: 2,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16)),
                                                Container(
                                                    child: Row(
                                                  children: [
                                                    Text(
                                                      dataInformation[index]
                                                          .siteWeb,
                                                      style: TextStyle(
                                                          color:
                                                              Colors.grey[300]),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text('${index + 1} min',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[300]))
                                                  ],
                                                ))
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  ...dataInformation
                      .map((e) => Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => DetailAppli(
                                            urls: e.url,
                                            information: e,
                                          ))),
                              child: Container(
                                height: MediaQuery.of(context).size.height / 5,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(),
                                child: Card(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Text(e.title,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16)),
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 40,
                                                    width: 50,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Icon(Icons.thumb_up,
                                                            size: 20,
                                                            color: Colors
                                                                .grey[300]),
                                                        Text(
                                                            e.countLike
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey[300]))
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 40,
                                                    width: 50,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Icon(Icons.comment,
                                                            size: 20,
                                                            color: Colors
                                                                .grey[300]),
                                                        Text(
                                                            e.countComment
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey[300]))
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(e.siteWeb,
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[300],
                                                            fontSize: 12)),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                          child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(e.image),
                                              fit: BoxFit.cover),
                                        ),
                                      ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ))
                      .take(4),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.4,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.white),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => DetailAppli(
                                            urls: dataInformation[index].url,
                                            information: dataInformation[index],
                                          ))),
                              child: Container(
                                height: MediaQuery.of(context).size.height / 3,
                                width: 270,
                                // decoration: BoxDecoration(color: Colors.yellow),
                                child: Card(
                                  elevation: 7,
                                  child: Column(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                    3 -
                                                100,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  dataInformation[index].image),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          // decoration:
                                          //     BoxDecoration(color: Colors.red[300]),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                    dataInformation[index]
                                                        .title,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16)),
                                                Text(
                                                    dataInformation[index]
                                                        .siteWeb,
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
