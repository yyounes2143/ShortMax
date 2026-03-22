package t5;

import b7.g0;
import b7.s0;
import com.google.android.exoplayer2.ParserException;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
/* compiled from: FlacFrameReader.java */
/* loaded from: classes4.dex */
public final class q {

    /* compiled from: FlacFrameReader.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f67177a;
    }

    private static boolean a(g0 g0Var, t tVar, int i10) {
        int j10 = j(g0Var, i10);
        if (j10 != -1 && j10 <= tVar.f67182b) {
            return true;
        }
        return false;
    }

    private static boolean b(g0 g0Var, int i10) {
        if (g0Var.D() == s0.s(g0Var.d(), i10, g0Var.e() - 1, 0)) {
            return true;
        }
        return false;
    }

    private static boolean c(g0 g0Var, t tVar, boolean z10, a aVar) {
        try {
            long K = g0Var.K();
            if (!z10) {
                K *= tVar.f67182b;
            }
            aVar.f67177a = K;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean d(g0 g0Var, t tVar, int i10, a aVar) {
        boolean z10;
        boolean z11;
        int e10 = g0Var.e();
        long F = g0Var.F();
        long j10 = F >>> 16;
        if (j10 != i10) {
            return false;
        }
        if ((j10 & 1) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        int i11 = (int) ((F >> 12) & 15);
        int i12 = (int) ((F >> 8) & 15);
        int i13 = (int) ((F >> 4) & 15);
        int i14 = (int) ((F >> 1) & 7);
        if ((F & 1) == 1) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!g(i13, tVar) || !f(i14, tVar) || z11 || !c(g0Var, tVar, z10, aVar) || !a(g0Var, tVar, i11) || !e(g0Var, tVar, i12) || !b(g0Var, e10)) {
            return false;
        }
        return true;
    }

    private static boolean e(g0 g0Var, t tVar, int i10) {
        int i11 = tVar.f67185e;
        if (i10 == 0) {
            return true;
        }
        if (i10 <= 11) {
            if (i10 == tVar.f67186f) {
                return true;
            }
            return false;
        } else if (i10 == 12) {
            if (g0Var.D() * 1000 == i11) {
                return true;
            }
            return false;
        } else if (i10 > 14) {
            return false;
        } else {
            int J = g0Var.J();
            if (i10 == 14) {
                J *= 10;
            }
            if (J == i11) {
                return true;
            }
            return false;
        }
    }

    private static boolean f(int i10, t tVar) {
        if (i10 == 0 || i10 == tVar.f67189i) {
            return true;
        }
        return false;
    }

    private static boolean g(int i10, t tVar) {
        if (i10 <= 7) {
            if (i10 != tVar.f67187g - 1) {
                return false;
            }
            return true;
        } else if (i10 > 10 || tVar.f67187g != 2) {
            return false;
        } else {
            return true;
        }
    }

    public static boolean h(l lVar, t tVar, int i10, a aVar) throws IOException {
        long peekPosition = lVar.getPeekPosition();
        byte[] bArr = new byte[2];
        lVar.peekFully(bArr, 0, 2);
        if ((((bArr[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (bArr[1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED)) != i10) {
            lVar.resetPeekPosition();
            lVar.advancePeekPosition((int) (peekPosition - lVar.getPosition()));
            return false;
        }
        g0 g0Var = new g0(16);
        System.arraycopy(bArr, 0, g0Var.d(), 0, 2);
        g0Var.O(n.c(lVar, g0Var.d(), 2, 14));
        lVar.resetPeekPosition();
        lVar.advancePeekPosition((int) (peekPosition - lVar.getPosition()));
        return d(g0Var, tVar, i10, aVar);
    }

    public static long i(l lVar, t tVar) throws IOException {
        int i10;
        lVar.resetPeekPosition();
        boolean z10 = true;
        lVar.advancePeekPosition(1);
        byte[] bArr = new byte[1];
        lVar.peekFully(bArr, 0, 1);
        if ((bArr[0] & 1) != 1) {
            z10 = false;
        }
        lVar.advancePeekPosition(2);
        if (z10) {
            i10 = 7;
        } else {
            i10 = 6;
        }
        g0 g0Var = new g0(i10);
        g0Var.O(n.c(lVar, g0Var.d(), 0, i10));
        lVar.resetPeekPosition();
        a aVar = new a();
        if (c(g0Var, tVar, z10, aVar)) {
            return aVar.f67177a;
        }
        throw ParserException.b(null, null);
    }

    public static int j(g0 g0Var, int i10) {
        switch (i10) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i10 - 2);
            case 6:
                return g0Var.D() + 1;
            case 7:
                return g0Var.J() + 1;
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
