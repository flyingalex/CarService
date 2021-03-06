<?php
return array(
    'telephone'    => '/((13[0-9]{1})|(15[0-35-9]{1})|(18[0-9]{1})|(17[5678]{1}))[0-9]{8}$/',
    'id_card'      => '/^(^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$)|(^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])((\d{4})|\d{3}[Xx])$)$/',
    'email'		   => '/^[a-z]([a-z0-9]*[-_]?[a-z0-9]+)*@([a-z0-9]*[-_]?[a-z0-9]+)+[\.][a-z]{2,3}([\.][a-z]{2})?$/i' 
);