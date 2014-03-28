#!/bin/bash
 php app/console doctrine:database:drop --force   &&
 php app/console doctrine:database:create         &&
 php app/console doctrine:schema:update --force   &&
 ./app/console doctrine:fixtures:load --append    &&
 ./app/console harvestcloud:core:make-hub-windows &&
 ./app/console harvestcloud:core:make-seller-windows
