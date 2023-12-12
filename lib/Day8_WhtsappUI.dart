import 'package:flutter/material.dart';
class WhatsAppdemo extends StatefulWidget {
  const WhatsAppdemo({super.key});

  @override
  State<WhatsAppdemo> createState() => _WhatsAppdemoState();
}

class _WhatsAppdemoState extends State<WhatsAppdemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp",style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xff128C7E),
        actions: [
          Icon(Icons.camera_alt_outlined,color: Colors.white,),
          Icon(Icons.search,color: Colors.white,),
          Icon(Icons.more_vert,color: Colors.white,),
        ],
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.people,color: Colors.white,)),
            Tab(
              child: Text("Chats", style: TextStyle(color: Colors.white),),
            ),
            Tab(
              child: Text("Status",style: TextStyle(color: Colors.white),),
            ),
            Tab(
              child: Text("Calls",style: TextStyle(color: Colors.white),),
            ),

          ],

        ),

      ),
      body: TabBarView(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.people),

            ),
            title: Text("New community"),
          ),
          ListView.separated(itemBuilder: (BuildContext context,int index){
            return ListTile(
              leading: CircleAvatar(

                backgroundImage: AssetImage("assets/image/Whatsapp.jpg"),

              ),
              title: Text("Contact Number"),
              subtitle: Text("Message"),
              
            );
          } ,
            separatorBuilder: (BuildContext context,int index) {
            return Divider();
    },
            itemCount: 10,
    ),
          Column(
            children: [
              ListTile(
                title: Text("Status"),
                trailing: Icon(Icons.more_vert),
              ),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/image/Whatsapp.jpg"),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: 80,
                            child: Text("My status",textAlign: TextAlign.center,),
                          ),
                        ],
                      ),
                    ),

                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/image/messi.jpg"),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 80,
                          child: Text("Messi",textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/image/Mohanlal.jpg"),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 80,
                          child: Text("Mohanlal",textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/image/Dhoni.jpg"),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 80,
                          child: Text("Dhoni",textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/image/Neymer.jpg"),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 80,
                          child: Text("Neymer",textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/image/Ronaldo.jpg"),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 80,
                          child: Text("Ronaldo",textAlign: TextAlign.center,),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              ListTile(
                title: Text("Channels"),
                trailing: Icon(Icons.add),
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                leading: Icon(Icons.link),
                title: Text("Create call linkl"),
                subtitle: Text("share a link for your whatsapp call"),
              ),
              Text("Recent"),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/messi.jpg"),
                ),
                title: Text("Messi"),
                subtitle:Text("Today,10.28 am"),
                trailing: Icon(Icons.call),

              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/Mohanlal.jpg"),
                ),
                title: Text("Mohanlal"),
                subtitle:Text("Today,11.10 am"),
                trailing: Icon(Icons.video_call),
              ),
    ListTile(
    leading: CircleAvatar(
    backgroundImage: AssetImage("assets/image/Dhoni.jpg"),
    ),
    title: Text("Dhoni"),
    subtitle:Text("Today,1.10 pm"),
    trailing: Icon(Icons.call),
    ),
            ],
          ),
        ],
      ),
    ),
    );
  }
}
