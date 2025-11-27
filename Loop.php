<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <title>Portfolio นักศึกษา</title>
    <style>
        body {
            font-family: "TH Sarabun New", sans-serif;
            background-color: #ffe6f0; /* พื้นหลังโทนชมพูอ่อน */
            color: #333;
            padding: 20px;
        }
        .card {
            background-color: #fff0f5; /* การ์ดโทนชมพูอ่อน */
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 6px rgba(255, 182, 193, 0.5); /* เงาโทนชมพู */
        }
        .profile {
            display: flex;
            align-items: center;
            gap: 20px;
        }
        .profile img {
            width: 150px;
            height: 150px;
            border-radius: 0; /* เปลี่ยนจากวงกลมเป็นสี่เหลี่ยม */
            object-fit: cover;
            border: 3px solid #ff69b4; /* ขอบสีชมพูเข้ม */
        }
        pre {
            background-color: #ffe6f2; /* พื้นหลัง pre สีชมพูอ่อน */
            padding: 10px;
            border-radius: 5px;
            white-space: pre-line;
        }
        h2 {
            color: #ff1493; /* สีชมพูเข้ม */
        }
    </style>
</head>
<body>

<div class="card">
    <h2>ข้อมูลนักศึกษา</h2>
    <div class="profile">
        <img src="nutty.jpg" alt="รูปนักศึกษา">
        <div>
            <?php
                $university = "มหาวิทยาลัยราชภัฏอุดรธานี";
                $faculty = "คณะวิทยาศาสตร์";
                $major = "สาขาเทคโนโลยีสารสนเทศ";
                $name = "จิณัฐตา สารมานิตย์";
                $intro = "นักศึกษาสาขาเทคโนโลยีสารสนเทศ สนใจด้านการพัฒนาเว็บและความปลอดภัยไซเบอร์";

                echo "<p><strong>มหาวิทยาลัย:</strong> $university</p>";
                echo "<p><strong>คณะ:</strong> $faculty</p>";
                echo "<p><strong>สาขา:</strong> $major</p>";
                echo "<p><strong>ชื่อนามสกุล:</strong> $name</p>";
                echo "<p><strong>แนะนำตัว:</strong> $intro</p>";
            ?>
        </div>
    </div>
</div>

<div class="card">
    <h2>ตัวอย่างการใช้ Loop</h2>

    <h3>1. รูปสามเหลี่ยม *</h3>
    <p>ใช้ for loop</p>
    <pre>
<?php
for ($i=1; $i<=4; $i++) {
    echo str_repeat("*", $i) . "\n";
}
?>
    </pre>

    <h3>2. ตารางตัวเลข</h3>
    <p>ใช้ while loop</p>
    <pre>
<?php
$i = 1;
while ($i <= 3) {
    echo str_repeat($i." ", 4) . "\n";
    $i++;
}
?>
    </pre>

    <h3>3. รูปเลขเพิ่มขึ้นตามแถว</h3>
    <p>ใช้ do while loop</p>
    <pre>
<?php
$i = 1;
do {
    echo str_repeat($i." ", $i) . "\n";
    $i++;
} while ($i <= 3);
?>
    </pre>

</div>

</body>
</html>
