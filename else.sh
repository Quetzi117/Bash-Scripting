# !/bin/bash
nota=0
edad=0

echo "ejemplo sentencia if"
read -n1 -p "indique nota (1-9): " nota
echo -e "\n"

if [[ $nota>=7 ]]; then
	echo "_______el alumno aprueba_______"
else
	echo "_______el alumno reprueba___________"
fi

echo -e "\n"

read -n2 -p "cual es tu edad: " edad
if [ $edad -le 18 ]; then
	echo  "____La persona no puede beber____"
else 
	echo "____Puedes beber______-"
fi


if [ $edad -le 18 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi

