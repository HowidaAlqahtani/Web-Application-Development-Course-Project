

 // Generating the survey summary by getting the question heading from the XML file using AJAX 
           function load() {

              var CDCllection = new XMLHttpRequest();

              CDCllection.onreadystatechange = function () {

                if (this.readyState == 4 && this.status == 200) {

                  Summary(this);

                }

              };

              CDCllection.open("GET", "xmlSurvey.xml", true);

              CDCllection.send();

            }

    function Summary(xml) 
    {
    window.alert("THANK YOU!! \n You can scroll down to find a summary of your survey");

              // Using AJAX
              var content = xml.responseXML;
              var x = content.getElementsByTagName("question1");
              var t1 = x[0].getElementsByTagName("question_text")[0].childNodes[0].nodeValue 

    //Using AJAX with DOM
    var question1_result;
    var q1_o1 = document.getElementById('radio_1');
    var q1_o2 = document.getElementById('radio_2');
    var q1_o3 = document.getElementById('radio_3');
        if(q1_o1.checked == true) {   
                 question1_result = q1_o1.value;   
        } else if(q1_o2.checked == true) {  
                 question1_result = q1_o2.value;    
        } else if(q1_o3.checked == true) {  
                 question1_result = q1_o3.value;    
        }   

              var content2 = xml.responseXML;
              var x2 = content.getElementsByTagName("question2");
              var t2 = x2[0].getElementsByTagName("question_text")[0].childNodes[0].nodeValue

    var question2_result;
    var q2_o1 = document.getElementById('radio_4');
    var q2_o2 = document.getElementById('radio_5');
    var q2_o3 = document.getElementById('radio_6');
        if(q2_o1.checked == true) {   
                 question2_result = q2_o1.value;   
        } else if(q2_o2.checked == true) {  
                 question2_result = q2_o2.value;    
        } else if(q2_o3.checked == true) {  
                 question2_result = q2_o3.value;    
        }  

              var content3 = xml.responseXML;
              var x3 = content.getElementsByTagName("question3");
              var t3 = x3[0].getElementsByTagName("question_text")[0].childNodes[0].nodeValue

    var question3_result;
    var q3_o1 = document.getElementById('radio_7');
    var q3_o2 = document.getElementById('radio_8');
    var q3_o3 = document.getElementById('radio_9');
        if(q3_o1.checked == true) {   
                 question3_result = q3_o1.value;   
        } else if(q3_o2.checked == true) {  
                 question3_result = q3_o2.value;    
        } else if(q3_o3.checked == true) {  
                 question3_result = q3_o3.value;    
        }  	 

              var content4 = xml.responseXML;
              var x4 = content.getElementsByTagName("question4");
              var t4 = x4[0].getElementsByTagName("question_text")[0].childNodes[0].nodeValue


    var question4_result;
    var q4_o1 = document.getElementById('radio_10');
    var q4_o2 = document.getElementById('radio_11');
    var q4_o3 = document.getElementById('radio_12');
        if(q4_o1.checked == true) {   
                 question4_result = q4_o1.value;   
        } else if(q4_o2.checked == true) {  
                 question4_result = q4_o2.value;    
        } else if(q4_o3.checked == true) {  
                 question4_result = q4_o3.value;    
        }  

              var content5 = xml.responseXML;
              var x5 = content.getElementsByTagName("question5");
              var t5 = x5[0].getElementsByTagName("question_text")[0].childNodes[0].nodeValue

    var question5_result;
    var q5_o1 = document.getElementById('radio_13');
    var q5_o2 = document.getElementById('radio_14');
    var q5_o3 = document.getElementById('radio_15');
        if(q5_o1.checked == true) {   
                 question5_result = q5_o1.value;   
        } else if(q5_o2.checked == true) {  
                 question5_result = q5_o2.value;    
        } else if(q5_o3.checked == true) {  
                 question5_result = q5_o3.value;    
        }  	

              var content6 = xml.responseXML;
              var x6 = content.getElementsByTagName("question6");
              var t6 = x6[0].getElementsByTagName("question_text")[0].childNodes[0].nodeValue

    var question6_result;
    var q6_o1 = document.getElementById('radio_16');
    var q6_o2 = document.getElementById('radio_17');
    var q6_o3 = document.getElementById('radio_18');
        if(q6_o1.checked == true) {   
                 question6_result = q6_o1.value;   
        } else if(q6_o2.checked == true) {  
                 question6_result = q6_o2.value;    
        } else if(q6_o3.checked == true) {  
                 question6_result = q6_o3.value;    
        }  


     var paragraph_for_appending = document.createElement("P");
     var sp = " : ";

     var question1 = document.createTextNode( t1 );
     var sp1 = document.createTextNode( sp );
     var answer_for_question1 = document.createTextNode( question1_result ); 
     var br1 = document.createElement('br');


     var question2 = document.createTextNode( t2 );
     var sp2 = document.createTextNode( sp );
     var answer_for_question2 = document.createTextNode( question2_result ); 
     var br2 = document.createElement('br');


     var question3 = document.createTextNode( t3 );
     var sp3 = document.createTextNode( sp );
     var answer_for_question3 = document.createTextNode( question3_result ); 
     var br3 = document.createElement('br');

     var question4 = document.createTextNode( t4);
     var sp4 = document.createTextNode( sp );
     var answer_for_question4 = document.createTextNode( question4_result ); 
     var br4 = document.createElement('br');

     var question5 = document.createTextNode( t5 );
     var sp5 = document.createTextNode( sp );
     var answer_for_question5 = document.createTextNode( question5_result ); 
     var br5 = document.createElement('br');

     var question6 = document.createTextNode( t6 );
     var sp6 = document.createTextNode( sp );
     var answer_for_question6 = document.createTextNode( question6_result ); 
     var br6 = document.createElement('br');
     var br7 = document.createElement('br');


    paragraph_for_appending.appendChild(question1);
    paragraph_for_appending.appendChild(sp1);
    paragraph_for_appending.appendChild(answer_for_question1);
    paragraph_for_appending.appendChild(br1);

    paragraph_for_appending.appendChild(question2);
    paragraph_for_appending.appendChild(sp2);
    paragraph_for_appending.appendChild(answer_for_question2);
    paragraph_for_appending.appendChild(br2);

    paragraph_for_appending.appendChild(question3);
    paragraph_for_appending.appendChild(sp3);
    paragraph_for_appending.appendChild(answer_for_question3);
    paragraph_for_appending.appendChild(br3);

    paragraph_for_appending.appendChild(question4);
    paragraph_for_appending.appendChild(sp4);
    paragraph_for_appending.appendChild(answer_for_question4);
    paragraph_for_appending.appendChild(br4);

    paragraph_for_appending.appendChild(question5);
    paragraph_for_appending.appendChild(sp5);
    paragraph_for_appending.appendChild(answer_for_question5);
    paragraph_for_appending.appendChild(br5);

    paragraph_for_appending.appendChild(question6);
    paragraph_for_appending.appendChild(sp6);
    paragraph_for_appending.appendChild(answer_for_question6);
    paragraph_for_appending.appendChild(br6);
    paragraph_for_appending.appendChild(br7);

    document.getElementById("footballSurveySummary").appendChild(paragraph_for_appending);

    }


