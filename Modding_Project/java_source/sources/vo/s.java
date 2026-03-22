package vo;

import androidx.annotation.Nullable;
import ao.n0;
import cn.b0;
import java.io.IOException;
/* compiled from: Sniffer.java */
/* loaded from: classes8.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f69322a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    private static boolean a(int i10, boolean z10) {
        if ((i10 >>> 8) == 3368816) {
            return true;
        }
        if (i10 == 1751476579 && z10) {
            return true;
        }
        for (int i11 : f69322a) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public static n0 b(ao.q qVar) throws IOException {
        return c(qVar, true, false);
    }

    @Nullable
    private static n0 c(ao.q qVar, boolean z10, boolean z11) throws IOException {
        int i10;
        int i11;
        int i12;
        boolean z12;
        int[] iArr;
        long length = qVar.getLength();
        long j10 = -1;
        int i13 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        long j11 = 4096;
        if (i13 != 0 && length <= 4096) {
            j11 = length;
        }
        int i14 = (int) j11;
        b0 b0Var = new b0(64);
        int i15 = 0;
        int i16 = 0;
        boolean z13 = false;
        while (i16 < i14) {
            b0Var.S(8);
            if (!qVar.peekFully(b0Var.e(), i15, 8, true)) {
                break;
            }
            long J = b0Var.J();
            int q10 = b0Var.q();
            if (J == 1) {
                qVar.peekFully(b0Var.e(), 8, 8);
                i11 = 16;
                b0Var.V(16);
                J = b0Var.A();
            } else {
                if (J == 0) {
                    long length2 = qVar.getLength();
                    if (length2 != j10) {
                        J = (length2 - qVar.getPeekPosition()) + 8;
                    }
                }
                i11 = 8;
            }
            long j12 = J;
            long j13 = i11;
            if (j12 < j13) {
                return new a(q10, j12, i11);
            }
            i16 += i11;
            if (q10 == 1836019574) {
                i14 += (int) j12;
                if (i13 != 0 && i14 > length) {
                    i14 = (int) length;
                }
            } else if (q10 != 1836019558 && q10 != 1836475768) {
                long j14 = length;
                if (q10 == 1835295092) {
                    z13 = true;
                }
                if ((i16 + j12) - j13 >= i14) {
                    i10 = 0;
                    break;
                }
                int i17 = (int) (j12 - j13);
                i16 += i17;
                if (q10 == 1718909296) {
                    if (i17 < 8) {
                        return new a(q10, i17, 8);
                    }
                    b0Var.S(i17);
                    i12 = 0;
                    qVar.peekFully(b0Var.e(), 0, i17);
                    int q11 = b0Var.q();
                    if (a(q11, z11)) {
                        z13 = true;
                    }
                    b0Var.X(4);
                    int a10 = b0Var.a() / 4;
                    if (!z13 && a10 > 0) {
                        iArr = new int[a10];
                        int i18 = 0;
                        while (true) {
                            if (i18 < a10) {
                                int q12 = b0Var.q();
                                iArr[i18] = q12;
                                if (a(q12, z11)) {
                                    z12 = true;
                                    break;
                                }
                                i18++;
                            } else {
                                z12 = z13;
                                break;
                            }
                        }
                    } else {
                        z12 = z13;
                        iArr = null;
                    }
                    if (!z12) {
                        return new x(q11, iArr);
                    }
                    z13 = z12;
                } else {
                    i12 = 0;
                    if (i17 != 0) {
                        qVar.advancePeekPosition(i17);
                    }
                }
                i15 = i12;
                length = j14;
            } else {
                i10 = 1;
                break;
            }
            j10 = -1;
        }
        i10 = i15;
        if (!z13) {
            return o.f69309a;
        }
        if (z10 != i10) {
            if (i10 != 0) {
                return i.f69275b;
            }
            return i.f69276c;
        }
        return null;
    }

    @Nullable
    public static n0 d(ao.q qVar, boolean z10) throws IOException {
        return c(qVar, false, z10);
    }
}
