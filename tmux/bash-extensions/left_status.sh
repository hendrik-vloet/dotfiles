#!/bin/bash


function ip_address() {

    # Loop through the interfaces and check for the interface that is up.
    for file in /sys/class/net/*; do

        iface=$(basename $file);

        read status < $file/operstate;

        [ "$status" == "up" ] && ip addr show $iface | awk '/inet /{printf $2" "}'

    done

}

function vpn_connection() {

    # Check for tun0 interface.
    [ -d /sys/class/net/tun0 ] && printf "%s " 'VPN*'

}

function main() {

    # Comment out any function you do not need.
    ip_address
    vpn_connection

}

main
