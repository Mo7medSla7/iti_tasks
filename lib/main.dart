import 'package:flutter/material.dart';
import 'package:iti_flutter/helpers/http_helper.dart';
import 'package:iti_flutter/models/rooms_model.dart';
import 'package:iti_flutter/to_do.dart';

import 'models/movie_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: ToDoList(),
    );
  }
}


class Task1Screen extends StatelessWidget {
  const Task1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.grey[600],
        leading: const Icon(Icons.arrow_back,),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.favorite_border),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      backgroundColor:Colors.grey[700],
      body: Center(
        child: Column(
          children:  [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 150,
                width: 150,
                child: const CircleAvatar(
                  backgroundImage: NetworkImage('https://static-cse.canva.com/blob/931214/1600w-EW4cggXkgbc.jpg'),
                  radius: 20,

                ),
              ),
            ),
            const Text(
              'Taylor Watson',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(top: 6.0),
              child: Text(
                'Software Developer',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(top: 20.0),
              child: Text(
                'Create great projects',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            const Text(
              '@TwWorks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,8.0,8,0),
                  child: Container(
                    height: 30,
                    width: 30,
                    child:Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkWaJ_SN_V7DEYpjy2_lD4oQzSAm6nwmoXwBX8g0d-3wtbYzbh_3T-YymbMDB5wZY8BSg&usqp=CAU'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,8.0,8,0),
                  child: Container(
                    height: 30,
                    width: 30,
                    child:Image.network('https://i.pinimg.com/originals/5f/0c/25/5f0c255d69fa5c24701c547d35ceb5ae.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,8.0,8,0),
                  child: Container(
                    height: 30,
                    width: 30,
                    child:Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe4pKXtxZMSxu9CkZIBcPPd0ILumFSYFhVxDWMWNz6cT-ih5APjEAqYLHb4aCD9JIsLlQ&usqp=CAU'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage('https://seeklogo.com/images/D/dribbble-logo-143FF96D65-seeklogo.com.png'),
                          radius: 20,

                        ),
                      ),
                      const Text(
                        '1.5k',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const Text(
                        'Followers',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage('https://seeklogo.com/images/B/behance-icon-logo-E2F066C7C9-seeklogo.com.png'),
                          radius: 20,

                        ),
                      ),
                      const Text(
                        '1.2k',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const Text(
                        'Followers',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Task2Screen extends StatelessWidget {
  const Task2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.yellow,
        leading: const Icon(
          Icons.arrow_back_ios_sharp,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            height: 120,
            width: double.infinity,
            color: Colors.yellow,
            child: const Padding(
              padding:  EdgeInsets.all(20.0),
              child:  Text(
                'Account Settings',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 120,
              width: 120,
              child: const CircleAvatar(
                backgroundImage: NetworkImage('https://static-cse.canva.com/blob/931214/1600w-EW4cggXkgbc.jpg'),
                radius: 20,

              ),
            ),
          ),
          const Text(
            'Allison Perry',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              )
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Edit profile',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0).copyWith(bottom: 15),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Phone Number',
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                          ) ,
                          ),
                          Text('267908173122',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.edit),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey,
                  height: 1,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0).copyWith(bottom: 15,top: 15),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Email',
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                          ) ,
                          ),
                          Text('allison@mail.com',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.edit),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey,
                  height: 1,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0).copyWith(bottom: 15,top: 15),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Password',
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                          ) ,
                          ),
                          Text('********',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.edit),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Text(
              'Logout',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.red
              )
          ),
          Padding(
            padding: const EdgeInsets.all(20.0).copyWith(top: 10),
            child: Container(
              color: Colors.red,
              height: 2,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}

class Task3Screen extends StatefulWidget {
  const Task3Screen({Key? key}) : super(key: key);

  @override
  State<Task3Screen> createState() => _Task3ScreenState();
}

class _Task3ScreenState extends State<Task3Screen> {

  List<Room> rooms = [
    Room(  'https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg',
        'King Room',
      'A room with a king size bad',),
    Room('https://cdn.discordapp.com/attachments/993237828072915015/1013778371185999992/unknown.png',
        'Double Room',
      'a room for two person',
),
    Room(    'https://images-ext-2.discordapp.net/external/M-U8dIgPjTHkPlpaxgRmA6jyxVQeBj7KcCQPb5CrSdo/https/www.italianbark.com/wp-content/uploads/2018/01/hotel-room-design-trends-italianbark-interior-design-blog.jpg?width=855&height=570',
        'Family Room',
      'a room for three or people ',
),
    Room(    'https://s3-ap-southeast-1.amazonaws.com/blog-ph/wp-content/uploads/2016/08/12091211/hotel-room-marina-bay-sands.jpg',
        'Vip Room',
      'a room for vip person',
),
    Room(    'https://cdn.discordapp.com/attachments/993237828072915015/1013778163186274435/unknown.png',
        'Single Room',
      'a room for one person',
),
    Room(    'https://cdn.discordapp.com/attachments/993237828072915015/1013778371496394763/unknown.png',
        'High Room',
      'a room for high person',
),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rooms List'),
        // backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: rooms.map((room) =>  InkWell(
            splashColor: Colors.grey,
            onTap: (){
              Room item = room;
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RoomItem(item)
              ));
            },
            child: Card(
              elevation: 8,
              color: Colors.white,
              child: Container(
                height: 200,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.network(
                              room.image,
                              height: 100),
                          Text(
                            room.name,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange
                            ),
                          ),
                          const Icon(Icons.arrow_drop_up_sharp),
                        ],
                      ),
                    ),
                    Text(
                      room.descriptions,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ).toList(),
        ),
      ),
            // InkWell(
            //   splashColor: Colors.grey,
            //   onTap: (){
            //     Room item = rooms[currentIndex+1];
            //     Navigator.push(context, MaterialPageRoute(builder: (context)=>RoomItem(item)
            //     ));
            //   },
            //   child: Card(
            //     elevation: 8,
            //     color: Colors.white,
            //     child: Container(
            //       height: 200,
            //       width: double.infinity,
            //       child: Column(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.all(20.0),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceAround,
            //               children: [
            //                 Image.network(
            //                   rooms[currentIndex+1].image,
            //                     height: 100,
            //                 ),
            //                 Text(
            //                   rooms[currentIndex+1].name,
            //                   style: const TextStyle(
            //                     fontSize: 20,
            //                     fontWeight: FontWeight.bold,
            //                     color: Colors.orange
            //                   ),
            //                 ),
            //                 const Icon(Icons.arrow_drop_up_sharp),
            //               ],
            //             ),
            //           ),
            //           Text(
            //             rooms[currentIndex+1].descriptions,
            //             style: const TextStyle(
            //                 fontSize: 16,
            //                 fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 20.0),
            //   child: OutlinedButton(
            //       onPressed: (){
            //         setState(() {
            //           if(currentIndex < 3)
            //             currentIndex= currentIndex + 2;
            //           else
            //             currentIndex = 0;
            //         });
            //       },
            //       child: const Text(
            //         'Next',
            //         style:  TextStyle(
            //           fontSize: 18,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.orange
            //       ),)),
            // ),
    );
  }
}

