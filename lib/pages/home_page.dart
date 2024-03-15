import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payfast/pages/budget_page.dart';
import 'notification_page.dart';
import 'add_budget_page.dart';

class HomPage extends StatelessWidget {
  const HomPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(width: 10,),
                        Text(
                          'Joel Prince',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage() ));                 },
                        icon: Icon(
                          Icons.circle_notifications_rounded,
                          size: 30,
                        )
                    )
                  ],
                ),
              ),

              SizedBox(height: 30,),

              Text(
                "70,000 USD",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                ),
              ),

              Text(
                "Total Balance",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18
                ),
              ),

              Container(
                height: 120,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xCFDBEFFF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.compare_arrows_outlined),
                          ),
                        ),

                        SizedBox(height: 6,),

                        Text("Tranfer")
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.spa_rounded),
                          ),
                        ),

                        SizedBox(height: 6,),

                        Text("Payment")
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.shield_moon),
                          ),
                        ),

                        SizedBox(height: 6,),

                        Text("Pay Bill")
                      ],
                    )

                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Budget',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AddBudgetPage() ));
                      },
                      child: Text(
                        'Add Budget',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 140,
                      height: 150,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.orangeAccent
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white
                            ),
                            child: IconButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => BudgetPage() ));
                                },
                                icon: Icon(Icons.account_balance)
                            ),
                          ),

                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '27,00 USD',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Home Rent',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      width: 140,
                      height: 150,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: CupertinoColors.systemGrey4
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white
                            ),
                            child: Icon(Icons.bus_alert_sharp),
                          ),

                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '3,00 USD',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Transport',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transaction',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    Text(
                      'See all',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 15),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: CupertinoColors.systemGrey5
                            ),
                            child: Icon(Icons.local_cafe, color: Colors.orangeAccent,),
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "Restaurant",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                    )
                                ),
                                Text(
                                    "19 March 2022",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: CupertinoColors.systemGrey2
                                    )
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),


                    Text(
                        "110 USD",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        )
                    )

                  ],
                ),
              ),

              Container(height: 1, color: CupertinoColors.systemGrey5,),

              Container(
                margin: EdgeInsets.only(top: 15),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: CupertinoColors.systemGrey5
                            ),
                            child: Icon(Icons.local_convenience_store_rounded, color: Colors.orangeAccent,),
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "Shopping",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                    )
                                ),
                                Text(
                                    "23 March 2022",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: CupertinoColors.systemGrey2
                                    )
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),


                    Text(
                        "100 USD",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        )
                    )

                  ],
                ),
              ),

            ],
          ),
        ),
      ),

      bottomNavigationBar:  NavigationBar(
        selectedIndex: 0,

        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: '',
            tooltip: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.wallet_rounded, color: CupertinoColors.systemGrey2,),
            label: '',
            tooltip: "Wallet",
          ),
          NavigationDestination(
            icon: Icon(Icons.savings, color: CupertinoColors.systemGrey2,),
            label: '',
            tooltip: 'Goal',
          ),
          NavigationDestination(
            icon: Icon(Icons.dashboard, color: CupertinoColors.systemGrey2,),
            label: '',
            tooltip: 'Dashboard',
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.black,
        child: Icon(
          Icons.document_scanner,
          color: Colors.white,
        ),
        shape: CircleBorder(
          eccentricity: 0,
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,

    );
  }
}
