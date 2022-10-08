 #!/bin/sh
function mylight(){
    light -G | cut -d. -f1
}

while true 
do
    echo $(mylight)%
    sleep 1
done
