#/bin/bash
color=1
usage() {
        echo "pacman-qdt-color.sh":
        echo "  -n              don't use color"
        exit -1
}


while getopts "hn" opt; do
        case $opt in
                h)
                        usage
            ;;
        n)
                color=0
                ;;
                \?)
                        echo "Invalid option: -$OPTARG" >&2
                        usage
                        ;;
        esac
done

green(){ if [ $color == 1 ] ; then tput setaf 2; tput bold; fi }
white(){ if [ $color == 1 ] ; then tput sgr 0; fi }
IFS=$'\n'
search=""
list=( $(pacman -Qdt | cut -d " " -f 1) )
for line in "${list[@]}"; do
        search+="^${line//\+/\\\+}\$|"
done
#echo  ${search::-1}

outfile=$(mktemp)

pacman -Qs ${search::-1} | while read line; do
        echo $line |  if [ `grep -c 'local/'` == 1 ]
        then
                green >> $outfile
                echo -n $line | cut -d "/" -f 2 | tr -d '\n' >> $outfile
        else
                white >> $outfile
                echo -en "|$line\n" >> $outfile
        fi
done

cat $outfile | column -t -s "|"

[[ -e $outfile ]] && rm -f $outfile
