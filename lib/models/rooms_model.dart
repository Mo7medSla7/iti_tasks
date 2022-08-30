import 'package:flutter/material.dart';

class Room {
  String image;
  String name;
  String descriptions;

  Room(this.image, this.name, this.descriptions);
}

class RoomItem extends StatelessWidget {
  Room room;
  RoomItem(this.room);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(room.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image(image: NetworkImage(room.image)),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(room.descriptions,style: const TextStyle(fontSize: 20),),
            ),
            SizedBox(height: 10,),
            OutlinedButton(onPressed: (){}, child: const Text('Book Now'))
          ],
        ),
      ),
    );
  }
}
