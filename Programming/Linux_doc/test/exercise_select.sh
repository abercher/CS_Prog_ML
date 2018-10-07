echo 'Which one of these does not belong in the group?'
select choice in Apples Pears Crisps Lemons
do
    if [[ "$choice" = Crisps ]]
    then
        echo 'Correct! Crisps are not fruit.'
        break
    fi
    echo 'Wrong answer. Try again.'
done
