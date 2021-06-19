#!/bin/bash

kubectl rollout restart deployment webserver
kubectl rollout status deployment webserver