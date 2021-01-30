<?php
//define( 'WP_HOME', 'http://localhost:63342/Comp2001Main/src/Entity/Library.php' );
//define( 'WP_SITEURL', 'http://localhost:63342/Comp2001Main/src/Entity/Library.php' );

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

function set_url( $url )
{
    echo("<script>history.replaceState({},'','$url');</script>");
}
set_url("http://localhost:63342/Comp2001Main/Library");
?>

