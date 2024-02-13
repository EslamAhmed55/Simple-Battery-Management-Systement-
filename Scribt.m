%Load Data
Data=xlsread('Battery_Parameters.xlsx');
%Name the Data
SOC= Data(:,1);
OCV= Data(:,2);
R_Charage=Data(:,3);
R_DisCharage=Data(:,4);
%plot
plot(SOC,OCV)
figure
plot(SOC,OCV)
figure
plot(SOC,R_Charage)
figure
plot(SOC,R_DisCharage)
%define Parameters
i=2.3;
Cn=2.3*3600;%capacity by seconds;
sim('Battery_model') 