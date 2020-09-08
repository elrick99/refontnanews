import 'package:flutter/material.dart';

class ChainePaysG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(
                backgroundColor:Color(0xFF777FFF) ,
                centerTitle: true,
                title: Text("Ghana",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white
                ),
                ),
              ),

              body: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
           Container(
             height: 180,
             width: 400,
             decoration: BoxDecoration(
                 color: Colors.indigo,
                 borderRadius: BorderRadius.circular(10),
                 image: DecorationImage(image: AssetImage("Images/RTI2.jpg"),fit: BoxFit.cover)
             ),
           ),
           Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column
                         (
                        children: <Widget>[
                   
                             Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Text("RTI",
                                style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Container(
                                child: Icon(Icons.arrow_drop_down),
                              ),
                            ],
                          ),
                          
                             Row(
                            children: <Widget>[
                              Container(
                                child: Text("245K view ",
                                style: TextStyle(fontSize: 15,
                                color: Colors.grey
                                ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                   child: Text("il y a une minute ",
                                style: TextStyle(fontSize: 15,
                                color: Colors.grey
                                ),
                                )
                              ),
                                   Container(
                                  height: 40,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(100)
                                  ),
                               child: Row(
                                 children: <Widget>[
                                   Container(child: IconButton(icon: Icon(Icons.thumb_up, color: Colors.white,), onPressed: (){})),
                                   Container(
                                   child: Text("17K ",
                                style: TextStyle(fontSize: 15,
                                color: Colors.grey
                                ),
                                )
                              ),
                                 ],
                               ),
                             ),
                            ],
                          ),
                          
                       
                            
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                             Row(
                               children: <Widget>[
                                 CircleAvatar(
                                   //child: AssetImage(provider.images),
                                   //child: Image.asset(provider.images, fit: BoxFit.cover,),
                                   backgroundImage: AssetImage("Images/RTI2.jpg"),
                                 ),
                                 SizedBox(width: 5,),
                                     Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                 Text("RTI"),
                                 Text("1,7 Abonnés",
                                 style: TextStyle(
                                   color:Colors.grey
                                 ),
                                 )
                               ],
                             ),
                               ],
                             ),
                         
                                     Row(
                                       children: <Widget>[
                                         Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(100)
                                ),
                              child: Center(child: IconButton(icon: Icon(Icons.notification_important, color: Colors.red,), onPressed: (){})), 
                            ),
                                 Container(
                              
                              child: Center(child: Text("S'abonner",
                              style: TextStyle(
                                color:Colors.red,
                                fontWeight: FontWeight.bold
                              ),
                              )), 
                            ),
                                       ],
                                     ),
                              
                            ],
                          ) ,
                          Divider(),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("A suivre"),
                                     Row(
                                       children: <Widget>[
                                              Container(
                                 child: Center(child: Text("Lire automatiquement",
                              
                              )), 
                            ),
                                         Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(100)
                                ),
                              child: Center(child:Icon(Icons.filter_vintage, color:Colors.blue) ), 
                            ),
                                       ],
                                     ),
                            ],
                          ) ,
                            Divider(),
                          
                        ],
                        
                       
                      ),
                    ),
                  )
          ],
        ),
      ),                              

             Container(
               child: Text("A suivre",
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
               ),
               ),
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
                                              decoration: BoxDecoration(
                                                 image: DecorationImage(image: AssetImage("images/sp.jpg"), fit: BoxFit.cover)
                                              ),
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
                                     Divider(),
                                     Container(
                                       child: Text("Nos chaines",
                                       style: TextStyle(
                                         fontSize: 20,
                                         fontWeight: FontWeight.bold
                                       ),
                                       ),
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
                                              
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                border:Border.all(color:Colors.black),
                                                image: DecorationImage(image: AssetImage("images/GHA2.jpg"))
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: 150,
                                              width: 300,
                                              
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                border:Border.all(color:Colors.black),
                                                image: DecorationImage(image: AssetImage("images/GHA4.jpg"))
                                              ),
                                            ),
                                          ),
                                                 Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: 150,
                                              width: 300,
                                              
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                border:Border.all(color:Colors.black),
                                                image: DecorationImage(image: AssetImage("images/GHA5.jpg"))
                                              ),
                                            ),
                                          ),
                                                 Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: 150,
                                              width: 300,
                                              
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                border:Border.all(color:Colors.black),
                                                image: DecorationImage(image: AssetImage("images/GHA3.png"))
                                              ),
                                            ),
                                          ),
                                     
                                        ],
                                      ),
                                    ),
                    ],
                  ),
                ),
              ),
    );
  }
}