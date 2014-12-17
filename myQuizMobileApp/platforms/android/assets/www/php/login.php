<?php 

if(isset($_POST['username']) && isset($_POST["password"])){
  
  $username=$_POST['username'];
  $password=$_POST["password"];
 
 $url="http://localhost:8080/QuizAppHibernateA/rest/service/candidate/login?username=".$username."&password=".$password;
        // create curl resource 
        $ch = curl_init(); 

        // set url 
        curl_setopt($ch, CURLOPT_URL, $url); 

        //return the transfer as a string 
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 

        // $output contains the output string 
        $output = curl_exec($ch); 

		
        // close curl resource to free up system resources 
        curl_close($ch);  
 echo $output;
}    
?>