<?php

if(isset($_POST['quizId'])){

  $quizId=$_POST['quizId'];


 $url="http://localhost:8080/QuizAppHibernateA/rest/service/quizzes/answers?quizId=".$quizId;
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