class Task4Screen extends StatelessWidget {
  const Task4Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page',style: TextStyle(color: Colors.white),),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage('https://images.unsplash.com/photo-1596386461350-326ccb383e9f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aG90ZWxzfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),),
          ),
        ),
          OutlinedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Task3Screen()));
            },
            child: const Text(
              'Explore our rooms'
            ),
          ),
        ],
      ),
    );
  }
}

class Task5Screen extends StatefulWidget {
  const Task5Screen({Key? key}) : super(key: key);

  @override
  State<Task5Screen> createState() => _Task5ScreenState();
}

class _Task5ScreenState extends State<Task5Screen> {
  int selected = 0;

  List<String> appBarTitle = [
    'Home',
    'Movies List',
    'Search',
  ];

  List<Widget> screens =[
    Center(child: Text('Home Screen'),),
    filmsGrid(movies),
    Center(child: Text('Search'),),
  ];
  static List<Movie> movies = [];

  // @override
  // void initState() {
  //   super.initState();
  //   callApi(movies);
  // }
  callApi(var list) async{
    List<Movie> movies = await HttpHelper.getMovies();
    print(movies.length);

    // setState((){
    // list = movies;
    // });
  }

  @override
  Widget build(BuildContext context) {
    callApi(movies);
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle[selected]),
      ),
      body: screens[selected],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black54,
        backgroundColor: Colors.white,
        elevation: 0,
        type: BottomNavigationBarType.shifting,
        onTap: (index){
          setState(() {
            selected = index;
          });
        },
        currentIndex: selected,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list,),
              label: 'List',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,),
              label: 'fillter',
          ),
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                title: const Text('Profile'),
                onTap: () {Navigator.push(context,
                    MaterialPageRoute(
                        builder:(context)=> drawerItem('Profile')));},
              ),
              ListTile(
                title: const Text('Login'),
                onTap: () {Navigator.push(context,
                    MaterialPageRoute(
                        builder:(context)=> drawerItem('Login')));},
              ),
              ListTile(
                title: const Text('Sign up'),
                onTap: () {Navigator.push(context,
                    MaterialPageRoute(
                        builder:(context)=> drawerItem('Sign up')));},
              ),
              ListTile(
                title: const Text('Setting'),
                onTap: () {Navigator.push(context,
                    MaterialPageRoute(
                        builder:(context)=> drawerItem('Setting')));},
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget drawerItem(String title)=>Scaffold(
    appBar: AppBar(
      title: Text(title),
    ),
    body: Center(
      child:Text(title,
        style:  const TextStyle(
          fontSize: 24
        ),
      ),
    ),
  );
}



Widget filmsGrid(var items) {
  // List<Movie> movies=[];
  // callApi(movies);
  return GridView.builder(
    itemCount: items.length,
  padding: EdgeInsets.all(20.0),
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 2/3,
  ), itemBuilder: (BuildContext context, int index) {
    return gridItem(items[index]);
  },
  );
}
Widget gridItem(Movie item)=> Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Column(

    children: [

      Expanded(

        child: Image(

          fit: BoxFit.cover,

          image: NetworkImage(item.image),

        ),

      ),

      Padding(

        padding: const EdgeInsets.only(top: 8.0),

        child: Row(

          children: [

            Text(item.title),

            Spacer(),

            Text(item.vote),

            Icon(Icons.star_rate_rounded,color: Colors.amber,),

          ],

        ),

      )

    ],

  ),
);


