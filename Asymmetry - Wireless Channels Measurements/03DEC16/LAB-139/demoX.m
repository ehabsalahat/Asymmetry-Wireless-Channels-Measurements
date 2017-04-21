clc; clear all; close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Parameters
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Location  = 'LAB-139\';
path      = 'C:\Users\Kazekage\Desktop\New folder\SHJ\03DEC16\';
setup     = load(strcat(path,Location,'setup.dat'));
N         = setup(1);
Freq      = linspace(setup(2),setup(3),N);
dist_min  = setup(4);
dist_max  = setup(5);
dist_incr = setup(6);
N_Meas    = (dist_max-dist_min)/dist_incr+1;
dist      = dist_min:dist_incr:dist_max;
t_theo    = dist./3e8;
df        = Freq(2)-Freq(1);
t_max     = 1/df;
t         = linspace(0,t_max,N);


for jj=1:1:N_Meas
    distance = dist(jj);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %                 Measurements - Frequency Domain Analysis
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Measurement ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    dir = strcat(path,Location,'\measurement (',num2str(jj),')\');
    
    m0  = load(strcat(dir,'Measurement_0Ch1.dat'));
    m1  = load(strcat(dir,'Measurement_1Ch1.dat'));
    m2  = load(strcat(dir,'Measurement_2Ch1.dat'));
    m3  = load(strcat(dir,'Measurement_3Ch1.dat'));
    m4  = load(strcat(dir,'Measurement_4Ch1.dat'));
    m5  = load(strcat(dir,'Measurement_5Ch1.dat'));
    m6  = load(strcat(dir,'Measurement_6Ch1.dat'));
    m7  = load(strcat(dir,'Measurement_7Ch1.dat'));
    m8  = load(strcat(dir,'Measurement_8Ch1.dat'));
    m9  = load(strcat(dir,'Measurement_9Ch1.dat'));
    
    % Forward ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    mf = [m0(:,2:3)+m1(:,2:3)+m2(:,2:3)+m3(:,2:3)+m4(:,2:3)+...
        m5(:,2:3)+m6(:,2:3)+m7(:,2:3)+m8(:,2:3)+m9(:,2:3)]./10;
    
    mf_cmplx = mf(:,1)+1i.*mf(:,2);
    mf_mag   = 20.*log10(abs(mf_cmplx));
    
    PL_F(jj)=sum(mf_mag./N);
    % Reverse ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    mr = [m0(:,4:5)+m1(:,4:5)+m2(:,4:5)+m3(:,4:5)+m4(:,4:5)+...
        m5(:,4:5)+m6(:,4:5)+m7(:,4:5)+m8(:,4:5)+m9(:,4:5)]./10;
    
    mr_cmplx = mr(:,1)+1i.*mr(:,2);
    mr_mag = 20.*log10(abs(mr_cmplx));
    PL_R(jj)=sum(mr_mag./N);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %                                 Plots
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    figure; plot(Freq,mf_mag,'b',Freq,mr_mag,'r'); grid on;
    legend('Forward','Reverse'); xlabel('Freq. (Hz)'); ylabel('Magnitude (dB)');
    title(strcat(Location,'~',num2str(distance),' meters'));
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure; subplot(1,2,1); plot(dist,PL_F,'b-o',dist,PL_R,'r-o'); xlim([1 9])
xlabel('Distance'); ylabel('dB'); title('Pathloss');
subplot(1,2,2); semilogx(dist,PL_F,'b-o',dist,PL_R,'r-o'); xlim([1 9])
xlabel('Distance'); ylabel('dB'); title('Pathloss');

figure; plot(dist,PL_F,'b-o',dist,PL_R,'r-o'); xlim([1 9])
xlabel('Distance'); ylabel('dB'); title('Pathloss'); legend('Forward','Reverse'); grid on;