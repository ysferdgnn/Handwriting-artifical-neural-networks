

images=loadMNISTImages('train-images.idx3-ubyte');
labels=loadMNISTLabels('train-labels.idx1-ubyte');
TestImages=loadMNISTImages('testimages.idx3-ubyte');
TestLabels=loadMNISTLabels('testlabels.idx1-ubyte');

net=newff(minmax(images),[37 10], {'logsig' 'logsig'},'trainscg');

net.trainParam.goal=1e-5;
net.trainParam.min_grad=1e-6;
net.trainParam.epochs=800;
net.performFcn='sse';


net=train(net,images,GetTargetMatrix(labels));


