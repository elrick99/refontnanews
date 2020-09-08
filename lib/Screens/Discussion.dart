import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refontnanews/Providers/Models/Information.dart';
import 'package:refontnanews/Providers/Services/Informations.dart';
import 'package:refontnanews/Screens/InfosDisc.dart';

class DIscussion extends StatefulWidget {
  @override
  _DIscussionState createState() => _DIscussionState();
}

class _DIscussionState extends State<DIscussion> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Informations>(context);
    final dataInformation = provider.items;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF777FFF),
        title: Text(
          'Discussions',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(
                    context: context, delegate: DataSearch(dataInformation));
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              // decoration: BoxDecoration(color: Colors.red),
              child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: InkWell(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Message())),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 7,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(color: Colors.grey[200]),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: ListTile(
                              leading: CircleAvatar(
                                  backgroundColor: Color(0xFF777FFF),
                                  child:
                                      Icon(Icons.person, color: Colors.white)),
                              title: Text('Alphonse',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17)),
                              subtitle: Text('Web Designer'),
                              trailing: Text('1$index h'),
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
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final List<Information> listWProds;

  DataSearch(this.listWProds);

  @override
  List<Widget> buildActions(BuildContext context) {
    //Actions for app bar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //leading icon on the left of the app bar
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // show some result based on the selection
    return Center(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something
    final suggestionList = query.isEmpty
        ? listWProds
        : listWProds.where((p) => p.title.contains(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => DetailsScreen(
          //               id: suggestionList[index].id,
          //             )));
        },
        trailing: IconButton(
          icon: Icon(Icons.remove_red_eye),
          // onPressed: () => MaterialPageRoute(
          //     builder: (_) => DetailsScreen(id: suggestionList[index].id))
        ),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].title.substring(0, query.length),
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionList[index].title.substring(query.length),
                    style: TextStyle(color: Colors.grey))
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
