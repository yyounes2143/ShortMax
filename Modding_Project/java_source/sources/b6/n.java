package b6;

import b7.g0;
import java.io.IOException;
/* compiled from: Sniffer.java */
/* loaded from: classes4.dex */
final class n {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f2391a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    private static boolean a(int i10, boolean z10) {
        if ((i10 >>> 8) == 3368816) {
            return true;
        }
        if (i10 == 1751476579 && z10) {
            return true;
        }
        for (int i11 : f2391a) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(t5.l lVar) throws IOException {
        return c(lVar, true, false);
    }

    private static boolean c(t5.l lVar, boolean z10, boolean z11) throws IOException {
        boolean z12;
        boolean z13;
        boolean z14;
        int i10;
        boolean z15;
        boolean z16;
        long length = lVar.getLength();
        long j10 = -1;
        int i11 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        long j11 = 4096;
        if (i11 != 0 && length <= 4096) {
            j11 = length;
        }
        int i12 = (int) j11;
        g0 g0Var = new g0(64);
        boolean z17 = false;
        int i13 = 0;
        boolean z18 = false;
        while (i13 < i12) {
            g0Var.L(8);
            if (!lVar.peekFully(g0Var.d(), z17 ? 1 : 0, 8, true)) {
                break;
            }
            long F = g0Var.F();
            int n10 = g0Var.n();
            if (F == 1) {
                lVar.peekFully(g0Var.d(), 8, 8);
                g0Var.O(16);
                i10 = 16;
                F = g0Var.w();
            } else {
                if (F == 0) {
                    long length2 = lVar.getLength();
                    if (length2 != j10) {
                        F = (length2 - lVar.getPeekPosition()) + 8;
                    }
                }
                i10 = 8;
            }
            long j12 = i10;
            if (F < j12) {
                return z17;
            }
            i13 += i10;
            if (n10 == 1836019574) {
                i12 += (int) F;
                if (i11 != 0 && i12 > length) {
                    i12 = (int) length;
                }
            } else if (n10 == 1836019558 || n10 == 1836475768) {
                z12 = z17 ? 1 : 0;
                z13 = true;
                z14 = true;
                break;
            } else {
                int i14 = i11;
                if ((i13 + F) - j12 >= i12) {
                    z12 = false;
                    z13 = true;
                    break;
                }
                int i15 = (int) (F - j12);
                i13 += i15;
                if (n10 == 1718909296) {
                    if (i15 < 8) {
                        return false;
                    }
                    g0Var.L(i15);
                    lVar.peekFully(g0Var.d(), 0, i15);
                    int i16 = i15 / 4;
                    int i17 = 0;
                    while (true) {
                        if (i17 >= i16) {
                            z16 = z18;
                            break;
                        }
                        if (i17 == 1) {
                            g0Var.Q(4);
                        } else if (a(g0Var.n(), z11)) {
                            z16 = true;
                            break;
                        }
                        i17++;
                    }
                    if (!z16) {
                        return false;
                    }
                    z15 = false;
                    z18 = z16;
                } else {
                    z15 = false;
                    z18 = z18;
                    if (i15 != 0) {
                        lVar.advancePeekPosition(i15);
                        z18 = z18;
                    }
                }
                z17 = z15;
                i11 = i14;
            }
            j10 = -1;
            z18 = z18;
        }
        z12 = z17 ? 1 : 0;
        z13 = true;
        z14 = z12;
        if (!z18 || z10 != z14) {
            return z12;
        }
        return z13;
    }

    public static boolean d(t5.l lVar, boolean z10) throws IOException {
        return c(lVar, false, z10);
    }
}
