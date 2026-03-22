package e6;

import android.util.Pair;
import androidx.collection.SieveCacheKt;
import b7.g0;
import b7.q;
import b7.s0;
import com.google.android.exoplayer2.ParserException;
import java.io.IOException;
import t5.l;
/* compiled from: WavHeaderReader.java */
/* loaded from: classes4.dex */
final class d {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WavHeaderReader.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f50836a;

        /* renamed from: b  reason: collision with root package name */
        public final long f50837b;

        private a(int i10, long j10) {
            this.f50836a = i10;
            this.f50837b = j10;
        }

        public static a a(l lVar, g0 g0Var) throws IOException {
            lVar.peekFully(g0Var.d(), 0, 8);
            g0Var.P(0);
            return new a(g0Var.n(), g0Var.t());
        }
    }

    public static boolean a(l lVar) throws IOException {
        g0 g0Var = new g0(8);
        int i10 = a.a(lVar, g0Var).f50836a;
        if (i10 != 1380533830 && i10 != 1380333108) {
            return false;
        }
        lVar.peekFully(g0Var.d(), 0, 4);
        g0Var.P(0);
        int n10 = g0Var.n();
        if (n10 != 1463899717) {
            q.c("WavHeaderReader", "Unsupported form type: " + n10);
            return false;
        }
        return true;
    }

    public static c b(l lVar) throws IOException {
        boolean z10;
        byte[] bArr;
        g0 g0Var = new g0(16);
        a d10 = d(1718449184, lVar, g0Var);
        if (d10.f50837b >= 16) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        lVar.peekFully(g0Var.d(), 0, 16);
        g0Var.P(0);
        int v10 = g0Var.v();
        int v11 = g0Var.v();
        int u10 = g0Var.u();
        int u11 = g0Var.u();
        int v12 = g0Var.v();
        int v13 = g0Var.v();
        int i10 = ((int) d10.f50837b) - 16;
        if (i10 > 0) {
            byte[] bArr2 = new byte[i10];
            lVar.peekFully(bArr2, 0, i10);
            bArr = bArr2;
        } else {
            bArr = s0.f2511f;
        }
        lVar.skipFully((int) (lVar.getPeekPosition() - lVar.getPosition()));
        return new c(v10, v11, u10, u11, v12, v13, bArr);
    }

    public static long c(l lVar) throws IOException {
        g0 g0Var = new g0(8);
        a a10 = a.a(lVar, g0Var);
        if (a10.f50836a != 1685272116) {
            lVar.resetPeekPosition();
            return -1L;
        }
        lVar.advancePeekPosition(8);
        g0Var.P(0);
        lVar.peekFully(g0Var.d(), 0, 8);
        long r10 = g0Var.r();
        lVar.skipFully(((int) a10.f50837b) + 8);
        return r10;
    }

    private static a d(int i10, l lVar, g0 g0Var) throws IOException {
        a a10 = a.a(lVar, g0Var);
        while (a10.f50836a != i10) {
            q.i("WavHeaderReader", "Ignoring unknown WAV chunk: " + a10.f50836a);
            long j10 = a10.f50837b + 8;
            if (j10 <= SieveCacheKt.NodeLinkMask) {
                lVar.skipFully((int) j10);
                a10 = a.a(lVar, g0Var);
            } else {
                throw ParserException.e("Chunk is too large (~2GB+) to skip; id: " + a10.f50836a);
            }
        }
        return a10;
    }

    public static Pair<Long, Long> e(l lVar) throws IOException {
        lVar.resetPeekPosition();
        a d10 = d(1684108385, lVar, new g0(8));
        lVar.skipFully(8);
        return Pair.create(Long.valueOf(lVar.getPosition()), Long.valueOf(d10.f50837b));
    }
}
