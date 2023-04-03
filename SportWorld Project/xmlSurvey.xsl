<?xml version="1.0" encoding="utf-8" ?>

    <xsl:stylesheet version = "1.0"
     xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">

     <xsl:output method = "html" omit-xml-declaration = "no"
     doctype-system =
     "http://www.w3c.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
     doctype-public = "-//W3C//DTD XHTML 1.0 Strict//EN"/>

     <xsl:template match = "/"> <!-- match root element --> 

     <html xmlns = "http://www.w3.org/1999/xhtml">
      <head>
        <title>Football Club Survey</title>

 <!-- Using Embedded CSS -->
        <style>
body {
background-image: linear-gradient(
45deg,
#0087b8 0%,
#3e9ec1 10%,
#67b3c5 20%,
#8ac4cc 30%,
hsl(180, 34%, 77%) 40%,
#b4d5cf 60%,
#95c1b9 70%,
#76ada4 80%,
#56998f 90%,
#32867b 100%
);
}

		
		/*--------------------------MENU HEADER--------------------------*/
.headerNAV {
    padding: 0px;
    text-align: center;
    background: #8ac4cc; /*#1abc9c*/
    color: white;
    font-size: 30px;
}
* {
    margin: 0px;
    padding: 0px;
}

.headerNAV img {
    display: block;
    padding: 0;
    padding-left: 1%;
    width: 50%;
    margin: 0;
    cursor: pointer;
    /* margin-right: auto; */
    margin: auto;
    padding: 1%;
}

.navigate_links li,
            a,
            button {
            font-family: "Montserrat", sans-serif;
            font-size: 16px;
            color: whitesmoke;
            text-decoration: none;           
}

header {
    display:flex;
    justify-content: flex-start;
    align-items: center;
    padding: 15px 3%;
        }

.navigate_links {
    list-style: none;
        }

.navigate_links li {
    display: inline-block;
    padding: 0px 20px;
}

.navigate_links li a {
    transition: all 0.3s ease-in-out 0s;
}

button {
    margin-left: 20px;
    padding: 9px 12px;
    color: #12192c;
    border: #12192c;
    box-shadow: 3px 3px 3px , 3px 3px 3px #12192c;
    border: none;
    cursor: pointer;
    transition: all 0.3s ease-in-out 0s;
}

.navigate_links li:nth-child(1) {
    padding: 0px 20px 0px 0px;
}

.navigate_links li a:hover {
    color: #12192c;
    border: 2px solid #12192c;
    box-shadow: 3px 3px 3px , 3px 3px 3px #12192c;
    border-radius: 4px;
    margin: 10px;
    padding: 12px;
}

button:hover {
    color: #12192c;
    border: 2px solid #12192c;
    box-shadow: 3px 3px 3px , 3px 3px 3px #12192c;
}
		
.dropbtn { 
    
    padding: 16px;
    font-size: 16px;
    border: none;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

  /* Links inside the dropdown */
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}


  /* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
    display: block;
}

p { 
width: 81%;
margin-left:8.2%;
text-align: center;
font-family: Roboto, Arial, sans-serif;
font-size: 19px;
color: #666;
line-height: 22px;
background-color: rgb(240, 250, 250);
border: 4px solid rgb(110, 179, 202);
box-shadow: 0 0 8px rgb(110, 179, 202)
margin: auto;
padding: 20px;
border-radius: 6px;
} 

body { 
padding: 0;
margin: 0;
outline: none;
font-family: Roboto, Arial, sans-serif;
font-size: 20px;
line-height: 22px;
}


.footballSurvey {
display: flex;
justify-content: center;
align-items: center;
height: inherit;
padding: 20px;
}

form {
width: 100%;
padding: 20px;
border-radius: 6px;
background: #fff;
box-shadow: 0 0 8px rgb(110, 179, 202); 
}

.banner {
position: relative;
height: 360px;
background-image: url("footballSurveyHeader.png");  
background-size: cover;
display: flex;
justify-content: center;
align-items: center;
text-align: center;
}

.banner::after {
content: "";
background-color: rgba(0, 0, 0, 0.2); 
position: absolute;
width: 100%;
height: 100%;
}

input {
margin-bottom: 10px;
border: 1px solid #ccc;
border-radius: 3px;
}

input {
width: calc(100% - 10px);
padding: 5px;
}

.item:hover p, .item:hover i, .question:hover p {
color: rgb(110, 179, 202);
}

.item input:hover {
border: 1px solid transparent;
box-shadow: 0 0 3px 0 rgb(110, 179, 202);
color: #669999;
}


input[type=radio]  {
display: none;
}

label.radio {
position: relative;
display: inline-block;
margin: 5px 20px 15px 0;
cursor: pointer;
}

.question span {
margin-left: 30px;
}

label.radio:before {
content: "";
position: absolute;
left: 0;
width: 17px;
height: 17px;
border-radius: 50%;
border: 2px solid #ccc;
}

input[type=radio]:checked + label:before, label.radio:hover:before {
border: 2px solid rgb(110, 179, 202);
}

label.radio:after {
content: "";
position: absolute;
top: 6px;
left: 5px;
width: 8px;
height: 4px;
border: 3px solid  #669999;
border-top: none;
border-right: none;
transform: rotate(-45deg);
opacity: 0;
}

input[type=radio]:checked + label:after {
opacity: 1;
}

.btn-block {
margin-top: 10px;
text-align: center;
}

#Submit {
width: 150px;
padding: 10px;
border: none;
border-radius: 5px; 
background: rgb(110, 179, 202);
font-size: 16px;
color: #fff;
cursor: pointer;
      margin: 20px
}

#Submit:hover {
background: rgb(211, 234, 242);
}
		  
/********FOOOTER*********/

