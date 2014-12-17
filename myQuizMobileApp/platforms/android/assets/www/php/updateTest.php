<?php


if(isset($_POST['testId'])){

  $testId=$_POST['testId'];

 if(isset($_POST['score'])){

    $score=$_POST['score'];
    $url="http://localhost:8080/QuizAppHibernateA/rest/service/quizzes/updateEndTest?testId=".$testId."&score=".$score;

    }
    else{
        $url="http://localhost:8080/QuizAppHibernateA/rest/service/quizzes/update?testId=".$testId;
    }
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