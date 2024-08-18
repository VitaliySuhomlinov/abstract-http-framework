<?php

declare(strict_types=1);
use App\Example;

require __DIR__ . '/../vendor/autoload.php';

$obj = new Example();
echo '<h1>', 'hello world)', '</h1>';
echo $obj->do();

$arr = [1, 2, 3];
print_r($arr);

$arr[] = 'value';

unset($obj);

function test($arr): int {
    $a = 1;
    return $a;
}
test($arr);
