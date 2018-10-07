while getopts 'hlf:' opt
do
    case "$opt" in
    h|\?)
        echo 'available options: -h -l -f [filename]'
        ;;
    f)
        file="$OPTARG"
        ;;
    l)
        echo 'option -l was used'
        list=true
        ;;
    esac
done

shift "$(( OPTIND - 1 ))"

if [[ "$list" = true ]]
then
    echo "$( ls )"
else
    echo "list is false!"
fi

echo "Our file is $file"
