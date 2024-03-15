import 'package:flutter/material.dart';


class InputCards extends StatelessWidget {
  InputCards.a({super.key});

  String? labele;

  InputCards({this.labele});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text("$labele"),
          ),
        )
    );
  }
}



class AddBudgetPage extends StatelessWidget {
  const AddBudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text('Add Budget')),
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          )
      ),
      
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text('Whats the budget for?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),

          InputCards(labele: 'Budget category name'),
          InputCards(labele: 'Budget Amount'),
          InputCards(labele: 'Budget Notes'),
          InputCards(labele: 'Set Timeline'),
          InputCards(labele: 'Get an Emoji'),
          SizedBox(height: 15,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Auto add in every month',
                style: TextStyle(
                  fontSize: 15
                ),
              ),
              Switch(
                  value: false,
                  onChanged: (value) {},
              ),
            ],
          ),

          SizedBox(height: 15,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Reminder',
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              Switch(
                value: true,
                onChanged: (value) {},
                activeColor: Colors.white,
                activeTrackColor: Colors.orange,
              ),
            ],
          ),

          SizedBox(height: 15,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Expense Notification',
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              Switch(
                value: true,
                onChanged: (value) {},
                activeColor: Colors.white,
                activeTrackColor: Colors.orange,
              ),
            ],
          ),

          SizedBox(height: 15,),
          
          Container(
            height: 40,
            child: ElevatedButton(
                onPressed: (){}, 
                child: Text(
                  "Save",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
              ),

            ),
          )

        ],
      ),
    );
  }
}
