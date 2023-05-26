# the-altemist

## How to work on the ICP

This project is saved in a repository in github and was developed using the cloud platform GitPod.

[This tutorial was followed](https://internetcomputer.org/docs/current/tutorials/deploy_sample_app#1-install-the-internet-computer-ic-sdk) and was adapted in order to work with GitPod. This README section will document the process.

Step One - Install the Internet Computer SDK.

Set up a '.gitpod.yml' file in the root directory. In the file write the following code:

tasks:
  - init: 'sh -ci "$(curl -fsSL https://internetcomputer.org/install.sh)"'

Save the file and then click on 'Validate'. This should open a new tab in your browser where the IC SDK is installed.

Open the terminal and make sure you are working in the root directory. Run the command 'ls -a ~' to show all the hidden files. If the file '.bashrc' exists in the root directory, edit this file, if not, we will work with '.bash_profile'. The next steps will assume we have the '.bashrc' file.

Opn the '.bashrc' file in an editor by running the command in the terminal 'nano ~/.bashrc'.

Add the following line to the file:

export PATH="/home/gitpod/bin:$PATH"

Save the changes with 'Ctrl + O' (the letter O) and press enter. Then run 'Ctrl + X' to close the nano editor.

Run this command to apply the changes to the current terminal session:

source ~/.bashrc

Run the line 'dfx --version' to check the PATH has been set up correctly. You should get a response such as 'dfx 0.14.0'.