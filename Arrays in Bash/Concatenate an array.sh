for line in `cat`; do
    array=( "${array[@]}" $line )
done

Final=("${array[@]}" "${array[@]}" "${array[@]}")
echo "${Final[@]}"
