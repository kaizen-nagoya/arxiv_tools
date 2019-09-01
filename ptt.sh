!/bin/bash
# https://news.mynavi.jp/article/bashonwindows-17/
# https://qiita.com/kaizen_nagoya/items/319672853519990cee42

 cd ../pdf
 for File in *; do
    case ${File##*.} in
        pdf|PDF )
            echo "Convert the PDF:" ${File}
            pdftotext -q ${File} ../text/${File}.txt ;;
        *) ;;
    esac
 done
