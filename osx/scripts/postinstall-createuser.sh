#!/bin/bash

USERNAME=_jenkins

setup_user () {
 # add a system user for daemons
 echo sudo dscl . -create /Users/${USERNAME}
 sudo dscl . -create /Users/${USERNAME}
 echo sudo dscl . -create /Users/${USERNAME} UserShell /bin/bash
 sudo dscl . -create /Users/${USERNAME} UserShell /bin/bash
 echo sudo dscl . -create /Users/${USERNAME} RealName "${USERNAME} daemons"
 sudo dscl . -create /Users/${USERNAME} RealName "${USERNAME} daemons"
 echo sudo dscl . -create /Users/${USERNAME} PrimaryGroupID 300
 sudo dscl . -create /Users/${USERNAME} PrimaryGroupID 300
 echo sudo dscl . -create /Users/${USERNAME} NFSHomeDirectory /Users/${USERNAME}
 sudo dscl . -create /Users/${USERNAME} NFSHomeDirectory /Users/${USERNAME}
 echo sudo dscl . -create /Users/${USERNAME} UniqueID 300
 sudo dscl . -create /Users/${USERNAME} UniqueID 300
 echo sudo mkdir /Users/${USERNAME}
 sudo mkdir /Users/${USERNAME}
 echo sudo chown ${USERNAME} /Users/${USERNAME}
 sudo chown ${USERNAME} /Users/${USERNAME}
 echo " "
}

setup_user
