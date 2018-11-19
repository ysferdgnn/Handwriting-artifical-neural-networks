function [Target]=GetTargetMatrix(labels)

Target=zeros(10,60000);
unitMatrix=eye(10);
for i=1:60000
    if labels(i,1)==0
          Target(:,i)=unitMatrix(:,1);
    elseif labels(i,1)==1
             Target(:,i)=unitMatrix(:,2);
    elseif  labels(i,1)==2
            Target(:,i)=unitMatrix(:,3);
    elseif labels(i,1)==3
            Target(:,i)=unitMatrix(:,4);
    elseif labels(i,1)==4
            Target(:,i)=unitMatrix(:,5);
    elseif labels(i,1)==5
            Target(:,i)=unitMatrix(:,6);
    elseif labels(i,1)==6
            Target(:,i)=unitMatrix(:,7);
    elseif labels(i,1)==7
            Target(:,i)=unitMatrix(:,8);
    elseif labels(i,1)==8
            Target(:,i)=unitMatrix(:,9);
    elseif labels(i,1)==9
            Target(:,i)=unitMatrix(:,10);
    else
    end  
end
end