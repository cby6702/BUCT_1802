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
//连接数据库
$link = mysqli_connect("localhost","root","root");
//防止乱码
mysqli_query($link , "set names utf8");
//选择一个数据库作为默认数据库
mysqli_select_db($link,'test');

function match_chinese($chars, $encoding = 'utf8')
{
    $pattern = ($encoding == 'utf8') ? '/[\x{4e00}-\x{9fa5}]/u' : '/[\x80-\xFF]/';
    preg_match_all($pattern, $chars, $result);
    return join('', $result[0]);
}
//对描述进行初步筛查，筛除如aaaaaaaasdahdas之类的无效描述

$description = match_chinese($description);

if(!strlen($description)) {
    exit;
}

$description.='<br>';


//执行sql查询语句
$query="SELECT id FROM `position` WHERE `center_lng` = $lng AND `center_lat` = $lat";
//以中心点经纬度查询id
$result= mysqli_query($link,$query);
$result=$result->fetch_assoc();
//查询id是否存在
if(!$result){
    //若不存在则新建
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
    //存在则添加描述
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


//关闭数据库连接
mysqli_close($link);

?>
