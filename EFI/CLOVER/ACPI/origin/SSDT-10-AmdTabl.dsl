/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-10-AmdTabl.aml, Mon Jan 20 19:46:02 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000008E2 (2274)
 *     Revision         0x01
 *     Checksum         0xC9
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "AmdTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "AmdTabl", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.GGIV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.LID_._LID, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.GFX0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.ADSL, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.DGFQ, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.RP05.PCMR, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.RP05.PEGP._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP05.PEGP._ON_, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (AMDA, UnknownObj)    // (from opcode)
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (NXD1, UnknownObj)    // (from opcode)
    External (NXD2, UnknownObj)    // (from opcode)
    External (NXD3, UnknownObj)    // (from opcode)
    External (NXD4, UnknownObj)    // (from opcode)
    External (NXD5, UnknownObj)    // (from opcode)
    External (NXD6, UnknownObj)    // (from opcode)
    External (NXD7, UnknownObj)    // (from opcode)
    External (NXD8, UnknownObj)    // (from opcode)
    External (OSYS, UnknownObj)    // (from opcode)

    Scope (\_SB.PCI0.GFX0)
    {
        Name (ATPB, Buffer (0x0100) {})
        CreateWordField (ATPB, Zero, SSZE)
        CreateWordField (ATPB, 0x02, VERN)
        CreateDWordField (ATPB, 0x02, VMSK)
        CreateDWordField (ATPB, 0x04, SFUN)
        CreateDWordField (ATPB, 0x06, FLGS)
        Method (ATPX, 2, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (0x08, SSZE)
                Store (One, VERN)
                Store (0x33, SFUN)
                Return (ATPB)
            }

            If (LEqual (Arg0, One))
            {
                Store (0x0A, SSZE)
                If (LGreaterEqual (OSYS, 0x07DF))
                {
                    Store (0x4680, VMSK)
                    Store (0x4680, FLGS)
                }
                Else
                {
                    Store (0x0680, VMSK)
                    Store (0x0680, FLGS)
                }

                Return (ATPB)
            }

            If (LEqual (Arg0, 0x02))
            {
                CreateByteField (Arg1, 0x02, PWST)
                Store (PWST, Local0)
                And (Local0, One, Local0)
                If (Local0)
                {
                    Store (0x07, \_SB.PCI0.RP05.PCMR)
                    \_SB.PCI0.RP05.PEGP._ON ()
                }
                Else
                {
                    \_SB.PCI0.RP05.PEGP._OFF ()
                }
            }

            If (LEqual (Arg0, 0x05)) {}
            If (LEqual (Arg0, 0x06)) {}
        }

        OperationRegion (NVHM, SystemMemory, \AMDA, 0x00010800)
        Field (NVHM, AnyAcc, NoLock, Preserve)
        {
            APSG,   128, 
            APSZ,   32, 
            APVR,   32, 
            APXA,   32, 
            RVBS,   32, 
            NTLE,   16, 
            TLE1,   16, 
            TLE2,   16, 
            TLE3,   16, 
            TLE4,   16, 
            TLE5,   16, 
            TLE6,   16, 
            TLE7,   16, 
            TLE8,   16, 
            TLE9,   16, 
            TL10,   16, 
            TL11,   16, 
            TL12,   16, 
            TL13,   16, 
            TL14,   16, 
            TL15,   16, 
            TGXA,   16, 
            AGXA,   16, 
            GSTP,   8, 
            DSWR,   8, 
            EMDR,   8, 
            PXGS,   8, 
            CACD,   16, 
            CCND,   16, 
            NACD,   16, 
            EXPM,   8, 
            TLSN,   16, 
            ELCT,   16, 
            IDX0,   266240, 
            IDX1,   266240
        }

        Method (ATRM, 2, Serialized)
        {
            If (LGreaterEqual (Arg0, 0x8200))
            {
                Return (GETB (Subtract (Arg0, 0x8200), Arg1, IDX1))
            }

            If (LGreater (Add (Arg0, Arg1), 0x8200))
            {
                Subtract (0x8200, Arg0, Local0)
                Subtract (Arg1, Local0, Local1)
                Store (GETB (Arg0, Local0, IDX0), Local3)
                Store (GETB (Zero, Local1, IDX1), Local4)
                Concatenate (Local3, Local4, Local5)
                Return (Local5)
            }

            Return (GETB (Arg0, Arg1, IDX0))
        }

        Method (GETB, 3, Serialized)
        {
            Multiply (Arg0, 0x08, Local0)
            Multiply (Arg1, 0x08, Local1)
            CreateField (Arg2, Local0, Local1, TBF3)
            Return (TBF3)
        }

        CreateDWordField (ATPB, 0x04, SNTF)
        CreateDWordField (ATPB, 0x06, IFLG)
        CreateDWordField (ATPB, 0x08, ISFN)
        CreateWordField (ATPB, 0x0A, IFPW)
        Name (SWRL, Buffer (0x07)
        {
             0x01, 0x02, 0x08, 0x80, 0x03, 0x09, 0x81       
        })
        Method (INDL, 0, Serialized)
        {
            Store (Zero, NXD1)
            Store (Zero, NXD2)
            Store (Zero, NXD3)
            Store (Zero, NXD4)
            Store (Zero, NXD5)
            Store (Zero, NXD6)
            Store (Zero, NXD7)
            Store (Zero, NXD8)
        }

        Method (SNXD, 1, Serialized)
        {
            INDL ()
            Store (Arg0, Local0)
            If (And (Local0, 0x02))
            {
                Store (One, NXD1)
            }

            If (And (Local0, One))
            {
                Store (One, NXD2)
            }

            If (And (Local0, 0x08))
            {
                Store (One, NXD3)
            }

            If (And (Local0, 0x80))
            {
                Store (One, NXD4)
            }

            If (And (Local0, 0x0200))
            {
                Store (One, NXD5)
            }

            If (And (Local0, 0x0400))
            {
                Store (One, NXD6)
            }

            If (And (Local0, 0x0800))
            {
                Store (One, NXD7)
            }
        }

        Method (ATIF, 2, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Name (TMP0, Buffer (0x0100)
                {
                     0x00                                           
                })
                CreateWordField (TMP0, Zero, F0SS)
                CreateWordField (TMP0, 0x02, F0IV)
                CreateDWordField (TMP0, 0x04, F0SN)
                CreateDWordField (TMP0, 0x08, F0SF)
                Store (0x0C, F0SS)
                Store (One, F0IV)
                Store (0x04, F0SN)
                Store (0x07, F0SF)
                Return (TMP0)
            }

            If (LEqual (Arg0, One))
            {
                Name (TMP1, Buffer (0x0100)
                {
                     0x00                                           
                })
                CreateWordField (TMP1, Zero, F1SS)
                CreateDWordField (TMP1, 0x02, F1VF)
                CreateDWordField (TMP1, 0x06, F1FG)
                Store (0x0A, F1SS)
                Store (0x03, F1VF)
                Store (One, F1FG)
                Return (TMP1)
            }

            If (LEqual (Arg0, 0x02))
            {
                Name (TMP2, Buffer (0x0100)
                {
                     0x00                                           
                })
                CreateWordField (TMP2, Zero, F2SS)
                CreateDWordField (TMP2, 0x02, F2PR)
                CreateByteField (TMP2, 0x06, F2EM)
                CreateByteField (TMP2, 0x07, F2TG)
                CreateByteField (TMP2, 0x08, F2SI)
                CreateByteField (TMP2, 0x09, F2FG)
                CreateByteField (TMP2, 0x0A, F2FI)
                CreateByteField (TMP2, 0x0B, F2SP)
                Store (0x0B, F2SS)
                Name (STS2, Zero)
                Or (DSWR, STS2, STS2)
                Or (ShiftLeft (PXGS, 0x06), STS2, STS2)
                Store (0x04, STS2)
                If (LEqual (\_SB.GGIV (0x04030014), One))
                {
                    If (LEqual (\_SB.PCI0.LPCB.EC.ADSL, One))
                    {
                        Store (0x02, F2TG)
                        Store (0x02, F2SI)
                    }

                    If (LEqual (\_SB.PCI0.LPCB.EC.ADSL, Zero))
                    {
                        Store (0x02, F2TG)
                        Store (Zero, F2SI)
                    }
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.LPCB.EC.ADSL, One))
                    {
                        Store (0x02, F2TG)
                        Store (0x02, F2SI)
                    }

                    If (LEqual (\_SB.PCI0.LPCB.EC.ADSL, Zero))
                    {
                        Store (0x02, F2TG)
                        Store (Zero, F2SI)
                    }
                }

                Store (STS2, F2PR)
                Store (Zero, DSWR)
                Store (Zero, PXGS)
                Return (TMP2)
            }

            If (LEqual (Arg0, 0x03))
            {
                Name (TMP3, Buffer (0x0100)
                {
                     0x00                                           
                })
                CreateWordField (TMP3, Zero, F3SS)
                CreateWordField (TMP3, 0x02, F3SD)
                CreateWordField (Arg1, Zero, AI3S)
                CreateWordField (Arg1, 0x02, SLDS)
                CreateWordField (Arg1, 0x04, CODS)
                Store (SLDS, CACD)
                Store (CODS, CCND)
                If (\_SB.LID._LID ())
                {
                    Or (CCND, One, CCND)
                }

                Store (0x04, F3SS)
                Store (CTOI (CACD), TLSN)
                Store (CACD, Local1)
                Store (NTLE, Local0)
                While (Local0)
                {
                    Store (NATL (TLSN), Local1)
                    If (LNotEqual (Local1, Zero))
                    {
                        If (LEqual (And (Local1, CCND), Local1))
                        {
                            Store (One, Local0)
                        }
                    }

                    Decrement (Local0)
                    Increment (TLSN)
                    If (LGreater (TLSN, NTLE))
                    {
                        Store (One, TLSN)
                    }
                }

                SNXD (Local1)
                Store (Local1, NACD)
                Store (NACD, F3SD)
                Return (TMP3)
            }

            Return (Zero)
        }

        Method (CTOI, 1, NotSerialized)
        {
            If (LNotEqual (NTLE, Zero))
            {
                If (LEqual (TLE1, Arg0))
                {
                    Return (One)
                }

                If (LEqual (TLE2, Arg0))
                {
                    Return (0x02)
                }

                If (LEqual (TLE3, Arg0))
                {
                    Return (0x03)
                }

                If (LEqual (TLE4, Arg0))
                {
                    Return (0x04)
                }

                If (LEqual (TLE5, Arg0))
                {
                    Return (0x05)
                }

                If (LEqual (TLE6, Arg0))
                {
                    Return (0x06)
                }

                If (LEqual (TLE7, Arg0))
                {
                    Return (0x07)
                }

                If (LEqual (TLE8, Arg0))
                {
                    Return (0x08)
                }

                If (LEqual (TLE9, Arg0))
                {
                    Return (0x09)
                }

                If (LEqual (TL10, Arg0))
                {
                    Return (0x0A)
                }

                If (LEqual (TL11, Arg0))
                {
                    Return (0x0B)
                }

                If (LEqual (TL12, Arg0))
                {
                    Return (0x0C)
                }

                If (LEqual (TL13, Arg0))
                {
                    Return (0x0D)
                }

                If (LEqual (TL14, Arg0))
                {
                    Return (0x0E)
                }

                If (LEqual (TL15, Arg0))
                {
                    Return (0x0F)
                }
            }

            Return (One)
        }

        Method (NATL, 1, NotSerialized)
        {
            If (LNotEqual (NTLE, Zero))
            {
                If (LEqual (Arg0, One))
                {
                    Return (TLE2)
                }

                If (LEqual (Arg0, 0x02))
                {
                    Return (TLE3)
                }

                If (LEqual (Arg0, 0x03))
                {
                    Return (TLE4)
                }

                If (LEqual (Arg0, 0x04))
                {
                    Return (TLE5)
                }

                If (LEqual (Arg0, 0x05))
                {
                    Return (TLE6)
                }

                If (LEqual (Arg0, 0x06))
                {
                    Return (TLE7)
                }

                If (LEqual (Arg0, 0x07))
                {
                    Return (TLE8)
                }

                If (LEqual (Arg0, 0x08))
                {
                    Return (TLE9)
                }

                If (LEqual (Arg0, 0x09))
                {
                    Return (TL10)
                }

                If (LEqual (Arg0, 0x0A))
                {
                    Return (TL11)
                }

                If (LEqual (Arg0, 0x0B))
                {
                    Return (TL12)
                }

                If (LEqual (Arg0, 0x0C))
                {
                    Return (TL13)
                }

                If (LEqual (Arg0, 0x0D))
                {
                    Return (TL14)
                }

                If (LEqual (Arg0, 0x0E))
                {
                    Return (TL15)
                }

                If (LEqual (Arg0, 0x0F))
                {
                    Return (TLE1)
                }
            }

            Return (Zero)
        }
    }
}

