#!/bin/bash

# Define o endereço IP ou intervalo de IP a ser escaneado
ip="192.168.0.1/24"

# Realiza o scan de todos os dispositivos na rede e salva em um arquivo XML
nmap -sV -O -p 1-65535 $ip -oX nmap-results.xml

# Filtra os resultados para exibir apenas os dispositivos móveis
grep -E 'Android|iOS' nmap-results.xml
