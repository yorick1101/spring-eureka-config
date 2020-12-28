img=hauchung/spring-config-eureka:2.3.7
docker login --username=hauchung

if [ $? != 0 ];then
	echo "login failed"
	exit -1
fi

docker build -t $img .
docker push $img

