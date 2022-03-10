import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get mainAxisAlignment => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT Department',
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => PopupMenuButton(
              icon:
                  Icon(Icons.menu), //don't specify icon if you want 3 dot menu
              color: Colors.white,
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    "Vision",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text(
                    "Academics",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text(
                    "Placement",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ),
                 PopupMenuItem<int>(
                  value: 3,
                  child: Text(
                    "HOD",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ),
              ],
              onSelected: (value) => {
                if (value == 0)
                  {
                    vision(context),
                  }
                else if (value == 1)
                  {
                    academics(context),
                  }
                else if (value == 2)
                  {
                    placement(context),
                  }
                else 
                  {
                    HOD(context),
                  }
                
              },
            ),
          ),


          
          title: Center(child : Text("Welcome To IT Department of FAMT SEM VI", style: TextStyle(fontFamily: 'Raleway')),),
          backgroundColor: Colors.red,
        ),
        body: Builder(
          builder: (context) => Center(
            child: Column(
              children: [
                Image.network(
                  'https://images.shiksha.com/mediadata/images/1547198255phpre9PGZ.jpeg',
                  height: 400,
                
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(
                      child: Text('BI Lab' ,
                    style: TextStyle(color: Colors.white,),),
                      onPressed: () => LAB1(context),
                      color: Colors.green,
                      padding: EdgeInsets.all(20.0),
                    ),
                    RaisedButton(
                      child: Text('Web Lab',
                    style: TextStyle(color: Colors.white,),),
                      onPressed: () => LAB2(context),
                      color: Colors.green,
                      padding: EdgeInsets.all(20.0),
                    ),
                    RaisedButton(
                      child: Text('Sensor Lab',
                    style: TextStyle(color: Colors.white,),),
                      onPressed: () => LAB3(context),
                      color: Colors.green,
                      padding: EdgeInsets.all(20.0),
                      
                    ),
                    RaisedButton(
                      child: Text('MAD & PWA Lab',
                    style: TextStyle(color: Colors.white,),),
                      onPressed: () => LAB4(context),
                      color: Colors.green,
                      padding: EdgeInsets.all(20.0),
                      
                    ),
                    RaisedButton(
                      child: Text('DS using Python Skill based Lab',
                    style: TextStyle(color: Colors.white,),),
                      onPressed: () => LAB5(context),
                      color: Colors.green,
                      padding: EdgeInsets.all(20.0),
                      
                    ),
                  
                  ],
                ),

                SizedBox(
                  height: 70,
                ),
                
                RaisedButton(
                  child: Text('Contact Us',
                    style: TextStyle(color: Colors.white,),),
                  onPressed: () => contactUs(context),
                  color: Colors.purple,
                  padding: EdgeInsets.all(25.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us',textAlign: TextAlign.center, style: TextStyle(color: Colors.purple[600],fontWeight: FontWeight.bold),),
          content: Text('Email ID: hodit@famt.ac.in\n\nAddress: FAMT, P- 60, P- 60/1, MIDC, Mirjole Block, Ratnagiri - 415639\n\nPhone No: 7559463770'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child : Text('Welcome To BI Lab',
          style: TextStyle(color: Colors.purple[600] , fontWeight: FontWeight.bold,fontFamily: 'Raleway'),),),
          content: Column(
            children: [
              Image.network(
                'https://images.shiksha.com/mediadata/images/1547198350phpWXQrB0.jpeg',
                height: 350,
              ),
              Text("\nIncharge: Atul Yadav", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
	            Text("\nOn successful completion, of course, learner/student will be able to:\n Identify sources of Data for mining and perform data exploration"),
              
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child : Text('Welcome To Web Lab',
          style: TextStyle(color: Colors.purple[600] , fontWeight: FontWeight.bold, fontFamily: 'Raleway'),),),
          content: Column(
            
            children: [
              Image.network(
                'https://images.shiksha.com/mediadata/images/1637922115phpDFaiyx.jpeg',
                height: 350,
              ),
                Text("\nIncharge: Prof. Amar Palwankar", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
                Text("\nOn successful completion, of course, learner/student will be able to:\nUnderstand open source tools for web analytics and semantic web apps development",maxLines: 10,
    overflow: TextOverflow.ellipsis,
    softWrap: false,)
                
            ],
            
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB3(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child : Text('Welcome To Sensor Lab',
          style: TextStyle(color: Colors.purple[600] , fontWeight: FontWeight.bold, fontFamily: 'Raleway'),),),
          content: Column(
            children: [
              Image.network(
                'https://images.shiksha.com/mediadata/images/1585826982php0LbPhv.jpeg',
                height: 350,
              ),
              Text("\nIncharge: Girish Bhide", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\nOn successful completion, of course, learner/student will be able to:\n Differentiate between various wireless communication technologies based on the range of communication, cost, propagation delay, power and throughput.")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB4(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child : Text('Welcome To MAD & PWA Lab',
          style: TextStyle(color: Colors.purple[600] , fontWeight: FontWeight.bold, fontFamily: 'Raleway'),),),
          content: Column(
            children: [
              Image.network(
                'https://media.istockphoto.com/photos/empty-computer-room-with-monitors-and-keyboards-in-a-row-for-pupils-picture-id1136866872?k=20&m=1136866872&s=612x612&w=0&h=I7UrdifEf0zIU4WegQ__o4wOmKqHid_OpDSILwJ2L2w=',
                height: 350,
              ),
              Text("\nIncharge: Ashish Vartak", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\nOn Completion of the course the learner/student should be able to:\nUnderstand cross platform mobile application development using Flutter framework")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB5(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child : Text('Welcome To DS using Python Skill based Lab',
          style: TextStyle(color: Colors.purple[600] , fontWeight: FontWeight.bold, fontFamily: 'Raleway'),),),
          content: Column(
            children: [
              Image.network(
                'data:image/jpeg;base64,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',
                height: 350,
              ),
              Text("\nIncharge: Swati Powar", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\nOn successful completion, of course, learner/student will be able to:\n Understand the concept of Data science process and associated terminologies o solve real-world problems")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void vision(BuildContext context) {
    // print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:Text('Vision & Mission of FAMT',textAlign: TextAlign.center, style: TextStyle(color: Colors.purple[600],fontWeight: FontWeight.bold, fontFamily: 'Raleway'),),
          content: Column(
            children: [
             Text("\n\nVision",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
             Text("\nThe academy aspires to nurture students as leaders who are in tune with global trends, equipped with engineering knowledge and practical skills, to excel in creativity and innovation in order to play their part in technological advancement of the nation."),
             Text("\n\nMission",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
             Text("\n1) To become foremost seat of advanced technical learning as a center of excellence in the region.\n2) To offer state of the art facilities and quality education at affordable cost.\n3)To inculcate in students the culture of ‘Play Hard and Play Fair’.\n4) To advance sustainable development in the region through opportunities for entrepreneurship and industry-institute interaction.\n5) To create a generation of young professionals who appreciate in all its aspects the necessity of balance between technological advances and traditional values.")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }


  void academics(BuildContext context) {
    // print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Academics',textAlign: TextAlign.center, style: TextStyle(color: Colors.purple[600],fontWeight: FontWeight.bold, fontFamily: 'Raleway'),),
          content: Column(
            children: [
              Image.network(
                'https://thumbs.dreamstime.com/b/academics-to-school-knowledge-teamwork-learning-training-academi-93399308.jpg',
                height: 350,
              ),
              Text("\n\nIn this high-tech era, information is something without which industry, individuals cannot survive, and their success depends on the ability to acquire accurate and timely information. Keeping this in mind FAMT started the Bachelor of Engineering program in Information Technology (IT) from academic session 2001-2002. The emphasis of B.E. in Information Technology curriculum is on Computer Science, Software Development, Networking, Communication, Web Engineering, Security, Multimedia processing, IoT, Cloud Computing, Data Analytics, and Soft Computing.")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close', style: TextStyle(fontFamily: 'Times New Roman')),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void placement(BuildContext context) {
    // print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Placement',textAlign: TextAlign.center, style: TextStyle(color: Colors.purple[600],fontWeight: FontWeight.bold, fontFamily: 'Raleway'),),
          content: Column(
            children: [
              Image.network(
                'https://5.imimg.com/data5/LE/PP/MY-3104603/job-placement-services-500x500.jpg',
                height: 350,
              ),
              Text("\n\nTraining and Placement Cell actively interfaces with the reputed organizations for arranging interviews and campus drives. The cell endeavours to sort out specialized courses, workshops and corporate training sessions. Industry expert are invited intermittently to improve the knowledge of our understudy with the most recent technological developments and industry hones. We foster graduates who are well prepared to deal with the working standards of the industry in public and private sectors and help each understudy to characterize his/her career interest through expert’s advice.\nOUR GOALS\n1)To organize Campus Interviews for pre-final and final year students\n2)To arrange Industry – Institution interaction to establish a rapport with the industry"),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

    void HOD(BuildContext context) {
    // print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'HoD’s Desk',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway',
              color: Colors.purple[600],
            ),
          ),
          content: Column(
            children: [
              Image.network(
                'https://media-exp1.licdn.com/dms/image/C4E0BAQFYzY5tSxs5Lg/company-logo_200_200/0/1519905050353?e=2159024400&v=beta&t=JcALghl66fjfMHxQpIBe3qBXG7oyVCKpexrq4D7_frY',
              ),
              Text(
                  "Recently in February 2017, the department’s HoD Dr. Vinayak A Bharadi and Prof. Santosh V Jadhav got a NVIDIA GPU Research Grant of Rs. 1.5 Lacs in the form of Titan X Pascal GPU (Graphics Processing Unit) to support research. \n\nInformation Technology department also has academic collaboration with NVIDIA for three subjects namely Soft Computing, Big Data Analytics, and Robotics. \n\nIt Department has conducted Bridge courses in Mobile Cloud Computing, MongoDB Connectivity, Online Payments for E-Biz to make students industry ready. \n\nBesides this It Department has done a tie-up with Microsoft for conducting Training and Certification for students as well as staff in the domain of IoT and Cyber Security, first session of this training was conducted in Sept 2017.")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }


  
}