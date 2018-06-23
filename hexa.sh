#!/bin/bash
echo -e ""
echo -e "Conversao de Base Decimal/Hexa para Terminal"
echo -e "---------------------------------------------"
echo -e ""
echo -e "Digite 0 para insercao de base 10 - Ex:192.168.0.1"
echo -e "Digite 1 para insercao de nomes - Ex:hostname.fulano-pc"
echo -e "[0] ou [1]:"
read a
	if test $a = "0"
	then
		echo -e "Digite o Valor na Base 10: ex: 192.168.0.1"
		read ENTRADA
		FILTRO1=$(echo $ENTRADA | cut -f 1 -d'.')
		FILTRO2=$(echo $ENTRADA | cut -f 2 -d'.')
		FILTRO3=$(echo $ENTRADA | cut -f 3 -d'.')
		FILTRO4=$(echo $ENTRADA | cut -f 4 -d'.')
		SAIDA1=$(printf '%x\n' "$FILTRO1")
		SAIDA2=$(printf '%x\n' "$FILTRO2")
		SAIDA3=$(printf '%x\n' "$FILTRO3")
		SAIDA4=$(printf '%x\n' "$FILTRO4")
		TOTAL=$(echo 0x"$SAIDA1".0x"$SAIDA2".0x"$SAIDA3".0x"$SAIDA4")
		echo "$TOTAL"
		echo "Deseja Pingar esse Hexa? Sim[1] / Nao [0]"
		read sn
			if test $sn = "1"
			then
				ping "$TOTAL"
			fi
			if test $sn = "0"
			then
				echo -e "\nResultado em  HEXA:\n\n $TOTAL"
			fi
	fi
	if test $a = "1"
	then
		echo "okok"
	fi

