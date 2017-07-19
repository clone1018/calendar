<?php
return array_merge_recursive(require_once('config/app.default.php'), [
    'Datasources' => [
        'default' => [
            'host' => 'db',
        ]
    ],
]);
