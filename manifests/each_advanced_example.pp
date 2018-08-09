#$data = {"rtr" => "Router", "svr" => "Server", "wks" => "Workstation"}
#$data.each |$items| {
# notify { $items[0]:
#   message => $items[1]
# }
#}


$data = ["routers", "servers", "workstations"]
$data.each |$index, $value| {
 notify { $value:
   message => $index
 }
}


$data1 = {"rtr" => "Router", "svr" => "Server", "wks" => "Workstation"}
$data1.each |$key, $value| {
 notify { $key:
   message => $value
 }
}
