package jp;

import android.util.Pair;
import androidx.collection.SieveCacheKt;
import ao.q;
import cn.b0;
import cn.m0;
import cn.r;
import io.bidmachine.media3.common.ParserException;
import java.io.IOException;
/* compiled from: WavHeaderReader.java */
/* loaded from: classes8.dex */
final class d {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WavHeaderReader.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f60525a;

        /* renamed from: b  reason: collision with root package name */
        public final long f60526b;

        private a(int i10, long j10) {
            this.f60525a = i10;
            this.f60526b = j10;
        }

        public static a a(q qVar, b0 b0Var) throws IOException {
            qVar.peekFully(b0Var.e(), 0, 8);
            b0Var.W(0);
            return new a(b0Var.q(), b0Var.x());
        }
    }

    public static boolean a(q qVar) throws IOException {
        b0 b0Var = new b0(8);
        int i10 = a.a(qVar, b0Var).f60525a;
        if (i10 != 1380533830 && i10 != 1380333108) {
            return false;
        }
        qVar.peekFully(b0Var.e(), 0, 4);
        b0Var.W(0);
        int q10 = b0Var.q();
        if (q10 != 1463899717) {
            r.c("WavHeaderReader", "Unsupported form type: " + q10);
            return false;
        }
        return true;
    }

    public static c b(q qVar) throws IOException {
        boolean z10;
        byte[] bArr;
        b0 b0Var = new b0(16);
        a d10 = d(1718449184, qVar, b0Var);
        if (d10.f60526b >= 16) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        qVar.peekFully(b0Var.e(), 0, 16);
        b0Var.W(0);
        int z11 = b0Var.z();
        int z12 = b0Var.z();
        int y10 = b0Var.y();
        int y11 = b0Var.y();
        int z13 = b0Var.z();
        int z14 = b0Var.z();
        int i10 = ((int) d10.f60526b) - 16;
        if (i10 > 0) {
            byte[] bArr2 = new byte[i10];
            qVar.peekFully(bArr2, 0, i10);
            bArr = bArr2;
        } else {
            bArr = m0.f3619f;
        }
        qVar.skipFully((int) (qVar.getPeekPosition() - qVar.getPosition()));
        return new c(z11, z12, y10, y11, z13, z14, bArr);
    }

    public static long c(q qVar) throws IOException {
        b0 b0Var = new b0(8);
        a a10 = a.a(qVar, b0Var);
        if (a10.f60525a != 1685272116) {
            qVar.resetPeekPosition();
            return -1L;
        }
        qVar.advancePeekPosition(8);
        b0Var.W(0);
        qVar.peekFully(b0Var.e(), 0, 8);
        long v10 = b0Var.v();
        qVar.skipFully(((int) a10.f60526b) + 8);
        return v10;
    }

    private static a d(int i10, q qVar, b0 b0Var) throws IOException {
        a a10 = a.a(qVar, b0Var);
        while (a10.f60525a != i10) {
            r.h("WavHeaderReader", "Ignoring unknown WAV chunk: " + a10.f60525a);
            long j10 = a10.f60526b;
            long j11 = 8 + j10;
            if (j10 % 2 != 0) {
                j11 = 9 + j10;
            }
            if (j11 <= SieveCacheKt.NodeLinkMask) {
                qVar.skipFully((int) j11);
                a10 = a.a(qVar, b0Var);
            } else {
                throw ParserException.f("Chunk is too large (~2GB+) to skip; id: " + a10.f60525a);
            }
        }
        return a10;
    }

    public static Pair<Long, Long> e(q qVar) throws IOException {
        qVar.resetPeekPosition();
        a d10 = d(1684108385, qVar, new b0(8));
        qVar.skipFully(8);
        return Pair.create(Long.valueOf(qVar.getPosition()), Long.valueOf(d10.f60526b));
    }
}
