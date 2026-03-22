package wo;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import ao.r0;
import cn.b0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import wo.i;
/* compiled from: VorbisReader.java */
/* loaded from: classes8.dex */
final class j extends i {
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private a f70091n;

    /* renamed from: o  reason: collision with root package name */
    private int f70092o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f70093p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private r0.c f70094q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private r0.a f70095r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VorbisReader.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final r0.c f70096a;

        /* renamed from: b  reason: collision with root package name */
        public final r0.a f70097b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f70098c;

        /* renamed from: d  reason: collision with root package name */
        public final r0.b[] f70099d;

        /* renamed from: e  reason: collision with root package name */
        public final int f70100e;

        public a(r0.c cVar, r0.a aVar, byte[] bArr, r0.b[] bVarArr, int i10) {
            this.f70096a = cVar;
            this.f70097b = aVar;
            this.f70098c = bArr;
            this.f70099d = bVarArr;
            this.f70100e = i10;
        }
    }

    @VisibleForTesting
    static void n(b0 b0Var, long j10) {
        if (b0Var.b() < b0Var.g() + 4) {
            b0Var.T(Arrays.copyOf(b0Var.e(), b0Var.g() + 4));
        } else {
            b0Var.V(b0Var.g() + 4);
        }
        byte[] e10 = b0Var.e();
        e10[b0Var.g() - 4] = (byte) (j10 & 255);
        e10[b0Var.g() - 3] = (byte) ((j10 >>> 8) & 255);
        e10[b0Var.g() - 2] = (byte) ((j10 >>> 16) & 255);
        e10[b0Var.g() - 1] = (byte) ((j10 >>> 24) & 255);
    }

    private static int o(byte b10, a aVar) {
        if (!aVar.f70099d[p(b10, aVar.f70100e, 1)].f1932a) {
            return aVar.f70096a.f1942g;
        }
        return aVar.f70096a.f1943h;
    }

    @VisibleForTesting
    static int p(byte b10, int i10, int i11) {
        return (b10 >> i11) & (255 >>> (8 - i10));
    }

    public static boolean r(b0 b0Var) {
        try {
            return r0.o(1, b0Var, true);
        } catch (ParserException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // wo.i
    public void e(long j10) {
        boolean z10;
        super.e(j10);
        int i10 = 0;
        if (j10 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f70093p = z10;
        r0.c cVar = this.f70094q;
        if (cVar != null) {
            i10 = cVar.f1942g;
        }
        this.f70092o = i10;
    }

    @Override // wo.i
    protected long f(b0 b0Var) {
        int i10 = 0;
        if ((b0Var.e()[0] & 1) == 1) {
            return -1L;
        }
        int o10 = o(b0Var.e()[0], (a) cn.a.i(this.f70091n));
        if (this.f70093p) {
            i10 = (this.f70092o + o10) / 4;
        }
        long j10 = i10;
        n(b0Var, j10);
        this.f70093p = true;
        this.f70092o = o10;
        return j10;
    }

    @Override // wo.i
    protected boolean i(b0 b0Var, long j10, i.b bVar) throws IOException {
        if (this.f70091n != null) {
            cn.a.e(bVar.f70089a);
            return false;
        }
        a q10 = q(b0Var);
        this.f70091n = q10;
        if (q10 == null) {
            return true;
        }
        r0.c cVar = q10.f70096a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(cVar.f1945j);
        arrayList.add(q10.f70098c);
        bVar.f70089a = new a.b().U("audio/ogg").u0(MimeTypes.AUDIO_VORBIS).Q(cVar.f1940e).p0(cVar.f1939d).R(cVar.f1937b).v0(cVar.f1938c).g0(arrayList).n0(r0.d(ImmutableList.v(q10.f70097b.f1930b))).N();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // wo.i
    public void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f70091n = null;
            this.f70094q = null;
            this.f70095r = null;
        }
        this.f70092o = 0;
        this.f70093p = false;
    }

    @Nullable
    @VisibleForTesting
    a q(b0 b0Var) throws IOException {
        r0.c cVar = this.f70094q;
        if (cVar == null) {
            this.f70094q = r0.l(b0Var);
            return null;
        }
        r0.a aVar = this.f70095r;
        if (aVar == null) {
            this.f70095r = r0.j(b0Var);
            return null;
        }
        byte[] bArr = new byte[b0Var.g()];
        System.arraycopy(b0Var.e(), 0, bArr, 0, b0Var.g());
        r0.b[] m10 = r0.m(b0Var, cVar.f1937b);
        return new a(cVar, aVar, bArr, m10, r0.b(m10.length - 1));
    }
}
