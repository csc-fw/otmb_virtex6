//---------------------------------------------------------------------------------------------------------------------------------------
//  OTMB_VIRTEX6 Virtex-6 Global Definitions
//---------------------------------------------------------------------------------------------------------------------------------------
// Firmware version global definitions
  `define FIRMWARE_TYPE 04'hC    // C=Normal CLCT/TMB, D=Debug PCB loopback version
  `define VERSION       04'hE    // Version revision number, A=TMB2004 and earlier, E=TMB2005E production
  `define MONTHDAY      16'h1209 // Version date
  `define YEAR          16'h2014 // Version year

  `define AUTO_VME         01'h1 // Automatically initialize VME registers from PROM data,   0=do not
  `define AUTO_JTAG        01'h1 // Automatically initialize JTAG chain from PROM data,      0=do not
  `define AUTO_PHASER      01'h1 // Automatically initialize PHASER machines from PROM data, 0=do not
  `define ALCT_MUONIC      01'h1 // Floats ALCT board  in clock-space with independent time-of-flight delay
  `define CFEB_MUONIC      01'h1 // Floats CFEB boards in clock-space with independent time-of-flight delay
  `define CCB_BX0_EMULATOR 01'h0 // Turns on bx0 emulator at power up, must be 0 for all CERN versions

  `define VIRTEX6      04'h6    // FPGA type is Virtex6
  `define MEZCARD      04'hD    // Mezzanine Card: D=Virtex6
  `define ISE_VERSION  16'h1460 // ISE Compiler version
//  `define FPGAID     16'h6195 // FPGA Type 6195 XC6VLX195T
  `define FPGAID       16'h6240 // FPGA Type 6240 XC6VLX240T

// Conditional compile flags: Enable only one CSC_TYPE
  `define CSC_TYPE_C  04'hC // Normal   ME1B: ME1B   chambers facing toward IR.    ME1B hs =!reversed, ME1A hs = reversed
//  `define CSC_TYPE_D  04'hD    // Reversed ME1B: ME1B   chambers facing away from IR. ME1B hs = reversed, ME1A hs =!reversed

// Revision log
//  02/08/2013  Initial Virtex-6 specific
//  02/13/2013  Unfolded pattern finder
//  02/14/2013  Remove Virtex-2 sections
//  02/19/2013  Expanded pattern finder for 7 dcfebs
//  02/25/2013  Mod header40_[11:0] for 7 dcfebs, add event counters for cfeb[6:5]
//  02/27/2013  Mod alct rx tx ddr
//  03/04/2013  New cfeb and alct ddr
//  03/05/2013  New VME registers for 7 dcfebs
//  03/07/2013  Restore normal scope channel assigments
//  03/08/2013  Text cleanup
//  03/18/2013  Remove copper cfebs
//  03/21/2013  New pattern_unit ROM, remove cfeb muonic timing
//  03/23/2013  Replace count1s5 in sequencer with count1sof7 ROM
//  03/25/2013  Replace count1s  in pattern_finder layer trigger
//  04/04/2013  Fix pattern finder pre-trigger lookahead array pointers
//  04/12/2013  Use SmartXplorer to optimiz map an PAR settings to help ISE 12.4 converge
//  04/22/2013  Mod power_save in GTX core and switch to ISE 14.5
//  05/08/2013  Revert to Virtex-2 muonic logic for ALCT and MPC, updated to Virtex-6 DDR prims
//  06/04/2013  Restore n-bx delay to cfeb non-muonic stage
//  12/13/2013  JRG: ttc_resync resets the cfeb_badbits counters (see vme.v)
//  12/14/2013  JRG: assign qpll & mmcm lock indications on the Mez SMT LEDs
//  12/15/2013  JRG: adding fiber link monitor logic & modify related VME regs 14C-158, tweaked Mez SMT LED logic
//  12/16-17/2013  JRG: tuning link monitor logic & use "testLED" testpoints for diagnostic signals
//  12/26/2013  JRG: modified the GTX error counters and reassigned GTX-related VME registers
//  12/30/2013  JRG: modified the GTX VME registers with better combinations in bits4:0
//  01/30/2014  set ALCTtx drive setting back to UCLA standard, also changes to DPS clocks (9 DPS -> 4 DPS w/BUFG feedbacks)
//  02/10/2014  use ODDR to bring out clock, alct_rxclock, alct_txclock on testled 1:3
//  02/12/2014  bring out alct_rx_posneg & alct_tx_posneg  on testled 5 & 7;  modify clk feedback circuit
//                      in clock_ctrl.v: exchange names CLOCK --> CLOCK_FB   and   CLOCK_DPS --> CLOCK
//  02/16/2014  tuned logic for clock_lac & changed inputs to ODDR's for ALCT Tx (now "Same Edge")
//      04/03/2014    merge my changes with Yuriy's code for extended MPC results register in VME
//      04/25/2014      Yuri's version with working "last 512 events" storage & readout via VME
//      04/28/2014      first version with BPI engine implemented for firmware download to Flash prom via VME
//      05/04/2014      new verion to test download function.... no logic changes --JRG: DriveDoneHigh, Config=40MHz
//      06/20/2014      adding muoninc logic again into cfeb gtx_optical modules
//      06/23/2014      returning clock_ctrl CFEB phase shifters to UCLA standard: 9 shifters total instead of just 4
//      06/24/2014      comp data leaves gtx_optical module on Falling edge of LHC Clock to save .5 BX latency
//---------------------------------------------------------------------------------------------------------------------------------------
//  End Global Definitions
//---------------------------------------------------------------------------------------------------------------------------------------