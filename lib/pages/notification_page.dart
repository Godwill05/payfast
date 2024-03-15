import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NotifCards extends StatelessWidget {
  NotifCards.a({super.key});

  String? titre;
  String? sousTitre;
  IconData? icone;
  Color? couleurIcone;
  Color? couleurArriere;


  NotifCards({
    super.key,
    required this.titre,
    required this.sousTitre,
    required this.icone,
    this.couleurIcone,
    required this.couleurArriere
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: CupertinoColors.systemGrey6),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: couleurArriere,
              shape: BoxShape.circle
            ),
            child: Icon(
              icone,
              color: couleurIcone,
            ),
          ),
          title: Text('$titre',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Text('$sousTitre',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black87
            ),
          ),
        ),
      ),
    );
  }
}



class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(child: Text('Notification')),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        )
      ),

      body: ListView(padding: EdgeInsets.all(20),
          children: [
            Text('Today',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),

            NotifCards(titre: 'Get CashBack', sousTitre: 'You get 19 USD cashback', icone: Icons.wallet, couleurArriere: CupertinoColors.systemGrey5),
            NotifCards(titre: 'Transaction', sousTitre: 'Your transaction has been succed', icone: Icons.check_box, couleurArriere: Color(0xFF9EDAF8FF), couleurIcone: Colors.orange,),

            SizedBox(height: 20,),

            Text('Yesterday',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
            ),

            NotifCards(titre: 'Transaction', sousTitre: 'Your transaction has been succed', icone: Icons.check_box, couleurArriere: Color(0xFF9EDAF8FF), couleurIcone: Colors.orange),
            NotifCards(titre: 'Bil Pay', sousTitre: 'Your payment has been succed', icone: Icons.file_open, couleurArriere: CupertinoColors.systemGrey5),
            NotifCards(titre: 'Get CashBack', sousTitre: 'You get 19 USD cashback', icone: Icons.wallet, couleurArriere: CupertinoColors.systemGrey5),

            SizedBox(height: 20,),

            Text('22 March 2022',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
            ),

            NotifCards(titre: 'Transaction', sousTitre: 'Your transaction has been succed', icone: Icons.check_box, couleurArriere: Color(0xFF9EDAF8FF), couleurIcone: Colors.orange,),
            NotifCards(titre: 'Bil Pay', sousTitre: 'Your payment has been succed', icone: Icons.file_open, couleurArriere: CupertinoColors.systemGrey5),
            NotifCards(titre: 'Get CashBack', sousTitre: 'You get 19 USD cashback', icone: Icons.wallet, couleurArriere: CupertinoColors.systemGrey5),
          ],
        ),
    );
  }
}