package t5;

import androidx.annotation.Nullable;
import b7.f0;
import b7.g0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import k6.b;
import t5.t;
/* compiled from: FlacMetadataReader.java */
/* loaded from: classes4.dex */
public final class r {

    /* compiled from: FlacMetadataReader.java */
    /* loaded from: classes4.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public t f67178a;

        public a(@Nullable t tVar) {
            this.f67178a = tVar;
        }
    }

    public static boolean a(l lVar) throws IOException {
        g0 g0Var = new g0(4);
        lVar.peekFully(g0Var.d(), 0, 4);
        if (g0Var.F() != 1716281667) {
            return false;
        }
        return true;
    }

    public static int b(l lVar) throws IOException {
        lVar.resetPeekPosition();
        g0 g0Var = new g0(2);
        lVar.peekFully(g0Var.d(), 0, 2);
        int J = g0Var.J();
        if ((J >> 2) == 16382) {
            lVar.resetPeekPosition();
            return J;
        }
        lVar.resetPeekPosition();
        throw ParserException.b("First frame does not start with sync code.", null);
    }

    @Nullable
    public static Metadata c(l lVar, boolean z10) throws IOException {
        b.a aVar;
        if (z10) {
            aVar = null;
        } else {
            aVar = k6.b.f60671b;
        }
        Metadata a10 = new w().a(lVar, aVar);
        if (a10 == null || a10.e() == 0) {
            return null;
        }
        return a10;
    }

    @Nullable
    public static Metadata d(l lVar, boolean z10) throws IOException {
        lVar.resetPeekPosition();
        long peekPosition = lVar.getPeekPosition();
        Metadata c10 = c(lVar, z10);
        lVar.skipFully((int) (lVar.getPeekPosition() - peekPosition));
        return c10;
    }

    public static boolean e(l lVar, a aVar) throws IOException {
        lVar.resetPeekPosition();
        f0 f0Var = new f0(new byte[4]);
        lVar.peekFully(f0Var.f2443a, 0, 4);
        boolean g10 = f0Var.g();
        int h10 = f0Var.h(7);
        int h11 = f0Var.h(24) + 4;
        if (h10 == 0) {
            aVar.f67178a = h(lVar);
        } else {
            t tVar = aVar.f67178a;
            if (tVar != null) {
                if (h10 == 3) {
                    aVar.f67178a = tVar.b(g(lVar, h11));
                } else if (h10 == 4) {
                    aVar.f67178a = tVar.c(j(lVar, h11));
                } else if (h10 == 6) {
                    g0 g0Var = new g0(h11);
                    lVar.readFully(g0Var.d(), 0, h11);
                    g0Var.Q(4);
                    aVar.f67178a = tVar.a(ImmutableList.B(PictureFrame.a(g0Var)));
                } else {
                    lVar.skipFully(h11);
                }
            } else {
                throw new IllegalArgumentException();
            }
        }
        return g10;
    }

    public static t.a f(g0 g0Var) {
        g0Var.Q(1);
        int G = g0Var.G();
        long e10 = g0Var.e() + G;
        int i10 = G / 18;
        long[] jArr = new long[i10];
        long[] jArr2 = new long[i10];
        int i11 = 0;
        while (true) {
            if (i11 >= i10) {
                break;
            }
            long w10 = g0Var.w();
            if (w10 == -1) {
                jArr = Arrays.copyOf(jArr, i11);
                jArr2 = Arrays.copyOf(jArr2, i11);
                break;
            }
            jArr[i11] = w10;
            jArr2[i11] = g0Var.w();
            g0Var.Q(2);
            i11++;
        }
        g0Var.Q((int) (e10 - g0Var.e()));
        return new t.a(jArr, jArr2);
    }

    private static t.a g(l lVar, int i10) throws IOException {
        g0 g0Var = new g0(i10);
        lVar.readFully(g0Var.d(), 0, i10);
        return f(g0Var);
    }

    private static t h(l lVar) throws IOException {
        byte[] bArr = new byte[38];
        lVar.readFully(bArr, 0, 38);
        return new t(bArr, 4);
    }

    public static void i(l lVar) throws IOException {
        g0 g0Var = new g0(4);
        lVar.readFully(g0Var.d(), 0, 4);
        if (g0Var.F() == 1716281667) {
            return;
        }
        throw ParserException.b("Failed to read FLAC stream marker.", null);
    }

    private static List<String> j(l lVar, int i10) throws IOException {
        g0 g0Var = new g0(i10);
        lVar.readFully(g0Var.d(), 0, i10);
        g0Var.Q(4);
        return Arrays.asList(e0.j(g0Var, false, false).f67141b);
    }
}
