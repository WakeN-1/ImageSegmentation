close all 
clear all

%%%these data are for 2% diol concentration in FINAL 2.1 folder
TotalFractions=zeros(7,2);
%%%%%%%%% 1,4 Butanediol 
NoDiol(:,:,1)=im2gray(imread("DATASET/no additivie 1.png"));
NoDiol(:,:,2)=im2gray(imread("DATASET/no additivie 2.png"));
NoDiol(:,:,3)=im2gray(imread("DATASET/no additivie 3.png"));
%NoDiol(:,:,4)=im2gray(imread("No additive 4.tif"));
NoDiol=NoDiol(400:end-400,400:end-400,:)

 NoDiol_new=zeros(size(NoDiol));
 
 z=zeros(size(NoDiol(:,:,1)));
  for i=1:length(NoDiol(1,1,:))
 
 for j=1:length(NoDiol(:,1,1))
 
     p=detrend((im2double(NoDiol(j,:,i))-min((im2double(NoDiol(j,:,i))))))*255;
     z(j,:)=p;
 
       % z(z>150)=0;
        z(z>15)=255;
        z(z<=15)=0;
      % 
  end
  NoDiol_new(:,:,i)=z;
  end


NoDiol_new(NoDiol_new>1)=1;
 frac1=sum(sum(NoDiol_new(:,:,1)))/(length(NoDiol_new(:,:,1))*width(NoDiol_new(:,:,1)));

 frac2=sum(sum(NoDiol_new(:,:,2)))/(length(NoDiol_new(:,:,1))*width(NoDiol_new(:,:,1)));

 frac3=sum(sum(NoDiol_new(:,:,3)))/(length(NoDiol_new(:,:,1))*width(NoDiol_new(:,:,1)));
 NoDiol_replicates=[frac1 frac2 frac3]';
meanNoDiol=mean([frac1 frac2 frac3]);
stdNoDiol=std([frac1 frac2 frac3]);
%  figure
%  imshow(NoDiol_new(:,:,1))
%  figure
%  imshow(NoDiol(:,:,1))
% % 
%  figure
%  imshow(NoDiol_new(:,:,2))
%  figure
%  imshow(NoDiol(:,:,2))
%  figure
%  imshow(NoDiol_new(:,:,3))
%  figure
%  imshow(NoDiol(:,:,3))

 TotalFractions(1,:)=[meanNoDiol stdNoDiol];
%%%%%%%%% 1,4 Butanediol 
BD14(:,:,1)=im2gray(imread("DATASET/1,4-BD 1.png"));
BD14(:,:,2)=im2gray(imread("DATASET/1,4-BD 2.png"));
BD14(:,:,3)=im2gray(imread("DATASET/1,4-BD 3.png"));
%BD14(:,:,4)=im2gray(imread("1,4-BD 4.tif"));
BD14=BD14(400:end-400,400:end-400,:)

 BD14_new=zeros(size(BD14));
 
 z=zeros(size(BD14(:,:,1)));
  for i=1:length(BD14(1,1,:))
 
 for j=1:length(BD14(:,1,1))
 
     p=detrend((im2double(BD14(j,:,i))-min((im2double(BD14(j,:,i))))))*255;
     z(j,:)=p;
 
       % z(z>150)=0;
        z(z>15)=255;
        z(z<=15)=0;
      % 
  end
  BD14_new(:,:,i)=z;
  end


BD14_new(BD14_new>1)=1;
 frac1=sum(sum(BD14_new(:,:,1)))/(length(BD14_new(:,:,1))*width(BD14_new(:,:,1)));

 frac2=sum(sum(BD14_new(:,:,2)))/(length(BD14_new(:,:,1))*width(BD14_new(:,:,1)));

 frac3=sum(sum(BD14_new(:,:,3)))/(length(BD14_new(:,:,1))*width(BD14_new(:,:,1)));
 BD14_replicates=[frac1 frac2 frac3]';
meanBD14=mean([frac1 frac2 frac3]);
stdBD14=std([frac1 frac2 frac3]);
%  figure
%  imshow(BD14_new(:,:,1))
%  figure
%  imshow(BD14(:,:,1))
% % 
%  figure
%  imshow(BD14_new(:,:,2))
%  figure
%  imshow(BD14(:,:,2))
%  figure
%  imshow(BD14_new(:,:,3))
%  figure
%  imshow(BD14(:,:,3))

 TotalFractions(2,:)=[meanBD14 stdBD14];

