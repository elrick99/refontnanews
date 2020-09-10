import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refontnanews/Providers/Services/Chaines.dart';
import 'package:refontnanews/Providers/Services/details.dart';


class CoteD extends StatelessWidget {
   static const routeName="coteD";
  @override
  Widget build(BuildContext context) {
      final detailId= ModalRoute.of(context).settings.arguments as int;
   final provider= Provider.of<Details>(context,
   listen: false,
   ).findById(detailId);
   final providers=Provider.of<Chaines>(context);
   
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor:   Color(0xFF777FFF),
        title: Text(provider.chaineName),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: <Widget>[
          
           Expanded(
             child: Container(
               height: MediaQuery.of(context).size.height,
               child: ListView.builder(
                 itemCount: 10,
                 itemBuilder: (context, index){
                 return Expanded(
                 child: Container(
                    height: MediaQuery.of(context).size.height/1.8,
                   child: Column(
                     children: [
                       Container(
                           height: 300,
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column
                                   (
                                  children: <Widget>[

                                                 Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                       Row(
                                         children: <Widget>[
                                           CircleAvatar(
                                            
                                             //child: AssetImage(provider.images),
                                             //child: Image.asset(provider.images, fit: BoxFit.cover,),
                                             backgroundImage: AssetImage(provider.imagePro,),
                                           ),
                                           SizedBox(width: 5,),
                                          Column(
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: <Widget>[
                                           Row(
                                             children: [
                                          Container(child: Text(provider.chaineName)),
                                                SizedBox(width: 5,),
                                          Container(
                                        child: Center(child: Text("Suivre",
                                        style: TextStyle(
                                          color:Colors.red,
                                          fontWeight: FontWeight.bold
                                        ),
                                        )), 
                                      ),
                                             ],
                                           ),
                                           Text("1,7 Abonnés",
                                           style: TextStyle(
                                             color:Colors.grey
                                           ),
                                           ),
                                         ],
                                       ),
                                     
                                         ],
                                         
                                       ),
                                      ],
                                    ) ,
                                    SizedBox(height: 5,),
                                
                             Expanded(
                               child: Container(
                         width: 400,
                         decoration: BoxDecoration(
                           color: Colors.indigo,
                           image: DecorationImage(image: AssetImage(provider.emission,),fit: BoxFit.cover)
                         ),
                       ),
                             ),

                             
                                 
                                  ],
                                  
                                 
                                ),
                              ),
                            ),
                            Expanded(
                               child: Container(
                                 width: 290,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                     Container(
                                       child: Row(
                                         children: [
                                           Container(
                                             child:  Icon(Icons.thumb_up, size: 20,)),
                                              SizedBox(width: 10,),
                                           
                                           Container(
                                             child: Text(provider.jaime.toString()),
                                           ),
                                            SizedBox(width: 10,),
                                           Container(
                                             child: Icon(Icons.thumb_down,size: 20,)),
                                           
                                         ],
                                       ),
                                     ),
                                     Container(
                                          child: Row(
                                         children: [
                                           Container(
                                             child:  Row(
                                               children: [
                                                 Container(child: Icon(Icons.chat,size: 20)),
                                                 Container(child: Text(provider.commentaire.toString())),
                                               ],
                                             )
                                             ),
                                             SizedBox(width: 10,),
                                               Container(
                                             child:  Row(
                                               children: [
                                                 Container(child: Icon(Icons.share,size: 20)),
                                                 Container(child: Text(provider.partage.toString())),
                                               ],
                                             )
                                             ),
                                             
                                             SizedBox(width: 10,),
                                           Container(
                                             child:  Icon(Icons.picture_in_picture_alt,size: 20)),
                                             SizedBox(width: 10,),
                                           
                                            Container(
                                             child: Icon(Icons.account_circle, color: Colors.green,size: 20)
                                           ),
                                         ],
                                       ),
                                     )
                                   ],
                                 ),
                               ),
                             ),
                             Divider()
                     ],
                   ),
                 ),
               );
               }
               ),
             ),
           )
          ],
        ),
      ),
    );
  }
}