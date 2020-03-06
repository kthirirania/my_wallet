import 'package:flutter/material.dart';

class TransactionsWidget extends StatefulWidget {
  @override
  _TransactionsWidgetState createState() => _TransactionsWidgetState();
}

class _TransactionsWidgetState extends State<TransactionsWidget> {
  String dropdownValue = 'Recent';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  "Transactions",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Sort by",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        decoration: new BoxDecoration(
                          color: Color(0xffe8f2fc),
                          borderRadius: new BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            elevation: 0,
                            underline: Container(
                              color: Color(0xffe8f2fc),
                            ),
                            style: TextStyle(color: Colors.deepPurple),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>[
                              'Oldest',
                              'Recent',
                              'Highest',
                              'Lowest'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    color: Color(0xff153564),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        /*
        Expanded(
          child: Container(
            color: Colors.white,
            child: Container(
              margin: const EdgeInsets.only(right: 6, left: 6, bottom: 28),
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 12),
                  scrollDirection: Axis.vertical,
                  itemCount: Data.createLists()
                      .sublist(0, Data.createLists().length - 1)
                      .length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        title: Text(
                          UtilsFunctions.capitalizeSentence(
                              Data.createLists()[index].name.trim()),
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                        leading: LoadImage(
                          Data.createLists()[index].image,
                          48,
                          48,
                          12,
                          8,
                          0,
                          false,
                          Colors.grey[100],
                        ),
                        subtitle: new RichText(
                          text: TextSpan(
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: UtilsFunctions.convertDateFromString(
                                    Data.createLists()[index].date, "MMM dd"),
                              ),
                              TextSpan(
                                  text: ', at ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54)),
                              TextSpan(
                                text: UtilsFunctions.convertDateFromString(
                                    Data.createLists()[index].date, "hh:mm a"),
                              ),
                            ],
                          ),
                        ),
                        trailing: Text(
                          "\$" + Data.createLists()[index].amount.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ),
         */
      ],
    );
  }
}