%%%%%%%%% 1,5 Pentanediol
PD15(:,:,1)=im2gray(imread("DATASET/1,5-PD 1.png"));
PD15(:,:,2)=im2gray(imread("DATASET/1,5-PD 2.png"));
PD15(:,:,3)=im2gray(imread("DATASET/1,5-PD 3.png"));
%PD15(:,:,4)=im2gray(imread("1,5-PD 4.tif"));
PD15=PD15(400:end-400,400:end-400,:)

 PD15_new=zeros(size(PD15));
 
 z=zeros(size(PD15(:,:,1)));
  for i=1:length(PD15(1,1,:))
 
 for j=1:length(PD15(:,1,1))
 
     p=detrend((im2double(PD15(j,:,i))-min((im2double(PD15(j,:,i))))))*255;
     z(j,:)=p;
 
       % z(z>150)=0;
        z(z>15)=255;
        z(z<=15)=0;
      % 
  end
  PD15_new(:,:,i)=z;
 end

PD15_new(PD15_new>1)=1;
 frac1=sum(sum(PD15_new(:,:,1)))/(length(PD15_new(:,:,1))*width(PD15_new(:,:,1)));

 frac2=sum(sum(PD15_new(:,:,2)))/(length(PD15_new(:,:,1))*width(PD15_new(:,:,1)));

 frac3=sum(sum(PD15_new(:,:,3)))/(length(PD15_new(:,:,1))*width(PD15_new(:,:,1)));
 PD15_replicates=[frac1 frac2 frac3]';
meanPD15=mean([frac1 frac2 frac3]);
stdPD15=std([frac1 frac2 frac3]);

% 
%  figure
%  imshow(PD15_new(:,:,1))
%  figure
%  imshow(PD15(:,:,1))
% % 
%  figure
%  imshow(PD15_new(:,:,2))
%  figure
%  imshow(PD15(:,:,2))
%  figure
%  imshow(PD15_new(:,:,3))
%  figure
%  imshow(PD15(:,:,3))
  TotalFractions(3,:)=[meanPD15 stdPD15];

  %%%%%%%%% 1,2 Cyclohexanediol
CHD12(:,:,1)=im2gray(imread("DATASET/1,2-CHD 1.png"));
CHD12(:,:,2)=im2gray(imread("DATASET/1,2-CHD 2.png"));
CHD12(:,:,3)=im2gray(imread("DATASET/1,2-CHD 3.png"));
%CHD12(:,:,4)=im2gray(imread("1,2-CHD 4.tif"));
CHD12=CHD12(400:end-400,400:end-400,:)

 CHD12_new=zeros(size(CHD12));
 
 z=zeros(size(CHD12(:,:,1)));
  for i=1:length(CHD12(1,1,:))
 
 for j=1:length(CHD12(:,1,1))
 
     p=detrend((im2double(CHD12(j,:,i))-min((im2double(CHD12(j,:,i))))))*255;
     z(j,:)=p;
 
       % z(z>150)=0;
        z(z>15)=255;
        z(z<=15)=0;
      % 
  end
  CHD12_new(:,:,i)=z;
 end

CHD12_new(CHD12_new>1)=1;
 frac1=sum(sum(CHD12_new(:,:,1)))/(length(CHD12_new(:,:,1))*width(CHD12_new(:,:,1)));

 frac2=sum(sum(CHD12_new(:,:,2)))/(length(CHD12_new(:,:,1))*width(CHD12_new(:,:,1)));

 frac3=sum(sum(CHD12_new(:,:,3)))/(length(CHD12_new(:,:,1))*width(CHD12_new(:,:,1)));
 CHD12_replicates=[frac1 frac2 frac3]';
meanCHD12=mean([frac1 frac2 frac3]);
stdCHD12=std([frac1 frac2 frac3]);


