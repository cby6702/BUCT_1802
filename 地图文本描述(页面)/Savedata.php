<?php

//设置字符集
header("Content-type: text/html;charset=utf-8");

$json = $_POST["data"];
$res = json_decode($json);
$description=$res->description;
$lng = $res->lng;
$lat = $res->lat;
$sw_lng=$res->sw_lng;
$sw_lat=$res->sw_lat;
$ne_lng=$res->ne_lng;
$ne_lat=$res->ne_lat;
echo "aaa";
function match_chinese($chars, $encoding = 'utf8')
{
    $pattern = ($encoding == 'utf8') ? '/[\x{4e00}-\x{9fa5}]/u' : '/[\x80-\xFF]/';
    preg_match_all($pattern, $chars, $result);
    return join('', $result[0]);
}

$description = match_chinese($description);

if(!strlen($description)) {
    exit;
}
echo "bbb";
$description.='<br>';
echo $description;
//连接数据库
$link = mysqli_connect("localhost","root","root");
//防止乱码
mysqli_query($link , "set names utf8");
//选择一个数据库作为默认数据库
mysqli_select_db($link,'test');

//执行sql查询语句
$query="SELECT id FROM `position` WHERE `center_lng` = $lng AND `center_lat` = $lat";
$result= mysqli_query($link,$query);
$result=$result->fetch_assoc();
echo $result;
//echo "dasadsadas"."<br/>".$result."<br/>";
if(!$result){
    $sql = "INSERT INTO `position`(`sw_lng`,`sw_lat`,`ne_lng`,`ne_lat`,`center_lng`,`center_lat`) 
            VALUES ('$sw_lng','$sw_lat','$ne_lng','$ne_lat','$lng','$lat')";
    mysqli_query($link,$sql);
    $result= mysqli_query($link,$query);
    $result=$result->fetch_assoc();
    $pid = $result["id"];
    $sql = "INSERT INTO `description`(`name`,`pid`) VALUES ('$description','$pid')";
    mysqli_query($link,$sql);
}
else {
    $pid = $result["id"];
    var_dump($pid);
    $query_des = "SELECT name FROM `description` WHERE `pid` = $pid";
    $result = mysqli_query($link, $query_des);
    $result = $result->fetch_assoc();
    $result = $result["name"];
    $result .= $description;
    $sql = "UPDATE `description` SET `name`='$result' WHERE `pid` = $pid";
    mysqli_query($link, $sql);
}
//$query="select id from position where center_lng=$lng and center_lat=$lat>";
//$sql = "INSERT INTO `test`(`description`,`lng`,`lat`) VALUES ('$description','$lng','$lat')";
//$cr = mysqli_query($link,$sql);

// 判断是否插入成功
/*if(!$cr){
    echo "数据插入失败。<br>";
}else{
    echo "数据插入成功。<br>";
}*/

//关闭数据库连接
mysqli_close($link);

?>
