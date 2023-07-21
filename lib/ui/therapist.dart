import 'package:flutter/material.dart';

import '../util/hexcolor.dart';

Widget PeopleCard(BuildContext context,int index){
  if(index == 0){
    return Stack(
      children: [
        Container(
          margin:const EdgeInsets.only(left: 80.0),
          width: MediaQuery.of(context).size.width,
          height: 220.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60)
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Card(
                elevation: 7,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(child: Text("+BOOK",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w600),),onTap:() {},)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dr. Sneha Karki",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.w500,fontFamily: 'JosefinSans'),),
                          const SizedBox(height: 5,),
                          Text("Haldwani | Uttarakhand",style: const TextStyle(color: Colors.grey,fontFamily: 'Inter'),),
                          const SizedBox(height: 5,),
                          Text("Within Rs. 1600 ",style: TextStyle(color: Colors.green.shade300,fontWeight: FontWeight.w500,fontFamily: 'Inter'),),
                          const SizedBox(height: 5,),
                          Container(
                            width: 150,
                            child: LinearProgressIndicator(
                              backgroundColor: Colors.green.shade200,
                              minHeight: 5,
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                              value: 0.7,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0,left: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Reader | Writer | Poet",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontFamily: 'JosefinSans'),),
                          const SizedBox(height: 5,),
                          Text("Therapist | Psychologist",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    )

                  ],
                )
            ),
          ),
        ),
        Positioned(
            top : 25,
            left : 35,
            child : Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade400,
                image: DecorationImage(image: AssetImage("images/download.png")),
              ),
            )
        ),
      ]

    );
  }
  else if(index ==1 ){
    return Stack(
      children:[
        Container(
          margin:const EdgeInsets.only(left: 80.0),
          width: MediaQuery.of(context).size.width,
          height: 220.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60)
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Card(
                elevation: 7,
                color: Colors.white,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(child: Text("+BOOK",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w600),),onTap:() {},)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dr. Garvit Karki",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.w500,fontFamily: 'JosefinSans'),),
                          const SizedBox(height: 5,),
                          Text("Haldwani | Uttarakhand",style: const TextStyle(color: Colors.grey,fontFamily: 'Inter'),),
                          const SizedBox(height: 5,),
                          Text("Within Rs. 1400 ",style: TextStyle(color: Colors.green.shade300,fontWeight: FontWeight.w500,fontFamily: 'Inter'),),
                          const SizedBox(height: 5,),
                          Container(
                            width: 150,
                            child: LinearProgressIndicator(
                              backgroundColor: Colors.green.shade200,
                              minHeight: 5,
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                              value: 0.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0,left: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Reader | Writer | Poet",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontFamily: 'JosefinSans'),),
                          const SizedBox(height: 5,),
                          Text("Therapist | Psychologist",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    )

                  ],
                )
            ),
          ),
        ),
        Positioned(
            top : 25,
            left : 35,
            child : Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade400,
                image: DecorationImage(image: AssetImage("images/images.png")),
              ),
            )
        ),
      ]
    );
  }

  else if(index ==2 ){
    return Stack(
      children: [
        Container(
          margin:const EdgeInsets.only(left: 80.0),
          width: MediaQuery.of(context).size.width,
          height: 220.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60)
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Card(
                elevation: 7,
                color: Colors.white,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(child: Text("+BOOK",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w600),),onTap:() {},)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dr. Sneha Trivedi",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.w500,fontFamily: 'JosefinSans'),),
                          const SizedBox(height: 5,),
                          Text("Haldwani | Uttarakhand",style: const TextStyle(color: Colors.grey,fontFamily: 'Inter'),),
                          const SizedBox(height: 5,),
                          Text("Within Rs. 1500 ",style: TextStyle(color: Colors.green.shade300,fontWeight: FontWeight.w500,fontFamily: 'Inter'),),
                          const SizedBox(height: 5,),
                          Container(
                            width: 150,
                            child: LinearProgressIndicator(
                              backgroundColor: Colors.green.shade200,
                              minHeight: 5,
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                              value: 0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0,left: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Reader | Writer | Poet",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontFamily: 'JosefinSans'),),
                          const SizedBox(height: 5,),
                          Text("Therapist | Psychologist",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    )

                  ],
                )
            ),
          ),
        ),
        Positioned(
            top : 25,
            left : 35,
            child : Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade400,
                image: DecorationImage(image: AssetImage("images/download.png")),
              ),
            )
        ),
      ]
    );
  }

  else if(index ==3 ){
    return Stack(
      children: [
        Container(
          margin:const EdgeInsets.only(left: 80.0),
          width: MediaQuery.of(context).size.width,
          height: 220.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60)
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Card(
                elevation: 7,
                color: Colors.white,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(child: Text("+BOOK",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w600),),onTap:() {},)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dr. Tulika Chauhan",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.w500,fontFamily: 'JosefinSans'),),
                          const SizedBox(height: 5,),
                          Text("Haldwani | Uttarakhand",style: const TextStyle(color: Colors.grey,fontFamily: 'Inter'),),
                          const SizedBox(height: 5,),
                          Text("Within Rs. 1000 ",style: TextStyle(color: Colors.green.shade300,fontWeight: FontWeight.w500,fontFamily: 'Inter'),),
                          const SizedBox(height: 5,),
                          Container(
                            width: 150,
                            child: LinearProgressIndicator(
                              backgroundColor: Colors.green.shade200,
                              minHeight: 5,
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                              value: 0.1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0,left: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Reader | Writer | Poet",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontFamily: 'JosefinSans'),),
                          const SizedBox(height: 5,),
                          Text("Therapist | Psychologist",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    )

                  ],
                )
            ),
          ),
        ),
        Positioned(
            top : 25,
            left : 35,
            child : Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade400,
                image: DecorationImage(image: AssetImage("images/download.png")),
              ),
            )
        ),
      ]
    );
  }



  return Stack(
    children: [
      Container(
        margin:const EdgeInsets.only(left: 80.0),
        width: MediaQuery.of(context).size.width,
        height: 220.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60)
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Card(
              elevation: 7,
              color: Colors.white,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(child: Text("+BOOK",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w600),),onTap:() {},)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dr. Sneha Karki",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.w500,fontFamily: 'JosefinSans'),),
                        const SizedBox(height: 5,),
                        Text("Haldwani | Uttarakhand",style: const TextStyle(color: Colors.grey,fontFamily: 'Inter'),),
                        const SizedBox(height: 5,),
                        Text("Within Rs. 1600 ",style: TextStyle(color: Colors.green.shade300,fontWeight: FontWeight.w500,fontFamily: 'Inter'),),
                        const SizedBox(height: 5,),
                        Container(
                          width: 150,
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.green.shade200,
                            minHeight: 5,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                            value: 0.7,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0,left: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Reader | Writer | Poet",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontFamily: 'JosefinSans'),),
                        const SizedBox(height: 5,),
                        Text("Therapist | Psychologist",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  )

                ],
              )
          ),
        ),
      ),
      Positioned(
          top : 25,
          left : 35,
          child : Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade400,
              image: DecorationImage(image: AssetImage("images/download.png")),
            ),
          )
      ),
    ]
  );
}