%  figure
%  imshow(CHD12_new(:,:,1))
%  figure
%  imshow(CHD12(:,:,1))
% % 
%  figure
%  imshow(CHD12_new(:,:,2))
%  figure
%  imshow(CHD12(:,:,2))
%  figure
%  imshow(CHD12_new(:,:,3))
%  figure
%  imshow(CHD12(:,:,3))
  TotalFractions(4,:)=[meanCHD12 stdCHD12];

    %%%%%%%%% 1,2 hexanediol
HD12(:,:,1)=im2gray(imread("DATASET/1,2-HD 1.png"));
HD12(:,:,2)=im2gray(imread("DATASET/1,2-HD 2.png"));
HD12(:,:,3)=im2gray(imread("DATASET/1,2-HD 3.png"));
%HD12(:,:,4)=im2gray(imread("1,2-HD 4.tif"));
HD12=HD12(400:end-400,400:end-400,:)

 HD12_new=zeros(size(HD12));
 
 z=zeros(size(HD12(:,:,1)));
  for i=1:length(HD12(1,1,:))
 
 for j=1:length(HD12(:,1,1))
 
     p=detrend((im2double(HD12(j,:,i))-min((im2double(HD12(j,:,i))))))*255;
     z(j,:)=p;
 
       % z(z>150)=0;
        z(z>15)=255;
        z(z<=15)=0;
      % 
  end
  HD12_new(:,:,i)=z;
 end

HD12_new(HD12_new>1)=1;
 frac1=sum(sum(HD12_new(:,:,1)))/(length(HD12_new(:,:,1))*width(HD12_new(:,:,1)));

 frac2=sum(sum(HD12_new(:,:,2)))/(length(HD12_new(:,:,1))*width(HD12_new(:,:,1)));

 frac3=sum(sum(HD12_new(:,:,3)))/(length(HD12_new(:,:,1))*width(HD12_new(:,:,1)));
 HD12_replicates=[frac1 frac2 frac3]';
meanHD12=mean([frac1 frac2 frac3]);
stdHD12=std([frac1 frac2 frac3]);

% 
%  figure
%  imshow(HD12_new(:,:,1))
%  figure
%  imshow(HD12(:,:,1))
% % 
%  figure
%  imshow(HD12_new(:,:,2))
%  figure
%  imshow(HD12(:,:,2))
%  figure
%  imshow(HD12_new(:,:,3))
%  figure
%  imshow(HD12(:,:,3))
  TotalFractions(5,:)=[meanHD12 stdHD12];


      %%%%%%%%% 1,6 hexanediol
HD16(:,:,1)=im2gray(imread("DATASET/1,6-HD 1.png"));
HD16(:,:,2)=im2gray(imread("DATASET/1,6-HD 2.png"));
HD16(:,:,3)=im2gray(imread("DATASET/1,6-HD 3.png"));
%HD16(:,:,4)=im2gray(imread("1,6-HD 4.tif"));
HD16=HD16(400:end-400,400:end-400,:)

 HD16_new=zeros(size(HD16));
 
 z=zeros(size(HD16(:,:,1)));
  for i=1:length(HD16(1,1,:))
 
 for j=1:length(HD16(:,1,1))
 
     p=detrend((im2double(HD16(j,:,i))-min((im2double(HD16(j,:,i))))))*255;
     z(j,:)=p;
 
       % z(z>150)=0;
        z(z>15)=255;
        z(z<=15)=0;
      % 
  end
  HD16_new(:,:,i)=z;
 end

HD16_new(HD16_new>1)=1;
 frac1=sum(sum(HD16_new(:,:,1)))/(length(HD16_new(:,:,1))*width(HD16_new(:,:,1)));

 frac2=sum(sum(HD16_new(:,:,2)))/(length(HD16_new(:,:,1))*width(HD16_new(:,:,1)));

 frac3=sum(sum(HD16_new(:,:,3)))/(length(HD16_new(:,:,1))*width(HD16_new(:,:,1)));
 HD16_replicates=[frac1 frac2 frac3]';
meanHD16=mean([frac1 frac2 frac3]);
stdHD16=std([frac1 frac2 frac3]);


%  figure
%  imshow(HD16_new(:,:,1))
%  figure
%  imshow(HD16(:,:,1))
% % 
%  figure
%  imshow(HD16_new(:,:,2))
%  figure
%  imshow(HD16(:,:,2))
%  figure
%  imshow(HD16_new(:,:,3))
%  figure
%  imshow(HD16(:,:,3))
  TotalFractions(6,:)=[meanHD16 stdHD16];

      %%%%%%%%% 2,5 hexanediol
