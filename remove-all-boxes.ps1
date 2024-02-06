# Get the list of all Vagrant boxes
$boxes = vagrant box list
 foreach ($box in $boxes) {
   # Extract only the box name
   $boxName = $box.Split(' ')[0]
   echo $boxName
   vagrant box remove $boxName -f
 }
