# Print list of word frequencies
# https://researchmap.jp/jomd7nobo-45644/
# https://qiita.com/kaizen_nagoya/items/319672853519990cee42

{
    $0 = tolower($0)    # 
    gsub(/[^a-z_ \t]/, " ", $0)  #
    for (i = 1; i <= NF; i++)
        freq[$i]++
}

END {
    for (word in freq)
        printf "%s\t%d\n", word, freq[word]
}
