#! /bin/sh

wlist="/tmp/.wlist"
[ -e $wlist ] && rm $wlist

wew -m 2097152 | while IFS=: read ev wid; do
    case $ev in
        # Focus in event. Write wid to the window list
        9) 
            echo $wid >> $wlist
            ;;
        # Destroy event. Delete wid from the window list
        17)
            grep -v $wid $wlist > $wlist.tmp
            mv $wlist.tmp $wlist
            ;;
        # Unmap event. Focus last wid from the window list. Ignore unmapped windows.
        18)
            for id in $(tac $wlist); do
                wattr m $id && [ "$wid" != "$id" ] && waitron window_focus $id && break
            done
            ;;
    esac
done
