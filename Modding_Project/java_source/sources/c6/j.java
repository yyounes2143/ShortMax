package c6;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import b7.g0;
import c6.i;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.v0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import t5.e0;
/* compiled from: VorbisReader.java */
/* loaded from: classes4.dex */
final class j extends i {
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private a f3205n;

    /* renamed from: o  reason: collision with root package name */
    private int f3206o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f3207p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private e0.d f3208q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private e0.b f3209r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VorbisReader.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final e0.d f3210a;

        /* renamed from: b  reason: collision with root package name */
        public final e0.b f3211b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f3212c;

        /* renamed from: d  reason: collision with root package name */
        public final e0.c[] f3213d;

        /* renamed from: e  reason: collision with root package name */
        public final int f3214e;

        public a(e0.d dVar, e0.b bVar, byte[] bArr, e0.c[] cVarArr, int i10) {
            this.f3210a = dVar;
            this.f3211b = bVar;
            this.f3212c = bArr;
            this.f3213d = cVarArr;
            this.f3214e = i10;
        }
    }

    @VisibleForTesting
    static void n(g0 g0Var, long j10) {
        if (g0Var.b() < g0Var.f() + 4) {
            g0Var.M(Arrays.copyOf(g0Var.d(), g0Var.f() + 4));
        } else {
            g0Var.O(g0Var.f() + 4);
        }
        byte[] d10 = g0Var.d();
        d10[g0Var.f() - 4] = (byte) (j10 & 255);
        d10[g0Var.f() - 3] = (byte) ((j10 >>> 8) & 255);
        d10[g0Var.f() - 2] = (byte) ((j10 >>> 16) & 255);
        d10[g0Var.f() - 1] = (byte) ((j10 >>> 24) & 255);
    }

    private static int o(byte b10, a aVar) {
        if (!aVar.f3213d[p(b10, aVar.f3214e, 1)].f67143a) {
            return aVar.f3210a.f67153g;
        }
        return aVar.f3210a.f67154h;
    }

    @VisibleForTesting
    static int p(byte b10, int i10, int i11) {
        return (b10 >> i11) & (255 >>> (8 - i10));
    }

    public static boolean r(g0 g0Var) {
        try {
            return e0.m(1, g0Var, true);
        } catch (ParserException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // c6.i
    public void e(long j10) {
        boolean z10;
        super.e(j10);
        int i10 = 0;
        if (j10 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f3207p = z10;
        e0.d dVar = this.f3208q;
        if (dVar != null) {
            i10 = dVar.f67153g;
        }
        this.f3206o = i10;
    }

    @Override // c6.i
    protected long f(g0 g0Var) {
        int i10 = 0;
        if ((g0Var.d()[0] & 1) == 1) {
            return -1L;
        }
        int o10 = o(g0Var.d()[0], (a) b7.a.i(this.f3205n));
        if (this.f3207p) {
            i10 = (this.f3206o + o10) / 4;
        }
        long j10 = i10;
        n(g0Var, j10);
        this.f3207p = true;
        this.f3206o = o10;
        return j10;
    }

    @Override // c6.i
    protected boolean h(g0 g0Var, long j10, i.b bVar) throws IOException {
        if (this.f3205n != null) {
            b7.a.e(bVar.f3203a);
            return false;
        }
        a q10 = q(g0Var);
        this.f3205n = q10;
        if (q10 == null) {
            return true;
        }
        e0.d dVar = q10.f3210a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(dVar.f67156j);
        arrayList.add(q10.f3212c);
        bVar.f3203a = new v0.b().e0(MimeTypes.AUDIO_VORBIS).G(dVar.f67151e).Z(dVar.f67150d).H(dVar.f67148b).f0(dVar.f67149c).T(arrayList).X(e0.c(ImmutableList.v(q10.f3211b.f67141b))).E();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // c6.i
    public void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f3205n = null;
            this.f3208q = null;
            this.f3209r = null;
        }
        this.f3206o = 0;
        this.f3207p = false;
    }

    @Nullable
    @VisibleForTesting
    a q(g0 g0Var) throws IOException {
        e0.d dVar = this.f3208q;
        if (dVar == null) {
            this.f3208q = e0.k(g0Var);
            return null;
        }
        e0.b bVar = this.f3209r;
        if (bVar == null) {
            this.f3209r = e0.i(g0Var);
            return null;
        }
        byte[] bArr = new byte[g0Var.f()];
        System.arraycopy(g0Var.d(), 0, bArr, 0, g0Var.f());
        e0.c[] l10 = e0.l(g0Var, dVar.f67148b);
        return new a(dVar, bVar, bArr, l10, e0.a(l10.length - 1));
    }
}
