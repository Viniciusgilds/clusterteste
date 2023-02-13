aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 965224688679.dkr.ecr.us-east-1.amazonaws.com
docker build -t meu-nginx -f Dockerfile-nginx  .
docker tag meu-nginx:latest 965224688679.dkr.ecr.us-east-1.amazonaws.com/meu-nginx:latest
docker push 965224688679.dkr.ecr.us-east-1.amazonaws.com/meu-nginx:latest