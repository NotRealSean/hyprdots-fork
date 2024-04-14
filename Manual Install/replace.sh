#!/bin/bash

#!/bin/bash

filelist1="../hyprland.conf"
filelist2="../hyprland.conf.bk"

mapfile -t files1 <"$filelist1"

while IFS= read -r file2; do
	for file1 in "${files1[@]}"; do
		if cmp -s "$file1" "$file2"; then
			printf 'The file "%s" is the same as "%s"\n' "$file1" "$file2"
		fi
	done
done <"$filelist2" | tee file-comparison.out
