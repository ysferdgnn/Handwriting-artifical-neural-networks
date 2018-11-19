function [TestMatrix,SonucMatrix]=GetTestResultsMatrix(net,TestImages)

TestMatrix=zeros(10,10000);
SonucMatrix=zeros(10000,1);
for i=1:10000
    tempMatrix=sim(net,TestImages(:,i));
    TestMatrix(:,i)=tempMatrix();
   % TestMatrix(:,i)=X(:,1);


end
for i=1:10000
    A=TestMatrix(:,i);
    for j=1:10
        if A(j,:)>0.6 
           
            SonucMatrix(i,:)=j-1;
        end
    end
end
    

end
    
