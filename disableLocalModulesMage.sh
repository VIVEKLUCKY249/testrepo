for filename in *.xml; do
	if grep -q '<codePool>local</codePool>' "$filename"; then
		if [[ $filename != *"Mage_"* ]]; then
			# echo "$filename";
			sed -i.bak 's/true/false/g' "$filename"
		fi
	fi
done
