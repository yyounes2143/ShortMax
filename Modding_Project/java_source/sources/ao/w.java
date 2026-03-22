package ao;

import androidx.annotation.Nullable;
import ao.y;
import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.common.ParserException;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import po.h;
/* compiled from: FlacMetadataReader.java */
/* loaded from: classes8.dex */
public final class w {

    /* compiled from: FlacMetadataReader.java */
    /* loaded from: classes8.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public y f1948a;

        public a(@Nullable y yVar) {
            this.f1948a = yVar;
        }
    }

    public static boolean a(q qVar) throws IOException {
        cn.b0 b0Var = new cn.b0(4);
        qVar.peekFully(b0Var.e(), 0, 4);
        if (b0Var.J() != 1716281667) {
            return false;
        }
        return true;
    }

    public static int b(q qVar) throws IOException {
        qVar.resetPeekPosition();
        cn.b0 b0Var = new cn.b0(2);
        qVar.peekFully(b0Var.e(), 0, 2);
        int P = b0Var.P();
        if ((P >> 2) == 16382) {
            qVar.resetPeekPosition();
            return P;
        }
        qVar.resetPeekPosition();
        throw ParserException.b("First frame does not start with sync code.", null);
    }

    @Nullable
    public static zm.t c(q qVar, boolean z10) throws IOException {
        h.a aVar;
        if (z10) {
            aVar = null;
        } else {
            aVar = po.h.f64946b;
        }
        zm.t a10 = new d0().a(qVar, aVar);
        if (a10 == null || a10.e() == 0) {
            return null;
        }
        return a10;
    }

    @Nullable
    public static zm.t d(q qVar, boolean z10) throws IOException {
        qVar.resetPeekPosition();
        long peekPosition = qVar.getPeekPosition();
        zm.t c10 = c(qVar, z10);
        qVar.skipFully((int) (qVar.getPeekPosition() - peekPosition));
        return c10;
    }

    public static boolean e(q qVar, a aVar) throws IOException {
        qVar.resetPeekPosition();
        cn.a0 a0Var = new cn.a0(new byte[4]);
        qVar.peekFully(a0Var.f3559a, 0, 4);
        boolean g10 = a0Var.g();
        int h10 = a0Var.h(7);
        int h11 = a0Var.h(24) + 4;
        if (h10 == 0) {
            aVar.f1948a = h(qVar);
        } else {
            y yVar = aVar.f1948a;
            if (yVar != null) {
                if (h10 == 3) {
                    aVar.f1948a = yVar.b(f(qVar, h11));
                } else if (h10 == 4) {
                    aVar.f1948a = yVar.c(j(qVar, h11));
                } else if (h10 == 6) {
                    cn.b0 b0Var = new cn.b0(h11);
                    qVar.readFully(b0Var.e(), 0, h11);
                    b0Var.X(4);
                    aVar.f1948a = yVar.a(ImmutableList.B(no.a.b(b0Var)));
                } else {
                    qVar.skipFully(h11);
                }
            } else {
                throw new IllegalArgumentException();
            }
        }
        return g10;
    }

    private static y.a f(q qVar, int i10) throws IOException {
        cn.b0 b0Var = new cn.b0(i10);
        qVar.readFully(b0Var.e(), 0, i10);
        return g(b0Var);
    }

    public static y.a g(cn.b0 b0Var) {
        b0Var.X(1);
        int K = b0Var.K();
        long f10 = b0Var.f() + K;
        int i10 = K / 18;
        long[] jArr = new long[i10];
        long[] jArr2 = new long[i10];
        int i11 = 0;
        while (true) {
            if (i11 >= i10) {
                break;
            }
            long A = b0Var.A();
            if (A == -1) {
                jArr = Arrays.copyOf(jArr, i11);
                jArr2 = Arrays.copyOf(jArr2, i11);
                break;
            }
            jArr[i11] = A;
            jArr2[i11] = b0Var.A();
            b0Var.X(2);
            i11++;
        }
        b0Var.X((int) (f10 - b0Var.f()));
        return new y.a(jArr, jArr2);
    }

    private static y h(q qVar) throws IOException {
        byte[] bArr = new byte[38];
        qVar.readFully(bArr, 0, 38);
        return new y(bArr, 4);
    }

    public static void i(q qVar) throws IOException {
        cn.b0 b0Var = new cn.b0(4);
        qVar.readFully(b0Var.e(), 0, 4);
        if (b0Var.J() == 1716281667) {
            return;
        }
        throw ParserException.b("Failed to read FLAC stream marker.", null);
    }

    private static List<String> j(q qVar, int i10) throws IOException {
        cn.b0 b0Var = new cn.b0(i10);
        qVar.readFully(b0Var.e(), 0, i10);
        b0Var.X(4);
        return Arrays.asList(r0.k(b0Var, false, false).f1930b);
    }
}
