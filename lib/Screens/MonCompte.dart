import 'package:flutter/material.dart';

class MonCompte extends StatefulWidget {
  @override
  _MonCompteState createState() => _MonCompteState();
}

class _MonCompteState extends State<MonCompte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.person_add,
                color: Colors.grey,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.settings, color: Colors.grey), onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Text('Se Connecter avec',
                        style: TextStyle(color: Colors.grey, fontSize: 18)),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  maxRadius: 30,
                                  child:
                                      Icon(Icons.fastfood, color: Colors.white),
                                ),
                                Text('FaceBook')
                              ],
                            ),
                            // color: Colors.blue,
                          )),
                          Expanded(
                              child: Container(
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.red,
                                    maxRadius: 30,
                                    child: Icon(Icons.phone_android,
                                        color: Colors.white),
                                  ),
                                  Text('FaceBook')
                                ],
                              ),
                              // color: Colors.blue,
                            ),
                            // color: Colors.yellow,
                          )),
                          Expanded(
                              child: Container(
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.cyan,
                                    maxRadius: 30,
                                    child: Icon(Icons.fastfood,
                                        color: Colors.white),
                                  ),
                                  Text('FaceBook')
                                ],
                              ),
                              // color: Colors.blue,
                            ),
                            // color: Colors.green,
                          ))
                        ],
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              // height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.red,
                    child: ListTile(
                      leading: Icon(Icons.email, color: Colors.grey),
                      title: Text('Messages'),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.red,
                    child: ListTile(
                      leading: Icon(Icons.replay, color: Colors.grey),
                      title: Text('Historique des Vidéos'),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.red,
                    child: ListTile(
                      leading: Icon(Icons.bookmark_border, color: Colors.grey),
                      title: Text('Favoris'),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.red,
                    child: ListTile(
                      leading: Icon(Icons.archive, color: Colors.grey),
                      title: Text('Lecture hors connexion'),
                      subtitle: Text('Lire les nouvelles hors connexion'),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.red,
                    child: ListTile(
                      leading: Icon(Icons.access_time, color: Colors.grey),
                      title: Text('Lire plus tard'),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.red,
                    child: ListTile(
                      leading: Icon(Icons.star_border, color: Colors.grey),
                      title: Text('Notez-nous'),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.red,
                    child: ListTile(
                      leading: Icon(Icons.card_membership, color: Colors.grey),
                      title: Text('Suggestions'),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
