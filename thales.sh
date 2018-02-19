#!/bin/bash Nome de usuario
clear
while true
 do
read -p "digite um nome valido (apenas letras): " NOME
echo $NOME | grep "[0-9!@#$%&*ªº]"

        if (( $? == 0 )); then
                echo "NOME INVALIDO! DIGITE APENAS LETRAS NO NOME"
        else
                break
        fi

done

#Email
echo "---------------------------------------------------------------------"
while true
do
read -p "Digite um email valido (exemplo@gmail.com): " EMAIL
echo $EMAIL | grep "[@.com]"

        if (( $? == 1 )); then
                echo "EMAIL INVALIDO! DIGITE 'exemplo@gmail.com'"
        else
                break
        fi
done

#telefone
echo "---------------------------------------------------------------------"
while true
do
read -p "Digite seu telefone como no exemplo '(99)9999-9999' " TELEFONE
echo $TELEFONE | grep '(*)'[0-9][0-9][0-9][0-9]"\-"[0-9][0-9][0-9][0-9]

        if (( $? == 1 )); then                
		echo "Telefone invalido. siga o exemplo"
        else
                break
        fi
done

#RG
echo "----------------------------------------------------------------------"
while true
do
read -p "Digite seu RG. exemplo 11.111.111-1: " RG
echo $RG | grep [0-9][0-9]"\."[0-9][0-9][0-9]"\."[0-9][0-9][0-9]"\-"[0-9]

        if (( $? == 1 )); then
                echo "RG invalido. Digite seu RG como no exemplo"
        else
                break
        fi
done

#cpf
echo "----------------------------------------------------------------------"
while true
do
read -p "Digite seu CPF. exemplo 505.550.055-05: " CPF
echo $CPF | grep [0-9][0-9][0-9]"\."[0-9][0-9][0-9]"\."[0-9][0-9][0-9]"\-"[0-9]

        if (( $? == 0 )); then
                break
        else
                echo "CPF invalido. Digite seu CPF seguindo o exemplo"
        fi
done

#data
echo "----------------------------------------------------------------------"
while true
do
read -p "Digite sua data de nascimento. exemplo (06/06/1996): " DATA
echo $DATA | grep [0-9][0-9]"/"[0-9][0-9]"/"[0-9][0-9][0-9][0-9]

        if (( $? == 0 ));then
                break
        else
                echo "Data invalida. Digite sua data como no exemplo"
        fi
done

#IP
echo "-----------------------------------------------------------------------"
while true
do
read -p "Digite um IP. Exemplo (192.168.1.111): " IP
echo $IP | grep [0-9]"\."

        if (( $? == 0 ));then
                break
        else
                echo "IP invalido. Digite seu IP como no exemplo"
        fi
done

#mascara
echo "-----------------------------------------------------------------------"
while true
do
read -p "Digite um mascara. Exemplo (255.255.255.255): " MASCARA
echo $MASCARA | grep [0-5]"\."

        if (( $? == 0 ));then
                break
        else
                echo "Mascara invalida. Digite a mascara como no exemplo"
        fi
done
echo $NOME $EMAIL $TELEFONE $RG $CPF $DATA $IP $MASCARA >/home/vagrant/cadastro.txt


