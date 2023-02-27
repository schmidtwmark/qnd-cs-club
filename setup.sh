if [ -z "$1" ]; then
  echo "Provide a day number."
  echo "usage: $0 <DAY>"
  exit 1
fi

cp templates/presentation_template.md presentations/day$1.md

sed -i '' -e "s/aaaaa/$1/g"  presentations/day$1.md

