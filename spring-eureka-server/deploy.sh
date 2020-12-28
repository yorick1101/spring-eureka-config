
img=hauchung/spring-eureka:2.3.7


docker login --username=hauchung

docker build -t $img .

docker push $img

