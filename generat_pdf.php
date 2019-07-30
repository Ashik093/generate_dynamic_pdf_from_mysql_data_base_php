<?php
    require_once("connection.php");
    $query="SELECT * FROM tbl_user";
    $run_query=mysqli_query($connect,$query);
    require('pdf_converter/fpdf.php');

    $pdf=new FPDF('p','mm','A4');

    $pdf->AddPage();

    // Select Arial bold 15
    $pdf->SetFont('Arial','B',15);
    // Move to the right
    $pdf->Cell(80);
    // Framed title
    $pdf->Cell(30,10,'PDF CONVERT FROM DATABASE',0,0,'C');
    // Line break
    $pdf->Ln(20);

    $pdf->SetFont('Arial','B',8);

    $pdf->Cell(32,8,'First Name',1,0,'C');
    $pdf->Cell(32,8,'Last Name',1,0,'C');
    $pdf->Cell(45,8,'Email Address',1,0,'C');
    $pdf->Cell(30,8,'Password',1,0,'C');
    $pdf->Cell(45,8,'Registration Date',1,1,'C');

    $pdf->SetFont('Arial','',8);

    while($row=mysqli_fetch_array($run_query)){
      $pdf->Cell(32,8,$row['fname'],1,0,'C');
      $pdf->Cell(32,8,$row['lname'],1,0,'C');
      $pdf->Cell(45,8,$row['email_addr'],1,0,'C');
      $pdf->Cell(30,8,$row['user_pwd'],1,0,'C');
      $pdf->Cell(45,8,$row['date'],1,1,'C');
    }



    $pdf->OutPut();
 ?>
