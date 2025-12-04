<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>php Array (เรียนวันที่ 4/12/2568)</title>
</head>
<body>
    <?php
  $cars = array("volvo","bmw","toyota");
  echo" LIKE" ,$CARS[0].",",$cars[1]."and".$cars[2].",";
    ?>
    <h1> ทดสอบ Array แบบ Associative Array</h1>
    <php>

    $age = array("peter"=>"35","Ben"=>"37","joe"=>"43")
    "mon"=n>"19";
     echo"petter is ".$age[perter] ." years old.","<dr>";
     echo"Ben is "$age[Ben] </div> ." years old.","<dr>"
     echo"joe is ".$age[joe] ." years old.","<dr>";
     echo"mon is ".$age[mon] ." years old.","<dr>";
        ?>
        <h1> การใช้for กับlndex Array</h1>
        <?php
        $fruits = Array("ส้ม","กล้วย","แตงโม"
                        ,"แอปเปิ้ล", "องุ่น", "ทุเรียน","มะพร้าว");
        $arrlen = count($fruits);

        for($x = 0;$fruits as $arrlen){
            echo $fruits[$x];
            echo"<br>\n";

        }
    ?>
</body>
</html>