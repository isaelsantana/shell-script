#!/bin/bash 

#Exemplo final do script shell 


Principal() {
	echo "Exemplo final sobre o uso do script Shell"
	echo "-----------------------------------------"
	echo "Opções"
	echo "1.Transformar nomes de arquivos"
       	echo "2.Adicionar um usuário ao sistema"
	echo "3.Deletar um usuário do sistema"
	echo "4.Fazer backup do diretorio /etc/"
	echo "5.Sair do exmplo"
	echo 
	echo -n "Qual a opção desejada? "
	read opcao; 
	case $opcao in 
	1) Transformar ;;
	2) Adicionar ;;
	3) Deletar;;
	4) Backup;;
	5) exit ;;
	*) "Opcao desconhecida" ; echo ; Principal ;;
	esac
}	

Transformar(){
	echo -n "Para Maiúsculo ou minúsculo? [M/m] "
	read var; 
	if [ $var == "M" ]; then 
		echo -n "Que diretório? "
		read dir; 

		for x in '/bin/ls' $dir; do 
			y= echo $x | tr '(:lower:]' '(:upper:]'
			if [ ! -e $y ]; then 
				mv $x $y
			fi 
		done 
	elif [$var == "m"]; then 
		echo -n "Que Diretorio?"
		read dir; 

		for x in /bin/ls $dir; do 
			y= echo $x | tr '(:upper;]' '(:lower;]'
			if [! -e $y ]; then 
				mv $x $y 
			fi 
		done 
	fi 
}

Adicionar() {
	clear 
	echo -n "Qual o nome do usuário a se adicionar? "
	read nome; 
	adduser $nome
	Principal

}

Deletar(){
	clear 
	echo -n "Qual o nome do usuário a deletar? "
	read nome; 
	userdel $nome
	Principal
}

Backup(){
	for x in '/bin/ls' /etc; do 
		cp -R /etc/$x /etc/$x.bck
		mv /etc/$x.bck /usr/backup
	done
}

Principal

