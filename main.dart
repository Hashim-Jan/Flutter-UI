import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main()=>runApp(app());

class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
      home:DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(title: Text('Store'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.local_convenience_store),),
                Tab(icon: Icon(Icons.work)),
                Tab(icon: Icon(Icons.favorite_border)),
                Tab(icon: Icon(Icons.person_pin)),
              ],
            ),
            actions: <Widget>[
               IconButton(icon:Icon(Icons.search), onPressed: () {},),
               IconButton(icon:Icon(Icons.notifications_none,color: Colors.white,), onPressed: null),
            ],
          ),
          body: TabBarView(
            children: [
              page1(),
              page2(),
              page3(),
              page4(),
            ],
          ),
        ),
      ),
    );
  }

  Widget page1(){
    return Column(
      children: <Widget>[
       Card(
         child: Column(
           children: <Widget>[
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Text("All Categories",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                 ),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
                 Container(
                   child: Column(
                     children: <Widget>[
                       CircleAvatar(child: Icon(Icons.home,color: Colors.black,),backgroundColor: Colors.greenAccent,),
                       Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Text("Household"),
                       )
                     ],
                   ),
                 ),
                 Container(
                   child: Column(
                     children: <Widget>[
                       CircleAvatar(child: Icon(Icons.shopping_cart,color: Colors.black,),backgroundColor: Colors.greenAccent,),
                       Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Text("Grocery"),
                       )
                     ],
                   ),
                 ),
                 Container(
                   child: Column(
                     children: <Widget>[
                       CircleAvatar(child: Icon(Icons.hourglass_empty,color: Colors.black,),backgroundColor: Colors.greenAccent,),
                       Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Text("Liquor"),
                       )
                     ],
                   ),
                 ),
                 Container(
                   child: Column(
                     children: <Widget>[
                       CircleAvatar(child: Icon(Icons.lightbulb_outline,color: Colors.black,),backgroundColor: Colors.greenAccent,),
                       Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Text("Chilled"),
                       )
                     ],
                   ),
                 ),
               ],
             ),
           ],
         ),
       ),


        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,),
              child: Text("Grocery Member Deals",style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 170,),
              child: Text("View all",style: TextStyle(color: Colors.grey[410]),textAlign: TextAlign.end,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 5,),
              child: Icon(Icons.arrow_forward_ios,size: 13,color: Colors.grey[410],),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: 160.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 5,left: 3,right: 3,bottom: 5),
                  child: Container(
                    child: Column(
                        children:<Widget>
                        [
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 5,right: 5),
                                child: Container(
                                  color: Colors.grey[350],
                                  child: Text("100G"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 45,right: 5),
                                child: Container(
                                  child: Icon(Icons.favorite,color: Colors.lightGreen,),
                                ),
                              ),
                            ],
                          ),
                          Image.asset("images/12.png",
                            height: 45,
                            width: 50,
                          ),
                          ListTile(
                              title:Text("Ginger"),
                            subtitle:Text("Rs 60.00"),
                          ),
                        ]
                    ),
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5,left: 3,right: 3,bottom: 5),
                  child: Container(
                    child: Column(
                        children:<Widget>
                        [
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 5,right: 5),
                                child: Container(
                                  color: Colors.grey[350],
                                  child: Text("100G"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 45,right: 5),
                                child: Container(
                                  child: Icon(Icons.favorite,color: Colors.lightGreen,),
                                ),
                              ),
                            ],
                          ),
                          Image.asset("images/13.png",
                            height: 45,
                            width: 50,),
                          ListTile(
                              title:Text("Garlic"),
                            subtitle:Text("Rs 40.00"),
                          ),
                        ]
                    ),
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5,left: 3,right: 3,bottom: 5),
                  child: Container(
                    child: Column(
                        children:<Widget>
                        [
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 5,right: 5),
                                child: Container(
                                  color: Colors.grey[350],
                                  child: Text("1KG"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 50,right: 5),
                                child: Container(
                                  child: Icon(Icons.favorite_border),
                                ),
                              ),
                            ],
                          ),
                          Image.asset("images/11.png",
                          height: 45,
                            width: 50,
                          ),
                          ListTile(
                            title:Text("Red Onions"),
                            subtitle:Text("260.00"),
                          ),
                        ]
                    ),
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5,left: 3,right: 3,bottom: 5),
                  child: Container(
                    child: Column(
                        children:<Widget>
                        [
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 5,right: 5),
                                child: Container(
                                  color: Colors.grey[350],
                                  child: Text("1KG"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 50,right: 5),
                                child: Container(
                                  child: Icon(Icons.favorite_border),
                                ),
                              ),
                            ],
                          ),
                          Image.asset("images/14.png",
                            height: 45,
                            width: 50,
                          ),
                          ListTile(
                              title:Text("Turnip"),
                              subtitle:Text("Rs 30.00")
                          ),
                        ]
                    ),
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5,left: 3,right: 3,bottom: 5),
                  child: Container(
                    child: Column(
                        children:<Widget>
                        [
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 5,right: 5),
                                child: Container(
                                  color: Colors.grey[350],
                                  child: Text("1KG"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 50,right: 5),
                                child: Container(
                                  child: Icon(Icons.favorite_border),
                                ),
                              ),
                            ],
                          ),
                          Image.asset("images/14a.png",
                            height: 45,
                            width: 50,
                          ),
                          ListTile(
                              title:Text("Eggplant"),
                              subtitle:Text("Rs 70.00")
                          ),
                        ]
                    ),
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  )
              )
            ],
          ),
        ),

        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 10,),
              child: Text("Grocery Deals",style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 225,),
              child: Text("View all",style: TextStyle(color: Colors.grey[410]),textAlign: TextAlign.end,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 5,),
              child: Icon(Icons.arrow_forward_ios,size: 13,color: Colors.grey[410],),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: 160.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 5,left: 3,right: 3,bottom: 5),
                  child: Container(
                    child: Column(
                        children:<Widget>
                        [
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 5,right: 5),
                                child: Container(
                                  color: Colors.grey[350],
                                  child: Text("1KG"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 50,right: 5),
                                child: Container(
                                  child: Icon(Icons.favorite_border),
                                ),
                              ),
                            ],
                          ),
                          Image.asset("images/15.png",
                            height: 45,
                            width: 50,
                          ),
                          ListTile(
                              title:Text("Carrot"),
                              subtitle:Text("Rs 490.00"),
                          ),
                        ]
                    ),
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5,left: 3,right: 3,bottom: 5),
                  child: Container(
                    child: Column(
                        children:<Widget>
                        [
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 5,right: 5),
                                child: Container(
                                  color: Colors.grey[350],
                                  child: Text("1KG"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 50,right: 5),
                                child: Container(
                                  child: Icon(Icons.favorite_border),
                                ),
                              ),
                            ],
                          ),
                          Image.asset("images/16.png",
                            height: 45,
                            width: 50,
                          ),
                          ListTile(
                            title:Text("Mango-Bud"),
                            subtitle:Text("Rs 210.00"),
                          ),
                        ]
                    ),
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5,left: 3,right: 3,bottom: 5),
                  child: Container(
                    child: Column(
                        children:<Widget>
                        [
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 5,right: 5),
                                child: Container(
                                  color: Colors.grey[350],
                                  child: Text("100G"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 45,right: 5),
                                child: Container(
                                  child: Icon(Icons.favorite,color: Colors.lightGreen,),
                                ),
                              ),
                            ],
                          ),
                          Image.asset("images/17.png",
                            height: 45,
                            width: 50,
                          ),
                          ListTile(
                            title:Text("Graps-green"),
                            subtitle:Text("Rs 140.00"),
                          ),
                        ]
                    ),
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5,left: 3,right: 3,bottom: 5),
                  child: Container(
                    child: Column(
                        children:<Widget>
                        [
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 5,right: 5),
                                child: Container(
                                  color: Colors.grey[350],
                                  child: Text("1KG"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 45,right: 5),
                                child: Container(
                                  child: Icon(Icons.favorite,color: Colors.lightGreen,),
                                ),
                              ),
                            ],
                          ),
                          Image.asset("images/18.png",
                            height: 45,
                            width: 50,
                          ),
                          ListTile(
                            title:Text("Apple"),
                            subtitle:Text("Rs 150.00"),
                          ),
                        ]
                    ),
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5,left: 3,right: 3,bottom: 5),
                  child: Container(
                    child: Column(
                        children:<Widget>
                        [
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 5,right: 5),
                                child: Container(
                                  color: Colors.grey[350],
                                  child: Text("12"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 50,right: 5),
                                child: Container(
                                  child: Icon(Icons.favorite_border),
                                ),
                              ),
                            ],
                          ),
                          Image.asset("images/19.png",
                            height: 45,
                            width: 50,
                          ),
                          ListTile(
                            title:Text("Banana"),
                            subtitle:Text("Rs 40.00"),
                          ),
                        ]
                    ),
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  )
              )
            ],
          ),
        ),
      ],
    );
  }


  Widget page2(){
    return Column(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Text("You are in tab 2")
            ],
          ),
        )
      ],
    );
  }
  Widget page3(){
    return Column(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Text("You are in tab 3")
            ],
          ),
        )
      ],
    );
  }
  Widget page4(){
    return Column(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Text("You are in tab 4")
            ],
          ),
        )
      ],
    );
  }
}