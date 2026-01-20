import 'package:demo_app/Lec_84_db_Helper.dart';
import 'package:flutter/material.dart';

class Lec84NoteApp extends StatefulWidget {
  const Lec84NoteApp({super.key});

  @override
  State<Lec84NoteApp> createState() => _Lec84State();
}

class _Lec84State extends State<Lec84NoteApp> {

  // Controllers
  TextEditingController titleCtrlr = TextEditingController();
  TextEditingController descCtrlr = TextEditingController();

  List<Map<String, dynamic>> allNotes = [];

  DBHelper? dbRef;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    dbRef = DBHelper.getInstance;

    getNotes();
  }

  void getNotes() async {
    allNotes = await dbRef!.getAllNotes();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Notes"))),
      body: allNotes.isNotEmpty
          ? ListView.builder(
              itemCount: allNotes.length,
              itemBuilder: (_, index) {
                return ListTile(
                  leading: Text('${index + 1}'),
                  title: Text(allNotes[index][DBHelper.COLUMN_TITLE]),
                  subtitle: Text(allNotes[index][DBHelper.COLUMN_DESC]),
                  trailing: SizedBox(
                    width: 50,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            titleCtrlr.text = allNotes[index][DBHelper.COLUMN_TITLE];
                            descCtrlr.text = allNotes[index][DBHelper.COLUMN_DESC];
                            showModalBottomSheet(context: context, builder: (context) {
                              return getBottomSheetWidget(
                                isUpdate: true,
                                SrNoVal: allNotes[index][DBHelper.COLUMN_SRNO],
                              );
                            });
                          },
                          child: Icon(Icons.edit)
                        ),
                        SizedBox(width: 2,),
                        InkWell(
                          onTap: () async {
                            bool check = await dbRef!.deleteNote(mSrNo: allNotes[index][DBHelper.COLUMN_SRNO]);
                            if(check) {
                              getNotes();
                            }
                          },
                          child: Icon(Icons.delete, color: Colors.red,),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          : Center(child: Text("No Notes yet!!!")),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          titleCtrlr.clear();
          descCtrlr.clear();
          showModalBottomSheet(context: context, builder: (context) {
            return getBottomSheetWidget();
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget getBottomSheetWidget({bool isUpdate = false, int SrNoVal = 0}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Text(
            isUpdate ? "Update Note" : "Add Note",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'
            ),
          ),
          SizedBox(height: 21,),
          TextField(
            controller: titleCtrlr,
            decoration: InputDecoration(
              label: Text("Title*"),
              hintText: "Enter Note title",
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
              ),
            ),
          ),
          SizedBox(height: 13,),
          TextField(
            controller: descCtrlr,
            maxLines: 5,
            decoration: InputDecoration(
              label: Text("Desc*"),
              hintText: "Enter Note desc",
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
              ),
            ),
          ),
          SizedBox(height: 13,),
          Row(
            children: [
              // Add note btn
              Expanded(
                child: OutlinedButton(
                  onPressed: () async {

                    var titleVal = titleCtrlr.text;
                    var descVal = descCtrlr.text;

                    if(titleVal.isNotEmpty && descVal.isNotEmpty) {
                      bool check = isUpdate ? await dbRef!.updateNote(mTitle: titleVal, mDesc: descVal, mSrNo: SrNoVal) : await dbRef!.addNote(mTitle: titleVal, mDesc: descVal);
                      if(check) {
                        getNotes();
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please fill all the required blanks!!!")));
                    }

                    titleCtrlr.clear();
                    descCtrlr.clear();

                    Navigator.pop(context);
                  },
                  child: Text(
                    isUpdate ? "Update Note" : "Add Note"
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                      side: BorderSide(
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 9,),
              // Clear note btn
              Expanded(
                child: OutlinedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("Clear"),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                      side: BorderSide(
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
