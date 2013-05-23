<?php
require_once('mysql.php');

$body = mysqli_real_escape_string($MYSQLI_LINK, htmlspecialchars($_REQUEST['newpost']));
$mapid = (int)(mysqli_real_escape_string($MYSQLI_LINK, htmlspecialchars($_REQUEST['mapid']))+0);
$path = mysqli_real_escape_string($MYSQLI_LINK, htmlspecialchars($_REQUEST['path']));
/*if(!$mapid) {
	header("Location: ?mapid=0");
	die("no mapid found");
}*/
	
$time = time();

$ideastbl = IDEAS_TBL;

if (!empty($body)) {
	$tmptitle=mysqli_real_escape_string($MYSQLI_LINK, htmlspecialchars($_REQUEST['ideatitle']));
	if(!$tmptitle)
		$tmptitle=substr($body,0,80);
    $query = "INSERT INTO $ideastbl (`pid`, `time`, `title`, `body`, `status`, `progress`, `metric`, `uid`, `parent`, `mapid`,'path') VALUES ('', $time, '$tmptitle','$body', 0, NULL, '', 0,0,$mapid,$path)";
//	print $query;
    $result = mysqli_query($MYSQLI_LINK, $query) or die("INSERT Error: " . mysqli_error($MYSQLI_LINK));
}

$query = "SELECT * FROM $ideastbl WHERE mapid=$mapid ORDER BY path ASC,time DESC";
$result = mysqli_query($MYSQLI_LINK, $query) or die("SELECT Error: " . mysqli_error($MYSQLI_LINK));

$rows = array();

$activepath=array();

$lastentry=array("body"=>"root",$children=>$array());

$data=array("children"=>array());

$parentsstack=array();

$currparenti= NULL;

while ($r = mysqli_fetch_assoc($result)) {
	
	$entry=array_map(stripslashes,$r);
	$entry["children"]=array();
	
	array_push($parentsstack, $entry);
	
	if($parentsstack[count($parentsstack)-1]['pid']==$entry['parent'])
		$parentsstack[count($parentsstack)-1]["children"][]=$entry;
	
	
	$rows []= $entry;
	
	function processEntry($entry) {
		if($entry['parent']===NULL) {
			array_push($parentsstack, $entry);
		}
		else {
			while($parentsstack[count($parentsstack)-1]['pid']!==$entry['parent']) {
				array_pop($parentsstack);
			}
			
			$parentsstack[count($parentsstack)-1]["children"][]=$entry;
			array_push($parentsstack, $entry);
			
			
		}
	}
		
		
		if($currparent!==NULL && $entry['parent'] === $currparent['pid']) {
		$currparent["children"][]=$entry;
	}
	}
	

	
		
		
	$currparent=$entry;
		
		
	$currpath=explode('/',$entry['path']);
	
	$pData= & $data['children'];
	foreach($currpath as $id) {
		$pData= & $pData[$id]['children'];
	}
	$pData[$entry['pid']]=$entry;
	
	
	
	if($currpath)
	
	$lastentrypath=$rows[count($rows)-1]['path'];

	$parentpath
	
	
	
	if($entry['path']===$parentpath)
	
	!=="" && $lastentrypath!= substr($entry['path'],0,strlen($lastentrypath))== )
	
    $rows []= array_map(stripslashes,$r);
	
	if($rows[count($rows)-1].path
	/*
	
	body
	
	children
	
	*/
}




print json_encode($rows);