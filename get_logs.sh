PODS=$(kubectl get pod|grep -v NAME|sed "s/\s.*$//")
foreach POD $PODS
	echo $POD
end
