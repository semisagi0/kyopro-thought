rm html/*.html
for directory in md draft; do
    for path in $directory/*.md; do
        base=$(basename $path .md)
        output_path=html/${base}.html
        pandoc $path -s --self-contained -t html5 -c style.css -o $output_path --metadata pagetitle=$base
    done
done
