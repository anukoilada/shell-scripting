#1 /bin/bash

sample() {
    echo "I am a messaged called from sample function"
}
sample
sample
 stat() {
    echo -e "\t Total number of sessons : $(who | wc -l)"
    echo "Todays date is $(date +%F)"
    echo "Load Average On The system is $(uptime | awk -F : '{print $NF}' | awk -F , '{print $1}')"
    echo -e "\t stat function completed"

    echo "Calling sample function"
    sample 
 }

 echo "calling stat function" 
 stat