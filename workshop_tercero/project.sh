#!bin/bash

mysql \
-u root \
-panderson123! \
--local-infile=1 \
--host 127.0.0.1 \
--port 3306 -e "source database_ddl.sql; source population.sql;" 


data=""
for file in ./creacion_objetos/*
do
	echo "process start"
	if [ -f "$file" ]; then
		echo "execution in progress $file"
		data+="source $file ; " 
	fi
done
mysql -u root -panderson123! --host 127.0.0.1 --port 3306 -e "$data"
mysql -u root -panderson123! --host 127.0.0.1 --port 3306 -e "show procedure status where db='mozo_atr'; \
	show function status where db='mozo_atr'; \
	select trigger_schema, trigger_name from information_schema.triggers where information_schema.triggers.trigger_schema like 'mozo_atr'; \
	SHOW FULL TABLES IN mozo_atr WHERE TABLE_TYPE LIKE 'VIEW'; "
