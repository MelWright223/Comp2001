<?php
$fileName = "library.csv";
$file = fopen($fileName, "r");

$row=0;
$productData = array();
while (($data = fgetcsv($file, 0, ",")) !== FALSE) {
    if($row > 0){
        $productData[] = $data;
    }
    $row++;
}

echo json_encode($productData);



?>
<br>
