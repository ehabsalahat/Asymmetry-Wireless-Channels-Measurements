// initial setup
:MMEMory:CDIRectory 'C:\Asymmetry\Test_Measurements\NLOS'

:SOURce1:POWer1 0
:SENSe1:FREQuency1:STARt 2.48 GHz
:SENSe1:FREQuency1:STOP 2.5 GHz
:SENSe1:SWEep:POINts 601
:SENSe1:SWEep:TIME:AUTO ON
//=================================================
*CLS
// the trace is calculated and active
:CALCulate1:PARameter:SDEFine 'Trc1','S21'
:CALCulate1:PARameter:SDEFine 'Trc2','S12'

// init the sweeps and wait till all is swept
:INITiate1:CONT OFF
:INITiate1:IMMEDIATE; *OPC?
:MMEMory:STORe:TRACe:CHAN ALL,'Measurement_0.dat'
//=================================================
*CLS
// the trace is calculated and active
:CALCulate1:PARameter:SDEFine 'Trc1','S21'
:CALCulate1:PARameter:SDEFine 'Trc2','S12'

// init the sweeps and wait till all is swept
:INITiate1:CONT OFF
:INITiate1:IMMEDIATE; *OPC?
:MMEMory:STORe:TRACe:CHAN ALL,'Measurement_1.dat'
//=================================================
*CLS
// the trace is calculated and active
:CALCulate1:PARameter:SDEFine 'Trc1','S21'
:CALCulate1:PARameter:SDEFine 'Trc2','S12'

// init the sweeps and wait till all is swept
:INITiate1:CONT OFF
:INITiate1:IMMEDIATE; *OPC?
:MMEMory:STORe:TRACe:CHAN ALL,'Measurement_2.dat'
//=================================================
*CLS
// the trace is calculated and active
:CALCulate1:PARameter:SDEFine 'Trc1','S21'
:CALCulate1:PARameter:SDEFine 'Trc2','S12'

// init the sweeps and wait till all is swept
:INITiate1:CONT OFF
:INITiate1:IMMEDIATE; *OPC?
:MMEMory:STORe:TRACe:CHAN ALL,'Measurement_3.dat'
//=================================================
*CLS
// the trace is calculated and active
:CALCulate1:PARameter:SDEFine 'Trc1','S21'
:CALCulate1:PARameter:SDEFine 'Trc2','S12'

// init the sweeps and wait till all is swept
:INITiate1:CONT OFF
:INITiate1:IMMEDIATE; *OPC?
:MMEMory:STORe:TRACe:CHAN ALL,'Measurement_4.dat'
//=================================================
*CLS
// the trace is calculated and active
:CALCulate1:PARameter:SDEFine 'Trc1','S21'
:CALCulate1:PARameter:SDEFine 'Trc2','S12'

// init the sweeps and wait till all is swept
:INITiate1:CONT OFF
:INITiate1:IMMEDIATE; *OPC?
:MMEMory:STORe:TRACe:CHAN ALL,'Measurement_5.dat'
//=================================================
*CLS
// the trace is calculated and active
:CALCulate1:PARameter:SDEFine 'Trc1','S21'
:CALCulate1:PARameter:SDEFine 'Trc2','S12'

// init the sweeps and wait till all is swept
:INITiate1:CONT OFF
:INITiate1:IMMEDIATE; *OPC?
:MMEMory:STORe:TRACe:CHAN ALL,'Measurement_6.dat'
//=================================================
*CLS
// the trace is calculated and active
:CALCulate1:PARameter:SDEFine 'Trc1','S21'
:CALCulate1:PARameter:SDEFine 'Trc2','S12'

// init the sweeps and wait till all is swept
:INITiate1:CONT OFF
:INITiate1:IMMEDIATE; *OPC?
:MMEMory:STORe:TRACe:CHAN ALL,'Measurement_7.dat'
//=================================================
*CLS
// the trace is calculated and active
:CALCulate1:PARameter:SDEFine 'Trc1','S21'
:CALCulate1:PARameter:SDEFine 'Trc2','S12'

// init the sweeps and wait till all is swept
:INITiate1:CONT OFF
:INITiate1:IMMEDIATE; *OPC?
:MMEMory:STORe:TRACe:CHAN ALL,'Measurement_8.dat'
//=================================================
*CLS
// the trace is calculated and active
:CALCulate1:PARameter:SDEFine 'Trc1','S21'
:CALCulate1:PARameter:SDEFine 'Trc2','S12'

// init the sweeps and wait till all is swept
:INITiate1:CONT OFF
:INITiate1:IMMEDIATE; *OPC?
:MMEMory:STORe:TRACe:CHAN ALL,'Measurement_9.dat'
//=================================================