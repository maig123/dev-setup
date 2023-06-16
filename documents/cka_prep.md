##Notes for cka prep

create deployment from yaml
scale up
rollouts and rollbacks
cronjobs
config maps


creates a yaml

kubectl create deploy webapp1 --image=nginx:1.16-alpine-perl --dry-run=client -o yaml > test.yml

kubectl apply -f documents/test.yml

scale up
modify test.yml with replaces replicas to 10
kubectl apply -f documents/test.yml

rollouts and rollbacks
modify container image in test.yml 
kubectl apply -f documents/test.yml
kubectl rollout undo deploy webapp1

cronjobs
config maps
kubectl create configmap configmaptest -o yaml --from-literal=special.type=blue --from-literal=day=friday > configmap.yml

update test.yml with the following
        envFrom:
        - configMapRef:
            name: configmaptest




