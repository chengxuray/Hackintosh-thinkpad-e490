/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-11-SgRpSsdt.aml, Mon Jan 20 19:46:02 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000007D7 (2007)
 *     Revision         0x02
 *     Checksum         0xC2
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "SgRpSsdt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "SgRpSsdt", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.GGIV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.GGOV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.BARD, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.CMDS, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.D8XH, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.HGOF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.HGON, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.GATY, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.RP05, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP05.PEGP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP05.PEGP._ADR, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments (from opcode)
    External (D8XH, MethodObj)    // 2 Arguments
    External (DLHR, UnknownObj)    // (from opcode)
    External (DLPW, UnknownObj)    // (from opcode)
    External (EECP, UnknownObj)    // (from opcode)
    External (GBAS, UnknownObj)    // (from opcode)
    External (HRA0, UnknownObj)    // (from opcode)
    External (HRE0, UnknownObj)    // (from opcode)
    External (HRG0, UnknownObj)    // (from opcode)
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (OSYS, UnknownObj)    // (from opcode)
    External (PWA0, UnknownObj)    // (from opcode)
    External (PWE0, UnknownObj)    // (from opcode)
    External (PWG0, UnknownObj)    // (from opcode)
    External (RPA5, UnknownObj)    // (from opcode)
    External (RPBA, UnknownObj)    // (from opcode)
    External (RPIN, UnknownObj)    // (from opcode)
    External (SGGP, UnknownObj)    // (from opcode)
    External (SGMD, UnknownObj)    // (from opcode)
    External (XBAS, UnknownObj)    // (from opcode)

    Scope (\_SB.PCI0)
    {
        Name (IVID, 0xFFFF)
        Name (ELCT, Zero)
        Name (HVID, Zero)
        Name (HDID, Zero)
        Name (TCNT, Zero)
        Name (LDLY, 0x64)
        Name (RPIX, Zero)
        Name (CMDS, Zero)
        Name (ONOF, One)
        OperationRegion (RPCF, SystemMemory, RPBA, 0x1000)
        Field (RPCF, DWordAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16, 
            PCMR,   8, 
            Offset (0x18), 
            PRBN,   8, 
            SCBN,   8, 
            Offset (0x4A), 
            CEDR,   1, 
            Offset (0x50), 
            ASPM,   2, 
                ,   2, 
            LKD1,   1, 
            Offset (0x52), 
                ,   13, 
            LASX,   1, 
            Offset (0x69), 
                ,   2, 
            LREN,   1, 
            Offset (0xA4), 
            PWRS,   8, 
            Offset (0xE2), 
                ,   2, 
            L23E,   1, 
            L23R,   1, 
            Offset (0x328), 
                ,   19, 
            LKS1,   4
        }

        OperationRegion (RTPN, SystemMemory, Add (\XBAS, ShiftLeft (SCBN, 0x14)), 0x0500)
        Field (RTPN, AnyAcc, Lock, Preserve)
        {
            DVID,   16, 
            Offset (0x04), 
            CMDR,   8, 
            Offset (0x0B), 
            CBCN,   8, 
            Offset (0x2C), 
            SVID,   16, 
            SDID,   16, 
            Offset (0x4C), 
            SVIW,   32, 
            Offset (0x488), 
                ,   25, 
            MLTR,   1
        }

        OperationRegion (PCAN, SystemMemory, Add (Add (\XBAS, ShiftLeft (SCBN, 0x14)), \EECP), 0x14)
        Field (PCAN, DWordAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            LCTR,   16
        }

        OperationRegion (PCBN, SystemMemory, Add (Add (Add (\XBAS, ShiftLeft (SCBN, 0x14)), 0x1000), \EECP), 0x14)
        Field (PCBN, DWordAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            LCTZ,   16
        }

        Method (SGPO, 4, Serialized)
        {
            If (LEqual (Arg2, Zero))
            {
                Not (Arg3, Arg3)
                And (Arg3, One, Arg3)
            }

            If (LEqual (SGGP, One))
            {
                If (CondRefOf (\_SB.SGOV))
                {
                    \_SB.SGOV (Arg1, Arg3)
                }
            }
        }

        Method (SGPI, 4, Serialized)
        {
            If (LEqual (Arg0, One))
            {
                If (CondRefOf (\_SB.GGOV))
                {
                    Store (\_SB.GGOV (Arg2), Local0)
                }
            }

            If (LEqual (Arg3, Zero))
            {
                Not (Local0, Local0)
            }

            And (Local0, One, Local0)
            Return (Local0)
        }

        Method (CCHK, 1, NotSerialized)
        {
            If (LEqual (PVID, IVID))
            {
                Return (Zero)
            }

            If (LEqual (Arg0, Zero))
            {
                If (LEqual (ONOF, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (ONOF, One))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Name (ACNT, Zero)
        Name (ADLT, 0x14)
        Name (BARD, Zero)
        Name (DGID, Zero)
        Method (HGON, 0, Serialized)
        {
            D8XH (Zero, 0x33)
            If (LEqual (CCHK (One), Zero))
            {
                Return (Zero)
            }

            Store (One, ONOF)
            SGPO (PWE0, PWG0, PWA0, One)
            While (LLess (ACNT, ADLT))
            {
                If (LEqual (\_SB.GGIV (0x04020012), One))
                {
                    Break
                }

                Sleep (One)
                Add (ACNT, One, ACNT)
            }

            Sleep (0x96)
            If (LEqual (\_SB.GGIV (0x04020012), One))
            {
                SGPO (HRE0, HRG0, HRA0, Zero)
            }

            Sleep (One)
            Store (Zero, LKD1)
            Store (Zero, TCNT)
            While (LLess (TCNT, LDLY))
            {
                If (LGreaterEqual (LKS1, 0x07))
                {
                    Break
                }

                Sleep (0x10)
                Add (TCNT, 0x10, TCNT)
            }

            Store (Or (ShiftLeft (HDID, 0x10), HVID), SVIW)
            Store (CMDS, CMDR)
            Store (Zero, MLTR)
            Or (And (ELCT, 0x43), And (LCTR, 0xFFBC), LCTR)
            Or (And (ELCT, 0x43), And (LCTZ, 0xFFBC), LCTZ)
            Store (0x02, \_SB.PCI0.LPCB.EC.GATY)
            D8XH (Zero, 0x44)
            Return (Zero)
        }

        Method (HGOF, 0, Serialized)
        {
            D8XH (Zero, 0x55)
            If (LEqual (CCHK (Zero), Zero))
            {
                Return (Zero)
            }

            Store (Zero, ONOF)
            Store (LCTR, ELCT)
            Store (Or (ShiftLeft (HDID, 0x10), HVID), DGID)
            Store (DGID, SVIW)
            Store (CMDR, CMDS)
            Store (One, LKD1)
            Store (Zero, TCNT)
            While (LLess (TCNT, LDLY))
            {
                If (LEqual (LKS1, Zero))
                {
                    Break
                }

                Sleep (0x10)
                Add (TCNT, 0x10, TCNT)
            }

            SGPO (PWE0, PWG0, PWA0, Zero)
            Sleep (One)
            While (LLess (ACNT, ADLT))
            {
                If (LEqual (\_SB.GGIV (0x04020012), Zero))
                {
                    Sleep (One)
                    Break
                }

                Sleep (One)
                Add (ACNT, One, ACNT)
            }

            Sleep (0x07)
            If (LEqual (\_SB.GGIV (0x04020012), Zero))
            {
                SGPO (HRE0, HRG0, HRA0, One)
            }

            Store (Zero, \_SB.PCI0.LPCB.EC.GATY)
            D8XH (Zero, 0x66)
            Return (Zero)
        }

        If (LEqual (RPIN, 0x04))
        {
            Scope (\_SB.PCI0.RP05)
            {
                PowerResource (PCRP, 0x00, 0x0000)
                {
                    Name (_STA, One)  // _STA: Status
                    Method (_ON, 0, Serialized)  // _ON_: Power On
                    {
                        If (LNotEqual (OSYS, 0x07D9))
                        {
                            Store (0x07, PCMR)
                            Store (Zero, PWRS)
                            Sleep (0x10)
                            \_SB.PCI0.HGON ()
                            Store (One, _STA)
                        }
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        If (LNotEqual (OSYS, 0x07D9))
                        {
                            \_SB.PCI0.HGOF ()
                            Store (Zero, _STA)
                        }
                    }
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    PCRP
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    PCRP
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    PCRP
                })
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    Return (0x04)
                }

                Device (PEGP)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }
            }

            Scope (\_SB.PCI0.RP05.PEGP)
            {
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (Zero, \_SB.PCI0.RP05.PEGP._ADR)
                    Name (CMDS, Zero)
                    Store (Zero, \_SB.PCI0.RP05.PEGP._ADR)
                    Store (0x07, CMDR)
                    Store (0x07, CMDS)
                    Store (\_SB.PCI0.SVID, \_SB.PCI0.HVID)
                    Store (\_SB.PCI0.SDID, \_SB.PCI0.HDID)
                }

                Method (_ON, 0, Serialized)  // _ON_: Power On
                {
                    \_SB.PCI0.HGON ()
                    Notify (\_SB.PCI0.RP05, Zero)
                    Return (Zero)
                }

                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                {
                    \_SB.PCI0.HGOF ()
                    Notify (\_SB.PCI0.RP05, Zero)
                    Return (Zero)
                }
            }
        }
    }
}

