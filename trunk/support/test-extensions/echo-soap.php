<?php

/**
 * Copyright (C) 1998-2007, Sumisho Computer Systems Corp.  All Rights Reserved.
 *
 * An OpenCurl project.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *     http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

header( "Content-type: text/xml" );

$HTTP_RAW_POST_DATA = 
isset($GLOBALS['HTTP_RAW_POST_DATA'])
  ? $GLOBALS['HTTP_RAW_POST_DATA'] : '';

echo $HTTP_RAW_POST_DATA;

// echo <<<XXX
// <ECHO>
// $xml
// </ECHO>
// XXX;

?>
