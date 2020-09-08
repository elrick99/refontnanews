import 'package:flutter/material.dart';

class MonCompteConnected extends StatefulWidget {
  @override
  _MonCompteConnectedState createState() => _MonCompteConnectedState();
}

class _MonCompteConnectedState extends State<MonCompteConnected> {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFF777FFF),
                          maxRadius: 50,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Edward Elrick',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 25,
                                width: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: Text('My Profile',
                                        style: TextStyle(color: Colors.grey))),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orange.withOpacity(0.5)),
                          child: Center(
                            child: Text('Devenir Createur',
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 10)),
                          ),
                        )
                      ],
                    )),
                    Expanded(
                      child: Container(
                        // color: Colors.green,
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              // color: Colors.amber,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text('0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  Text('Réputation',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey))
                                ],
                              ),
                            )),
                            Expanded(
                                child: Container(
                              // color: Colors.yellow,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text('0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  Text('Abonnés',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey))
                                ],
                              ),
                            )),
                            Expanded(
                                child: Container(
                              // color: Colors.green,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text('0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  Text('Abonnements',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey))
                                ],
                              ),
                            ))
                          ],
                        ),
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
