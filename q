<?php
//echo 'Write your code here';

$products = [
    "еда" => [
        "овощи",    
        "фрукты"
    ],
    "техника" => [
        "бытовая",    
        "промышленная"
    ],
    "транспорт" => [
        "легковые" => [
            "тесла",
            "bmv"
        ],
        "грузовые"
    ]
    
];


function wfit($data, $level = 1){
    
    foreach($data as $key => $value){

        

        if(is_array($value)){
            
            echo str_repeat("-", $level) ." : ". $key . "\n" ;
            wfit($value  , $level + 1);
            
            continue;
    }
        echo str_repeat("-", $level) ." : ". $value . "\n";
        
    }
}

wfit($products);
//Given: "2000 10003 1234000 44444444 9999 11 11 22 123"
//Expected: "11 11 2000 10003 22 123 1234000 44444444 9999"
?>
