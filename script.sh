#! /usr/bin/bash
PWD="/home/alvaro/Documents/Proyectos/bash/workspace-loader"
DELFOSTI="/home/alvaro/Documents/Delfosti"
PERSONAL="/home/alvaro/Documents/Proyectos"
export DELFOSTI
export PERSONAL

SCRIPT_NOT_FOUND="Workspace script not found"

if [ -d  "$PWD/workspaces" ]; then
    case "$1" in
    "phi") if [ -f  "$PWD/workspaces/phi.sh" ]; then
                sh "$PWD/workspaces/phi.sh"
            else
                echo $SCRIPT_NOT_FOUND
            fi;;
    "this") if [ -f  "$PWD/workspaces/workspace-loader.sh" ]; then
                sh "$PWD/workspaces/workspace-loader.sh"
            else
                echo $SCRIPT_NOT_FOUND
            fi;;
    
    "magire") if [ -f "$PWD/workspaces/magire.sh" ]; then
                sh "$PWD/workspaces/magire.sh"
            else
                echo $SCRIPT_NOT_FOUND
            fi;;
    # -w) echo "$1";; 
    *) echo "Invalid option";;
    esac
else
    echo "Workspace folder not setup"
fi