HD25(:,:,1)=im2gray(imread("DATASET/2,5-HD 1.png"));
HD25(:,:,2)=im2gray(imread("DATASET/2,5-HD 2.png"));
HD25(:,:,3)=im2gray(imread("DATASET/2,5-HD 3.png"));
%HD25(:,:,4)=im2gray(imread("2,5-HD 4.tif"));
HD25=HD25(400:end-400,400:end-400,:);

 HD25_new=zeros(size(HD25));
 
 z=zeros(size(HD25(:,:,1)));
  for i=1:length(HD25(1,1,:))
 
 for j=1:length(HD25(:,1,1))
 
     p=detrend((im2double(HD25(j,:,i))-min((im2double(HD25(j,:,i))))))*255;
     z(j,:)=p;
 
       % z(z>150)=0;
        z(z>15)=255;
        z(z<=15)=0;
      % 
  end
  HD25_new(:,:,i)=z;
 end

HD25_new(HD25_new>1)=1;
 frac1=sum(sum(HD25_new(:,:,1)))/(length(HD25_new(:,:,1))*width(HD25_new(:,:,1)));

 frac2=sum(sum(HD25_new(:,:,2)))/(length(HD25_new(:,:,1))*width(HD25_new(:,:,1)));

 frac3=sum(sum(HD25_new(:,:,3)))/(length(HD25_new(:,:,1))*width(HD25_new(:,:,1)));
 HD25_replicates=[frac1 frac2 frac3]';
meanHD25=mean([frac1 frac2 frac3]);
stdHD25=std([frac1 frac2 frac3]);


 % figure
 % imshow(HD25_new(:,:,1))
 % figure
 % imshow(HD25(:,:,1))
% 
 % figure
 % imshow(HD25_new(:,:,2))
 % figure
 % imshow(HD25(:,:,2))
 % figure
 % imshow(HD25_new(:,:,3))
 % figure
 % imshow(HD25(:,:,3))
  TotalFractions(7,:)=[meanHD25 stdHD25];

figure
  names=reordercats(categorical({'No Diol','14BD','15PD','12CHD','12HD','16HD','25HD'}),{'No Diol','14BD','15PD','12CHD','12HD','16HD','25HD'})