/**********************************/
/*		 Styling Footer	 */
/**********************************/

/*** Adding Styles to Company Details ***/
.website-details{
	overflow: hidden;
	padding: 3em 0em;
	background:#1f808d;
	text-align: center;
	margin-top: 5em;
    font-family: "Roboto", sans-serif; ;
    
}
#footer #col1,
#footer #col2,
#footer #col3{
	display: inline-block;
	width: 320px;
	padding: 0px 40px 0px 40px;
}
	
#footer #icon{
	display: block;
	margin-bottom: 1em;
	font-size: 3em;
}
        </style>

            <script type="text/javascript" src="xmlSurvey.js"> 
            </script>
      </head>
	  
      <body>
	  

	      <div class="headerNAV">
        <img class="logo"
            src="Sport world.png"
            alt="Loading image"/>
    </div>
	
	     <header>
        
        <nav>
            <ul class="navigate_links">
                <li><a href="home.html">Home</a></li>
                <li><a href="AboutUs.html">About Us</a></li>
                <li><a href="joinUs.html">Join Us</a></li>
                <li><a href="ContactUs.html">Contact Us</a></li>
                <li>
                    
                        <div class="dropdown">
                        <button class="dropbtn">Sports</button>
                        <div class="dropdown-content">
                            <a href="Football.html">Football</a>
                            <a href="Basketball.html">Basketball</a>
                            <a href="Swimming.html">Swimming</a>
                        </div>
                    </div>
                </li>
			    <li>
                    
                        <div class="dropdown">
                        <button class="dropbtn">Rate Our Clubs</button>
                        <div class="dropdown-content">
                            <a href="xmlSurvey.xml">Football</a>
                            <a href="projectSurvey1.html">Swimming</a>
                        </div>
                    </div>
                </li>
            </ul>
        </nav>
    </header>
	
        <div class="footballSurvey">

            <!-- Generating the adynamic form, from the XML file by using the XSL value-of method-->
          <form id="footballSurveySummary" onsubmit = "return false" action = "">

            <div class="banner">
            </div>

    <xsl:for-each select = "/footballSurvey/question1"> 
            <div class="question">
                      <br/> 
              <label id = "label_1" style = "font-weight: 700;"><xsl:value-of select = "question_text"/></label>
              <div class="question-answer">
                <div>
                  <input required="required" type="radio" value="10-20" id="radio_1" name="q1"/>
                  <label for="radio_1" class="radio"><span><xsl:value-of select = "choice_a"/></span></label>
                </div>
                <div>
                  <input  type="radio" value="20-30" id="radio_2" name="q1"/>
                  <label for="radio_2" class="radio"><span><xsl:value-of select = "choice_b"/></span></label>
                </div>
                        <div>
                  <input  type="radio" value="over 30" id="radio_3" name="q1"/>
                  <label for="radio_3" class="radio"><span><xsl:value-of select = "choice_c"/></span></label>
                </div>
              </div>
            </div>
    </xsl:for-each>		

    <xsl:for-each select = "/footballSurvey/question2"> 
            <div class="question">
                      <br/> 
              <label id = "label_2" style = "font-weight: 700;"><xsl:value-of select = "question_text"/></label>
              <div class="question-answer">
                <div>
                  <input required="required" type="radio" value="Increase fitness and health" id="radio_4" name="q2"/>
                  <label for="radio_4" class="radio"><span><xsl:value-of select = "choice_a"/></span></label>
                </div>
                <div>
                  <input  type="radio" value="Enjoyment of the sport/hobby" id="radio_5" name="q2"/>
                  <label for="radio_5" class="radio"><span><xsl:value-of select = "choice_b"/></span></label>
                </div>
                        <div>
                  <input  type="radio" value="To train/take part competitively" id="radio_6" name="q2"/>
                  <label for="radio_6" class="radio"><span><xsl:value-of select = "choice_c"/></span></label>
                </div>
              </div>
            </div>
    </xsl:for-each>	

    <xsl:for-each select = "/footballSurvey/question3"> 
            <div class="question">
                      <br/> 
              <label id = "label_3" style = "font-weight: 700;"><xsl:value-of select = "question_text"/></label>
              <div class="question-answer">
                <div>
                  <input required="required" type="radio" value="Good" id="radio_7" name="q3"/>
                  <label for="radio_7" class="radio"><span><xsl:value-of select = "choice_a"/></span></label>
                </div>
                <div>
                  <input  type="radio" value="Satisfactory" id="radio_8" name="q3"/>
                  <label for="radio_8" class="radio"><span><xsl:value-of select = "choice_b"/></span></label>
                </div>
                        <div>
                  <input  type="radio" value="Poor" id="radio_9" name="q3"/>
                  <label for="radio_9" class="radio"><span><xsl:value-of select = "choice_c"/></span></label>
                </div>
              </div>
            </div>
    </xsl:for-each>	

    <xsl:for-each select = "/footballSurvey/question4"> 
            <div class="question">
                      <br/> 
              <label id = "label_4" style = "font-weight: 700;"><xsl:value-of select = "question_text"/></label>
              <div class="question-answer">
                <div>
                  <input required="required" type="radio" value="Good" id="radio_10" name="q4"/>
                  <label for="radio_10" class="radio"><span><xsl:value-of select = "choice_a"/></span></label>
                </div>
                <div>
                  <input  type="radio" value="Satisfactory" id="radio_11" name="q4"/>
                  <label for="radio_11" class="radio"><span><xsl:value-of select = "choice_b"/></span></label>
                </div>
                        <div>
                  <input  type="radio" value="Poor" id="radio_12" name="q4"/>
                  <label for="radio_12" class="radio"><span><xsl:value-of select = "choice_c"/></span></label>
                </div>
              </div>
            </div>
    </xsl:for-each>	

    <xsl:for-each select = "/footballSurvey/question5"> 
            <div class="question">
                      <br/> 
              <label id = "label_5" style = "font-weight: 700;"><xsl:value-of select = "question_text"/></label>
              <div class="question-answer">
                <div>
                  <input required="required" type="radio" value="Good" id="radio_13" name="q5"/>
                  <label for="radio_13" class="radio"><span><xsl:value-of select = "choice_a"/></span></label>
                </div>
                <div>
                  <input  type="radio" value="Satisfactory" id="radio_14" name="q5"/>
                  <label for="radio_14" class="radio"><span><xsl:value-of select = "choice_b"/></span></label>
                </div>
                        <div>
                  <input  type="radio" value="Poor" id="radio_15" name="q5"/>
                  <label for="radio_15" class="radio"><span><xsl:value-of select = "choice_c"/></span></label>
                </div>
              </div>
            </div>
    </xsl:for-each>	

    <xsl:for-each select = "/footballSurvey/question6"> 
            <div class="question">
                      <br/> 
              <label id = "label_6" style = "font-weight: 700;"><xsl:value-of select = "question_text"/></label>
              <div class="question-answer">
                <div>
                  <input required="required" type="radio" value="Good" id="radio_16" name="q6"/>
                  <label for="radio_16" class="radio"><span><xsl:value-of select = "choice_a"/></span></label>
                </div>
                <div>
                  <input  type="radio" value="Satisfactory" id="radio_17" name="q6"/>
                  <label for="radio_17" class="radio"><span><xsl:value-of select = "choice_b"/></span></label>
                </div>
                        <div>
                  <input  type="radio" value="Poor" id="radio_18" name="q6"/>
                  <label for="radio_18" class="radio"><span><xsl:value-of select = "choice_c"/></span></label>
                </div>
              </div>
            </div>
    </xsl:for-each>	

            <br/> 
            <div class="btn-block">
              <button id="Submit" type="submit" value = "Display the summary" onclick = "load()" >Submit</button>
			  <button id="Submit" type="reset" value = "clear" >Clear</button>  
            </div>
          </form>
        </div> 
		
	 <!-- Footer Menu -->
        <footer id="footer" style="color: #ffffff;">
            <div class="website-details">
                <div class="row"> 
                    <div id="col1">
                        <span id="icon" class="fa fa-map-marker"></span>
                        <span>
                        Sport World
                    </span>
                    </div>
                    <div id="col2">
                        <span id="icon" class="fa fa-phone"></span>
                        <span>
                        Saudi Arabia, Riyadh
                        Telephone: +966-55-4709-900
                    </span>
                    </div>
                    <div id="col3">
                        <span id="icon" class="fa fa-envelope"></span>
                        <span><a href="mailto: SportWorld@gmail.com">SportWorld@gmail.com</a></span>
                    </div>
                </div>
            </div>
        </footer>
		
      </body>
    </html>

     </xsl:template>
     </xsl:stylesheet>
