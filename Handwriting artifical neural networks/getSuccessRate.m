function [SuccessRateMatrix]=getSuccessRate(TestResults,TestLabels);
SuccessRateMatrix=zeros(2,1);
confirms=0,fails=0;
for i=1:10000
    if TestResults(i,:)==TestLabels(i,:)
        confirms=confirms+1;
    else
        fails=fails+1;
    end
end
SuccessRateMatrix(1,1)=confirms;
SuccessRateMatrix(2,1)=fails;

SuccessRate=confirms*100/10000;
txt=sprintf('Test Bitti. Baþarý oraný: %% %f',SuccessRate);
disp(txt);