bar(names,TotalFractions(:,1)')
hold on
errorbar(names,TotalFractions(:,1),TotalFractions(:,2),'LineStyle','none')

spindown_12CHD=208.75;

spindown_12HD=200.29;
spindown_16HD=215.96;
spindown_25HD=167.13;
spindown_15PD=184.22;
spindown_14BD=149.80;

%vector=[spindown_14BD;spindown_15PD;spindown_12CHD;spindown_12HD;spindown_16HD;spindown_25HD]

%figure
%scatter(vector,TotalFractions(:,1))
%%
T=table(NoDiol_replicates,BD14_replicates,PD15_replicates,CHD12_replicates,HD12_replicates,HD16_replicates,HD25_replicates,'VariableNames',{'NoDiol','1,4BD','1,5PD','1,2CHD','1,2HD','1,6HD','2,5HD'});
A=rows2vars(T);
meanz=[meanNoDiol;meanBD14;meanPD15;meanCHD12;meanHD12;meanHD16;meanHD25];
stdz=[stdNoDiol;stdBD14;stdPD15;stdCHD12;stdHD12;stdHD16;stdHD25];
A{:,end+1}=meanz;
A{:,end+1}=stdz;
A.Properties.VariableNames={'Diol','Run1','Run2','Run3','Mean','StDev'}



%%
%%%%%%% Here i will write everything to files - brute force because this is
%%%%%%% first iteration

%%%make a parent folder
if isfolder('DATA_OUTPUT_012425')
    rmdir('DATA_OUTPUT_012425','s')
end

if not(isfolder('DATA_OUTPUT_012425'))
    mkdir('DATA_OUTPUT_012425')
end
%%% diol folders
%%
writetable(A,"DATA_OUTPUT_012425/FL_polyU_w_replicates_012425.xlsx");
%%
%%%NoDiol
if isfolder('DATA_OUTPUT_012425/NoDiol')
    rmdir('DATA_OUTPUT_012425/NoDiol','s')
end

if not(isfolder('DATA_OUTPUT_012425/NoDiol'))
    mkdir('DATA_OUTPUT_012425/NoDiol')
end

%%%14BD
if isfolder('DATA_OUTPUT_012425/14BD')
    rmdir('DATA_OUTPUT_012425/14BD','s')
end

if not(isfolder('DATA_OUTPUT_012425/14BD'))
    mkdir('DATA_OUTPUT_012425/14BD')
end

%%%15PD
if isfolder('DATA_OUTPUT_012425/15PD')
    rmdir('DATA_OUTPUT_012425/15PD','s')
end

if not(isfolder('DATA_OUTPUT_012425/15PD'))
    mkdir('DATA_OUTPUT_012425/15PD')
end

%%%12CHD

if isfolder('DATA_OUTPUT_012425/12CHD')
    rmdir('DATA_OUTPUT_012425/12CHD','s')
end

if not(isfolder('DATA_OUTPUT_012425/12CHD'))
    mkdir('DATA_OUTPUT_012425/12CHD')
end

%%%12HD

if isfolder('DATA_OUTPUT_012425/12HD')
    rmdir('DATA_OUTPUT_012425/12HD','s')
end

if not(isfolder('DATA_OUTPUT_012425/12HD'))
    mkdir('DATA_OUTPUT_012425/12HD')
end

%%%16HD

if isfolder('DATA_OUTPUT_012425/16HD')
    rmdir('DATA_OUTPUT_012425/16HD','s')
end

if not(isfolder('DATA_OUTPUT_012425/16HD'))
    mkdir('DATA_OUTPUT_012425/16HD')
end

%%%25HD

if isfolder('DATA_OUTPUT_012425/25HD')
    rmdir('DATA_OUTPUT_012425/25HD','s')
end

if not(isfolder('DATA_OUTPUT_012425/25HD'))
    mkdir('DATA_OUTPUT_012425/25HD')
end


%%%% Stack all images into an album
Album=zeros(length(NoDiol(:,1,1)),length(NoDiol(1,:,1)),length(TotalFractions(:,1))*3);
Album(:,:,1:3)=im2double(NoDiol);
Album(:,:,4:6)=NoDiol_new;
Album(:,:,7:9)=im2double(BD14);
Album(:,:,10:12)=BD14_new;
Album(:,:,13:15)=im2double(PD15);
Album(:,:,16:18)=PD15_new;
Album(:,:,19:21)=im2double(CHD12);
Album(:,:,22:24)=CHD12_new;
Album(:,:,25:27)=im2double(HD12);
Album(:,:,28:30)=HD12_new;
Album(:,:,31:33)=im2double(HD16);
Album(:,:,34:36)=HD16_new;
Album(:,:,37:39)=im2double(HD25);
Album(:,:,40:42)=HD25_new;

% Album(:,:,1:4)=im2double(NoDiol);
% Album(:,:,5:8)=NoDiol_new;
% Album(:,:,9:12)=im2double(BD14);
% Album(:,:,13:16)=BD14_new;
% Album(:,:,17:20)=im2double(PD15);
% Album(:,:,21:24)=PD15_new;
% Album(:,:,25:28)=im2double(CHD12);
% Album(:,:,29:32)=CHD12_new;
% Album(:,:,33:36)=im2double(HD12);
% Album(:,:,37:40)=HD12_new;
% Album(:,:,41:44)=im2double(HD16);
% Album(:,:,45:48)=HD16_new;
% Album(:,:,49:52)=im2double(HD25);
% Album(:,:,53:56)=HD25_new;


%%%%%%%%fill the folders
n=7;
p=6; %Number of images + number of masks
registerz={'NoDiol';'14BD';'15PD';'12CHD';'12HD';'16HD';'25HD'};
for k=0:n-1

for zz=p*k+1:p*k+6
  filename =['DATA_OUTPUT/',registerz{k+1},'/',num2str(zz),'.png'] ;
  imwrite(Album(:,:,zz), filename, 'png') ;
end
end


T=array2table(TotalFractions');
T.Properties.VariableNames=registerz;
writetable(T,'FUS_FL_ImageQuant_041824.xlsx')
