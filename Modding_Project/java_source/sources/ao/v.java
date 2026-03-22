package ao;

import com.inmobi.commons.core.configs.AdConfig;
import io.bidmachine.media3.common.ParserException;
import java.io.IOException;
/* compiled from: FlacFrameReader.java */
/* loaded from: classes8.dex */
public final class v {

    /* compiled from: FlacFrameReader.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f1947a;
    }

    private static boolean a(cn.b0 b0Var, y yVar, int i10) {
        int j10 = j(b0Var, i10);
        if (j10 != -1 && j10 <= yVar.f1952b) {
            return true;
        }
        return false;
    }

    private static boolean b(cn.b0 b0Var, int i10) {
        if (b0Var.H() == cn.m0.y(b0Var.e(), i10, b0Var.f() - 1, 0)) {
            return true;
        }
        return false;
    }

    private static boolean c(cn.b0 b0Var, y yVar, boolean z10, a aVar) {
        try {
            long Q = b0Var.Q();
            if (!z10) {
                Q *= yVar.f1952b;
            }
            aVar.f1947a = Q;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean d(cn.b0 b0Var, y yVar, int i10, a aVar) {
        boolean z10;
        boolean z11;
        int f10 = b0Var.f();
        long J = b0Var.J();
        long j10 = J >>> 16;
        if (j10 != i10) {
            return false;
        }
        if ((j10 & 1) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        int i11 = (int) ((J >> 12) & 15);
        int i12 = (int) ((J >> 8) & 15);
        int i13 = (int) ((J >> 4) & 15);
        int i14 = (int) ((J >> 1) & 7);
        if ((J & 1) == 1) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!g(i13, yVar) || !f(i14, yVar) || z11 || !c(b0Var, yVar, z10, aVar) || !a(b0Var, yVar, i11) || !e(b0Var, yVar, i12) || !b(b0Var, f10)) {
            return false;
        }
        return true;
    }

    private static boolean e(cn.b0 b0Var, y yVar, int i10) {
        int i11 = yVar.f1955e;
        if (i10 == 0) {
            return true;
        }
        if (i10 <= 11) {
            if (i10 == yVar.f1956f) {
                return true;
            }
            return false;
        } else if (i10 == 12) {
            if (b0Var.H() * 1000 == i11) {
                return true;
            }
            return false;
        } else if (i10 > 14) {
            return false;
        } else {
            int P = b0Var.P();
            if (i10 == 14) {
                P *= 10;
            }
            if (P == i11) {
                return true;
            }
            return false;
        }
    }

    private static boolean f(int i10, y yVar) {
        if (i10 == 0 || i10 == yVar.f1959i) {
            return true;
        }
        return false;
    }

    private static boolean g(int i10, y yVar) {
        if (i10 <= 7) {
            if (i10 != yVar.f1957g - 1) {
                return false;
            }
            return true;
        } else if (i10 > 10 || yVar.f1957g != 2) {
            return false;
        } else {
            return true;
        }
    }

    public static boolean h(q qVar, y yVar, int i10, a aVar) throws IOException {
        long peekPosition = qVar.getPeekPosition();
        byte[] bArr = new byte[2];
        qVar.peekFully(bArr, 0, 2);
        if ((((bArr[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (bArr[1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED)) != i10) {
            qVar.resetPeekPosition();
            qVar.advancePeekPosition((int) (peekPosition - qVar.getPosition()));
            return false;
        }
        cn.b0 b0Var = new cn.b0(16);
        System.arraycopy(bArr, 0, b0Var.e(), 0, 2);
        b0Var.V(s.c(qVar, b0Var.e(), 2, 14));
        qVar.resetPeekPosition();
        qVar.advancePeekPosition((int) (peekPosition - qVar.getPosition()));
        return d(b0Var, yVar, i10, aVar);
    }

    public static long i(q qVar, y yVar) throws IOException {
        int i10;
        qVar.resetPeekPosition();
        boolean z10 = true;
        qVar.advancePeekPosition(1);
        byte[] bArr = new byte[1];
        qVar.peekFully(bArr, 0, 1);
        if ((bArr[0] & 1) != 1) {
            z10 = false;
        }
        qVar.advancePeekPosition(2);
        if (z10) {
            i10 = 7;
        } else {
            i10 = 6;
        }
        cn.b0 b0Var = new cn.b0(i10);
        b0Var.V(s.c(qVar, b0Var.e(), 0, i10));
        qVar.resetPeekPosition();
        a aVar = new a();
        if (c(b0Var, yVar, z10, aVar)) {
            return aVar.f1947a;
        }
        throw ParserException.b(null, null);
    }

    public static int j(cn.b0 b0Var, int i10) {
        switch (i10) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i10 - 2);
            case 6:
                return b0Var.H() + 1;
            case 7:
                return b0Var.P() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i10 - 8);
            default:
                return -1;
        }
    }
}
