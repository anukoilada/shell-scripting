#1 /bin/bash

COMPONENT=user

source components/common.sh    # Source is going to load the file, so that you can call all of them as per your need

NODEJS                         # Calling NodeJS Function.







    echo -n "Updating the systemd file with DB Details :"
    sed -i -e  /home/$APPUSER/$COMPONENT/systemd.service
    mv /home/$APPUSER/$COMPONENT/systemd.service /etc/systemd/system/$COMPONENT.service
    stat $? 

    echo -n "Starting the $COMPONENT service : "
    systemctl daemon-reload &>> $LOGFILE
    systemctl enable $COMPONENT &>> $LOGFILE
    systemctl restart $COMPONENT &>> $LOGFILE
    stat $?


    









