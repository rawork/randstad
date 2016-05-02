#!/usr/bin/env php
<?php

require_once('app/init.php');

if (php_sapi_name() != 'cli') {
	die('Commandline mode only accepted'."\n");
}

if (empty($argv[1])) {
	die('First argument is required (folder name)!'."\n");
}

if (empty($argv[2])) {
	die('Second argument is required (gallery ID)!'."\n");
}

$folder = $argv[1];
$galleryID = $argv[2];

$files = scandir($folder.'/');

$i = 0;

foreach ($files as $file) {

	if (is_file(getcwd().'/'.$folder.'/'.$file) && preg_match('/\.jpg$/i', $file)) {
		echo getcwd().'/'.$folder.'/'.$file."...";
		$i++;
		$filename = $container->get('imagestorage')->save($file, getcwd().'/'.$folder.'/'.$file);
		$name = $file;
		$filesize = @filesize($container->get('imagestorage')->realPath($filename));
		$mimetype = mime_content_type(getcwd().'/'.$folder.'/'.$file);
		$width = 0;
		$height = 0;
		if ($fileInfo = @GetImageSize($container->get('imagestorage')->realPath($filename))) {
			$width = $fileInfo[0];
			$height = $fileInfo[1];
		}
		$container->get('connection')->insert('system_files', array(
			'name' => $name,
			'mimetype' => $mimetype,
			'file' => $filename,
			'width' => $width,
			'height' => $height,
			'filesize' => $filesize,
			'table_name' => 'gallery_gallery',
			'field_name' => 'fotos',
			'entity_id' => $galleryID,
			'created' => date('Y-m-d H:i:s')
		));
		echo ' uploaded'."\n";
		exit;
	}
}

echo $i."\n";
