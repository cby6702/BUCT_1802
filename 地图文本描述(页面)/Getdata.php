<?php
//声明变量并接受form表单发送过来的数据,所有变量定义要写在一行，否则会报错
header("Content-type:text/html;charset=utf-8");
$json = $_POST["data"];
$res = json_decode($json);
$lng = $res->lng;
$lat = $res->lat;

$link = mysqli_connect("localhost","root","root");
//防止乱码
mysqli_query($link , "set names utf8");
//选择一个数据库作为默认数据库
mysqli_select_db($link,'test');
//数据库连接


$query="SELECT id FROM `position` WHERE `center_lng` = $lng AND `center_lat` = $lat";
$result= mysqli_query($link,$query);
$result=$result->fetch_assoc();
if(!$result){
    echo "该地区还未有描述";
}
else {
    $pid = $result["id"];
    $query_des = "SELECT name FROM `description` WHERE `pid` = $pid";
    $result = mysqli_query($link, $query_des);
    $result = $result->fetch_assoc();
    $result = $result["name"];
    echo $result;
}
?>
