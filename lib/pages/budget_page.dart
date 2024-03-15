import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'add_budget_page.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text('Budget')),
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
          Row(
            children: [
              Text(
                "8000 USD",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(width: 20,),

              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    border: Border.all(color: CupertinoColors.systemGrey4),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Icon(Icons.add),
              )
            ],
          ),

          Text(
            "Total Budget",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15
            ),
          ),

          Container(
            height: 150,
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.only(top: 20, left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xCFDBEFFF),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    Text(
                      "saving Goal",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    SizedBox(height: 15,),

                    Container(
                      height: 35,
                      width: 110,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(
                        "Make a Plan",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 130,
                  width: 130,
                  color: Colors.blue,
                  child: Image.asset("name"),
                )
              ],
            ),
          ),

          SizedBox(height: 30,),

          Text(
            "Budgets of March 2022",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 15),
            height: 220,
            decoration: BoxDecoration(
                color: Color(0xFFEAE0FA),
                borderRadius: BorderRadius.circular(25)
            ),
            child: Container(
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                children: [
                  Text(
                    "Home Rent",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  SizedBox(height: 30,),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                        child: Icon(Icons.account_balance),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "01 March 2022",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "Start",
                            style: TextStyle(
                                fontSize: 14,
                                color: CupertinoColors.systemGrey2
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                  SizedBox(height: 30,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "27,00 USD",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "Amount",
                            style: TextStyle(
                                fontSize: 17,
                                color: CupertinoColors.systemGrey2
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "31 March 2022",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "Exp",
                            style: TextStyle(
                                fontSize: 14,
                                color: CupertinoColors.systemGrey2
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 30),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xCFDBEFFF),
                borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15, left: 15, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Budget of March",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "8,000 USD",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15, left: 15, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("00",
                        style: TextStyle(
                            color: Colors.orangeAccent
                        ),
                      ),
                      Container(height: 3, width: 200, color: Colors.orangeAccent,),
                      Text("100",
                        style: TextStyle(
                            color: Colors.orangeAccent
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          Container(
            height: 40,
            margin: EdgeInsets.only(top: 25),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddBudgetPage() ));
              },
              child: Text(
                "Add Budget",
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
