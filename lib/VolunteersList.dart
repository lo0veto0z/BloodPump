import 'package:blood_pump/writedata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;



class VolunteersList extends StatefulWidget {
  @override
  _VolunteersListState createState() => _VolunteersListState();
}

class _VolunteersListState extends State<VolunteersList> {


  List UserProfileList =[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchDatabaseList();

  }

  fetchDatabaseList() async {
    dynamic resultant = await writeData().getUsersList();

    if (resultant == null) {
      print("Unable to retreive");
    }

    else {
      try {
        setState(() {
          UserProfileList = resultant;
          print(UserProfileList);
          print('2 done');
        });
      }
      catch (e) {
        print(e);
        print('not');
      }
    }
  }
  dynamic img;
  Future getAvatar()async {

   img= await http.get('https://joeschmoe.io/api/v1/random');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: ListView.builder(
          itemCount : UserProfileList.length ,
          itemBuilder : (context,index){

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title:Text(UserProfileList[index]['name']) ,
                  subtitle: Text(UserProfileList[index]['phone']),
                  leading: CircleAvatar(

                    backgroundImage: NetworkImage('https://ui-avatars.com/api/?name=${UserProfileList[index]['name']}'),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
