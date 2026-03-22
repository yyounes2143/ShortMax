package io.bidmachine.media3.exoplayer.hls;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import ao.j0;
import ao.o0;
import ao.r;
import cn.m0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.l;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import gn.c0;
import gn.i0;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import io.bidmachine.media3.datasource.HttpDataSource$InvalidResponseCodeException;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.drm.h;
import io.bidmachine.media3.exoplayer.hls.b;
import io.bidmachine.media3.exoplayer.hls.k;
import io.bidmachine.media3.exoplayer.k1;
import io.bidmachine.media3.exoplayer.source.f0;
import io.bidmachine.media3.exoplayer.source.g0;
import io.bidmachine.media3.exoplayer.source.s;
import io.bidmachine.media3.exoplayer.upstream.Loader;
import io.bidmachine.media3.exoplayer.upstream.b;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import po.m;
import sn.x;
import zm.b0;
import zm.t;
import zm.u;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HlsSampleStreamWrapper.java */
/* loaded from: classes8.dex */
public final class k implements Loader.b<tn.e>, Loader.f, g0, r, f0.d {
    private static final Set<Integer> Y = Collections.unmodifiableSet(new HashSet(Arrays.asList(1, 2, 5)));
    private int A;
    private int B;
    private boolean C;
    private boolean D;
    private int E;
    private io.bidmachine.media3.common.a F;
    @Nullable
    private io.bidmachine.media3.common.a G;
    private boolean H;
    private x I;
    private Set<b0> J;
    private int[] K;
    private int L;
    private boolean M;
    private boolean[] N;
    private boolean[] O;
    private long P;
    private long Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    private long V;
    @Nullable
    private DrmInitData W;
    @Nullable
    private io.bidmachine.media3.exoplayer.hls.d X;

    /* renamed from: a  reason: collision with root package name */
    private final String f56090a;

    /* renamed from: b  reason: collision with root package name */
    private final int f56091b;

    /* renamed from: c  reason: collision with root package name */
    private final b f56092c;

    /* renamed from: d  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.hls.b f56093d;

    /* renamed from: e  reason: collision with root package name */
    private final wn.b f56094e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final io.bidmachine.media3.common.a f56095f;

    /* renamed from: g  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.drm.i f56096g;

    /* renamed from: h  reason: collision with root package name */
    private final h.a f56097h;

    /* renamed from: i  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.upstream.b f56098i;

    /* renamed from: k  reason: collision with root package name */
    private final s.a f56100k;

    /* renamed from: l  reason: collision with root package name */
    private final int f56101l;

    /* renamed from: n  reason: collision with root package name */
    private final ArrayList<io.bidmachine.media3.exoplayer.hls.d> f56103n;

    /* renamed from: o  reason: collision with root package name */
    private final List<io.bidmachine.media3.exoplayer.hls.d> f56104o;

    /* renamed from: p  reason: collision with root package name */
    private final Runnable f56105p;

    /* renamed from: q  reason: collision with root package name */
    private final Runnable f56106q;

    /* renamed from: r  reason: collision with root package name */
    private final Handler f56107r;

    /* renamed from: s  reason: collision with root package name */
    private final ArrayList<g> f56108s;

    /* renamed from: t  reason: collision with root package name */
    private final Map<String, DrmInitData> f56109t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private tn.e f56110u;

    /* renamed from: v  reason: collision with root package name */
    private d[] f56111v;

    /* renamed from: x  reason: collision with root package name */
    private Set<Integer> f56113x;

    /* renamed from: y  reason: collision with root package name */
    private SparseIntArray f56114y;

    /* renamed from: z  reason: collision with root package name */
    private o0 f56115z;

    /* renamed from: j  reason: collision with root package name */
    private final Loader f56099j = new Loader("Loader:HlsSampleStreamWrapper");

    /* renamed from: m  reason: collision with root package name */
    private final b.C0802b f56102m = new b.C0802b();

    /* renamed from: w  reason: collision with root package name */
    private int[] f56112w = new int[0];

    /* compiled from: HlsSampleStreamWrapper.java */
    /* loaded from: classes8.dex */
    public interface b extends g0.a<k> {
        void g(Uri uri);

        void onPrepared();
    }

    /* compiled from: HlsSampleStreamWrapper.java */
    /* loaded from: classes8.dex */
    private static class c implements o0 {

        /* renamed from: g  reason: collision with root package name */
        private static final io.bidmachine.media3.common.a f56116g = new a.b().u0(MimeTypes.APPLICATION_ID3).N();

        /* renamed from: h  reason: collision with root package name */
        private static final io.bidmachine.media3.common.a f56117h = new a.b().u0(MimeTypes.APPLICATION_EMSG).N();

        /* renamed from: a  reason: collision with root package name */
        private final mo.b f56118a = new mo.b();

        /* renamed from: b  reason: collision with root package name */
        private final o0 f56119b;

        /* renamed from: c  reason: collision with root package name */
        private final io.bidmachine.media3.common.a f56120c;

        /* renamed from: d  reason: collision with root package name */
        private io.bidmachine.media3.common.a f56121d;

        /* renamed from: e  reason: collision with root package name */
        private byte[] f56122e;

        /* renamed from: f  reason: collision with root package name */
        private int f56123f;

        public c(o0 o0Var, int i10) {
            this.f56119b = o0Var;
            if (i10 != 1) {
                if (i10 == 3) {
                    this.f56120c = f56117h;
                } else {
                    throw new IllegalArgumentException("Unknown metadataType: " + i10);
                }
            } else {
                this.f56120c = f56116g;
            }
            this.f56122e = new byte[0];
            this.f56123f = 0;
        }

        private boolean h(mo.a aVar) {
            io.bidmachine.media3.common.a r10 = aVar.r();
            if (r10 != null && Objects.equals(this.f56120c.f55174o, r10.f55174o)) {
                return true;
            }
            return false;
        }

        private void i(int i10) {
            byte[] bArr = this.f56122e;
            if (bArr.length < i10) {
                this.f56122e = Arrays.copyOf(bArr, i10 + (i10 / 2));
            }
        }

        private cn.b0 j(int i10, int i11) {
            int i12 = this.f56123f - i11;
            cn.b0 b0Var = new cn.b0(Arrays.copyOfRange(this.f56122e, i12 - i10, i12));
            byte[] bArr = this.f56122e;
            System.arraycopy(bArr, i12, bArr, 0, i11);
            this.f56123f = i11;
            return b0Var;
        }

        @Override // ao.o0
        public void c(long j10, int i10, int i11, int i12, @Nullable o0.a aVar) {
            cn.a.e(this.f56121d);
            cn.b0 j11 = j(i11, i12);
            if (!Objects.equals(this.f56121d.f55174o, this.f56120c.f55174o)) {
                if (MimeTypes.APPLICATION_EMSG.equals(this.f56121d.f55174o)) {
                    mo.a c10 = this.f56118a.c(j11);
                    if (!h(c10)) {
                        cn.r.h("HlsSampleStreamWrapper", String.format("Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s", this.f56120c.f55174o, c10.r()));
                        return;
                    }
                    j11 = new cn.b0((byte[]) cn.a.e(c10.q()));
                } else {
                    cn.r.h("HlsSampleStreamWrapper", "Ignoring sample for unsupported format: " + this.f56121d.f55174o);
                    return;
                }
            }
            int a10 = j11.a();
            this.f56119b.a(j11, a10);
            this.f56119b.c(j10, i10, a10, 0, aVar);
        }

        @Override // ao.o0
        public int e(zm.h hVar, int i10, boolean z10, int i11) throws IOException {
            i(this.f56123f + i10);
            int read = hVar.read(this.f56122e, this.f56123f, i10);
            if (read == -1) {
                if (z10) {
                    return -1;
                }
                throw new EOFException();
            }
            this.f56123f += read;
            return read;
        }

        @Override // ao.o0
        public void f(cn.b0 b0Var, int i10, int i11) {
            i(this.f56123f + i10);
            b0Var.l(this.f56122e, this.f56123f, i10);
            this.f56123f += i10;
        }

        @Override // ao.o0
        public void g(io.bidmachine.media3.common.a aVar) {
            this.f56121d = aVar;
            this.f56119b.g(this.f56120c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HlsSampleStreamWrapper.java */
    /* loaded from: classes8.dex */
    public static final class d extends f0 {
        private final Map<String, DrmInitData> H;
        @Nullable
        private DrmInitData I;

        @Nullable
        private t k0(@Nullable t tVar) {
            if (tVar == null) {
                return null;
            }
            int e10 = tVar.e();
            int i10 = 0;
            while (true) {
                if (i10 < e10) {
                    t.a d10 = tVar.d(i10);
                    if ((d10 instanceof m) && "com.apple.streaming.transportStreamTimestamp".equals(((m) d10).f64961b)) {
                        break;
                    }
                    i10++;
                } else {
                    i10 = -1;
                    break;
                }
            }
            if (i10 == -1) {
                return tVar;
            }
            if (e10 == 1) {
                return null;
            }
            t.a[] aVarArr = new t.a[e10 - 1];
            for (int i11 = 0; i11 < e10; i11++) {
                if (i11 != i10) {
                    aVarArr[i11 < i10 ? i11 : i11 - 1] = tVar.d(i11);
                }
            }
            return new t(aVarArr);
        }

        @Override // io.bidmachine.media3.exoplayer.source.f0, ao.o0
        public void c(long j10, int i10, int i11, int i12, @Nullable o0.a aVar) {
            super.c(j10, i10, i11, i12, aVar);
        }

        public void l0(@Nullable DrmInitData drmInitData) {
            this.I = drmInitData;
            L();
        }

        public void m0(io.bidmachine.media3.exoplayer.hls.d dVar) {
            i0(dVar.f56040k);
        }

        @Override // io.bidmachine.media3.exoplayer.source.f0
        public io.bidmachine.media3.common.a z(io.bidmachine.media3.common.a aVar) {
            DrmInitData drmInitData;
            DrmInitData drmInitData2 = this.I;
            if (drmInitData2 == null) {
                drmInitData2 = aVar.f55178s;
            }
            if (drmInitData2 != null && (drmInitData = this.H.get(drmInitData2.f55104c)) != null) {
                drmInitData2 = drmInitData;
            }
            t k02 = k0(aVar.f55171l);
            if (drmInitData2 != aVar.f55178s || k02 != aVar.f55171l) {
                aVar = aVar.b().Y(drmInitData2).n0(k02).N();
            }
            return super.z(aVar);
        }

        private d(wn.b bVar, io.bidmachine.media3.exoplayer.drm.i iVar, h.a aVar, Map<String, DrmInitData> map) {
            super(bVar, iVar, aVar);
            this.H = map;
        }
    }

    public k(String str, int i10, b bVar, io.bidmachine.media3.exoplayer.hls.b bVar2, Map<String, DrmInitData> map, wn.b bVar3, long j10, @Nullable io.bidmachine.media3.common.a aVar, io.bidmachine.media3.exoplayer.drm.i iVar, h.a aVar2, io.bidmachine.media3.exoplayer.upstream.b bVar4, s.a aVar3, int i11) {
        this.f56090a = str;
        this.f56091b = i10;
        this.f56092c = bVar;
        this.f56093d = bVar2;
        this.f56109t = map;
        this.f56094e = bVar3;
        this.f56095f = aVar;
        this.f56096g = iVar;
        this.f56097h = aVar2;
        this.f56098i = bVar4;
        this.f56100k = aVar3;
        this.f56101l = i11;
        Set<Integer> set = Y;
        this.f56113x = new HashSet(set.size());
        this.f56114y = new SparseIntArray(set.size());
        this.f56111v = new d[0];
        this.O = new boolean[0];
        this.N = new boolean[0];
        ArrayList<io.bidmachine.media3.exoplayer.hls.d> arrayList = new ArrayList<>();
        this.f56103n = arrayList;
        this.f56104o = Collections.unmodifiableList(arrayList);
        this.f56108s = new ArrayList<>();
        this.f56105p = new Runnable() { // from class: io.bidmachine.media3.exoplayer.hls.i
            @Override // java.lang.Runnable
            public final void run() {
                k.this.K();
            }
        };
        this.f56106q = new Runnable() { // from class: io.bidmachine.media3.exoplayer.hls.j
            @Override // java.lang.Runnable
            public final void run() {
                k.this.U();
            }
        };
        this.f56107r = m0.A();
        this.P = j10;
        this.Q = j10;
    }

    private io.bidmachine.media3.exoplayer.hls.d A() {
        ArrayList<io.bidmachine.media3.exoplayer.hls.d> arrayList = this.f56103n;
        return arrayList.get(arrayList.size() - 1);
    }

    @Nullable
    private o0 B(int i10, int i11) {
        cn.a.a(Y.contains(Integer.valueOf(i11)));
        int i12 = this.f56114y.get(i11, -1);
        if (i12 == -1) {
            return null;
        }
        if (this.f56113x.add(Integer.valueOf(i11))) {
            this.f56112w[i12] = i10;
        }
        if (this.f56112w[i12] == i10) {
            return this.f56111v[i12];
        }
        return s(i10, i11);
    }

    private static int C(int i10) {
        if (i10 == 1) {
            return 2;
        }
        if (i10 == 2) {
            return 3;
        }
        if (i10 == 3) {
            return 1;
        }
        return 0;
    }

    private void D(io.bidmachine.media3.exoplayer.hls.d dVar) {
        d[] dVarArr;
        this.X = dVar;
        this.F = dVar.f67463d;
        this.Q = -9223372036854775807L;
        this.f56103n.add(dVar);
        ImmutableList.a r10 = ImmutableList.r();
        for (d dVar2 : this.f56111v) {
            r10.a(Integer.valueOf(dVar2.J()));
        }
        dVar.l(this, r10.k());
        for (d dVar3 : this.f56111v) {
            dVar3.m0(dVar);
            if (dVar.f56043n) {
                dVar3.j0();
            }
        }
    }

    private static boolean E(tn.e eVar) {
        return eVar instanceof io.bidmachine.media3.exoplayer.hls.d;
    }

    private boolean F() {
        if (this.Q != -9223372036854775807L) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(io.bidmachine.media3.exoplayer.hls.d dVar) {
        this.f56092c.g(dVar.f56042m);
    }

    private void J() {
        int i10 = this.I.f66547a;
        int[] iArr = new int[i10];
        this.K = iArr;
        Arrays.fill(iArr, -1);
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = 0;
            while (true) {
                d[] dVarArr = this.f56111v;
                if (i12 >= dVarArr.length) {
                    break;
                } else if (z((io.bidmachine.media3.common.a) cn.a.i(dVarArr[i12].I()), this.I.b(i11).a(0))) {
                    this.K[i11] = i12;
                    break;
                } else {
                    i12++;
                }
            }
        }
        Iterator<g> it = this.f56108s.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        if (!this.H && this.K == null && this.C) {
            for (d dVar : this.f56111v) {
                if (dVar.I() == null) {
                    return;
                }
            }
            if (this.I != null) {
                J();
                return;
            }
            p();
            d0();
            this.f56092c.onPrepared();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U() {
        this.C = true;
        K();
    }

    private void Y() {
        for (d dVar : this.f56111v) {
            dVar.Z(this.R);
        }
        this.R = false;
    }

    private boolean Z(long j10, @Nullable io.bidmachine.media3.exoplayer.hls.d dVar) {
        boolean c02;
        int length = this.f56111v.length;
        for (int i10 = 0; i10 < length; i10++) {
            d dVar2 = this.f56111v[i10];
            if (dVar != null) {
                c02 = dVar2.b0(dVar.k(i10));
            } else {
                c02 = dVar2.c0(j10, false);
            }
            if (!c02 && (this.O[i10] || !this.M)) {
                return false;
            }
        }
        return true;
    }

    private void d0() {
        this.D = true;
    }

    private void i0(sn.s[] sVarArr) {
        this.f56108s.clear();
        for (sn.s sVar : sVarArr) {
            if (sVar != null) {
                this.f56108s.add((g) sVar);
            }
        }
    }

    private void n() {
        cn.a.g(this.D);
        cn.a.e(this.I);
        cn.a.e(this.J);
    }

    private void p() {
        io.bidmachine.media3.common.a aVar;
        io.bidmachine.media3.common.a v10;
        io.bidmachine.media3.common.a aVar2;
        int length = this.f56111v.length;
        boolean z10 = false;
        int i10 = -2;
        int i11 = -1;
        int i12 = 0;
        while (true) {
            int i13 = 2;
            if (i12 >= length) {
                break;
            }
            String str = ((io.bidmachine.media3.common.a) cn.a.i(this.f56111v[i12].I())).f55174o;
            if (!u.t(str)) {
                if (u.o(str)) {
                    i13 = 1;
                } else if (u.s(str)) {
                    i13 = 3;
                } else {
                    i13 = -2;
                }
            }
            if (C(i13) > C(i10)) {
                i11 = i12;
                i10 = i13;
            } else if (i13 == i10 && i11 != -1) {
                i11 = -1;
            }
            i12++;
        }
        b0 k10 = this.f56093d.k();
        int i14 = k10.f71809a;
        this.L = -1;
        this.K = new int[length];
        for (int i15 = 0; i15 < length; i15++) {
            this.K[i15] = i15;
        }
        b0[] b0VarArr = new b0[length];
        for (int i16 = 0; i16 < length; i16++) {
            io.bidmachine.media3.common.a aVar3 = (io.bidmachine.media3.common.a) cn.a.i(this.f56111v[i16].I());
            if (i16 == i11) {
                io.bidmachine.media3.common.a[] aVarArr = new io.bidmachine.media3.common.a[i14];
                for (int i17 = 0; i17 < i14; i17++) {
                    io.bidmachine.media3.common.a a10 = k10.a(i17);
                    if (i10 == 1 && (aVar2 = this.f56095f) != null) {
                        a10 = a10.j(aVar2);
                    }
                    if (i14 == 1) {
                        v10 = aVar3.j(a10);
                    } else {
                        v10 = v(a10, aVar3, true);
                    }
                    aVarArr[i17] = v10;
                }
                b0VarArr[i16] = new b0(this.f56090a, aVarArr);
                this.L = i16;
            } else {
                if (i10 == 2 && u.o(aVar3.f55174o)) {
                    aVar = this.f56095f;
                } else {
                    aVar = null;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f56090a);
                sb2.append(":muxed:");
                sb2.append(i16 < i11 ? i16 : i16 - 1);
                b0VarArr[i16] = new b0(sb2.toString(), v(aVar, aVar3, false));
            }
        }
        this.I = u(b0VarArr);
        if (this.J == null) {
            z10 = true;
        }
        cn.a.g(z10);
        this.J = Collections.emptySet();
    }

    private boolean q(int i10) {
        for (int i11 = i10; i11 < this.f56103n.size(); i11++) {
            if (this.f56103n.get(i11).f56043n) {
                return false;
            }
        }
        io.bidmachine.media3.exoplayer.hls.d dVar = this.f56103n.get(i10);
        for (int i12 = 0; i12 < this.f56111v.length; i12++) {
            if (this.f56111v[i12].F() > dVar.k(i12)) {
                return false;
            }
        }
        return true;
    }

    private static ao.m s(int i10, int i11) {
        cn.r.h("HlsSampleStreamWrapper", "Unmapped track with id " + i10 + " of type " + i11);
        return new ao.m();
    }

    private f0 t(int i10, int i11) {
        int length = this.f56111v.length;
        boolean z10 = true;
        if (i11 != 1 && i11 != 2) {
            z10 = false;
        }
        d dVar = new d(this.f56094e, this.f56096g, this.f56097h, this.f56109t);
        dVar.e0(this.P);
        if (z10) {
            dVar.l0(this.W);
        }
        dVar.d0(this.V);
        io.bidmachine.media3.exoplayer.hls.d dVar2 = this.X;
        if (dVar2 != null) {
            dVar.m0(dVar2);
        }
        dVar.g0(this);
        int i12 = length + 1;
        int[] copyOf = Arrays.copyOf(this.f56112w, i12);
        this.f56112w = copyOf;
        copyOf[length] = i10;
        this.f56111v = (d[]) m0.W0(this.f56111v, dVar);
        boolean[] copyOf2 = Arrays.copyOf(this.O, i12);
        this.O = copyOf2;
        copyOf2[length] = z10;
        this.M |= z10;
        this.f56113x.add(Integer.valueOf(i11));
        this.f56114y.append(i11, length);
        if (C(i11) > C(this.A)) {
            this.B = length;
            this.A = i11;
        }
        this.N = Arrays.copyOf(this.N, i12);
        return dVar;
    }

    private x u(b0[] b0VarArr) {
        for (int i10 = 0; i10 < b0VarArr.length; i10++) {
            b0 b0Var = b0VarArr[i10];
            io.bidmachine.media3.common.a[] aVarArr = new io.bidmachine.media3.common.a[b0Var.f71809a];
            for (int i11 = 0; i11 < b0Var.f71809a; i11++) {
                io.bidmachine.media3.common.a a10 = b0Var.a(i11);
                aVarArr[i11] = a10.c(this.f56096g.a(a10));
            }
            b0VarArr[i10] = new b0(b0Var.f71810b, aVarArr);
        }
        return new x(b0VarArr);
    }

    private static io.bidmachine.media3.common.a v(@Nullable io.bidmachine.media3.common.a aVar, io.bidmachine.media3.common.a aVar2, boolean z10) {
        String d10;
        String str;
        int i10;
        int i11;
        if (aVar == null) {
            return aVar2;
        }
        int k10 = u.k(aVar2.f55174o);
        if (m0.R(aVar.f55170k, k10) == 1) {
            d10 = m0.S(aVar.f55170k, k10);
            str = u.g(d10);
        } else {
            d10 = u.d(aVar.f55170k, aVar2.f55174o);
            str = aVar2.f55174o;
        }
        a.b s02 = aVar2.b().f0(aVar.f55160a).h0(aVar.f55161b).i0(aVar.f55162c).j0(aVar.f55163d).w0(aVar.f55164e).s0(aVar.f55165f);
        if (z10) {
            i10 = aVar.f55167h;
        } else {
            i10 = -1;
        }
        a.b Q = s02.Q(i10);
        if (z10) {
            i11 = aVar.f55168i;
        } else {
            i11 = -1;
        }
        a.b S = Q.p0(i11).S(d10);
        if (k10 == 2) {
            S.B0(aVar.f55181v).d0(aVar.f55182w).b0(aVar.f55183x);
        }
        if (str != null) {
            S.u0(str);
        }
        int i12 = aVar.E;
        if (i12 != -1 && k10 == 1) {
            S.R(i12);
        }
        t tVar = aVar.f55171l;
        if (tVar != null) {
            t tVar2 = aVar2.f55171l;
            if (tVar2 != null) {
                tVar = tVar2.b(tVar);
            }
            S.n0(tVar);
        }
        return S.N();
    }

    private void w(int i10) {
        cn.a.g(!this.f56099j.i());
        while (true) {
            if (i10 < this.f56103n.size()) {
                if (q(i10)) {
                    break;
                }
                i10++;
            } else {
                i10 = -1;
                break;
            }
        }
        if (i10 == -1) {
            return;
        }
        long j10 = A().f67467h;
        io.bidmachine.media3.exoplayer.hls.d x10 = x(i10);
        if (this.f56103n.isEmpty()) {
            this.Q = this.P;
        } else {
            ((io.bidmachine.media3.exoplayer.hls.d) l.d(this.f56103n)).m();
        }
        this.T = false;
        this.f56100k.F(this.A, x10.f67466g, j10);
    }

    private io.bidmachine.media3.exoplayer.hls.d x(int i10) {
        io.bidmachine.media3.exoplayer.hls.d dVar = this.f56103n.get(i10);
        ArrayList<io.bidmachine.media3.exoplayer.hls.d> arrayList = this.f56103n;
        m0.d1(arrayList, i10, arrayList.size());
        for (int i11 = 0; i11 < this.f56111v.length; i11++) {
            this.f56111v[i11].w(dVar.k(i11));
        }
        return dVar;
    }

    private boolean y(io.bidmachine.media3.exoplayer.hls.d dVar) {
        int i10 = dVar.f56040k;
        int length = this.f56111v.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (this.N[i11] && this.f56111v[i11].T() == i10) {
                return false;
            }
        }
        return true;
    }

    private static boolean z(io.bidmachine.media3.common.a aVar, io.bidmachine.media3.common.a aVar2) {
        String str = aVar.f55174o;
        String str2 = aVar2.f55174o;
        int k10 = u.k(str);
        if (k10 != 3) {
            if (k10 != u.k(str2)) {
                return false;
            }
            return true;
        } else if (!Objects.equals(str, str2)) {
            return false;
        } else {
            if ((MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str)) && aVar.J != aVar2.J) {
                return false;
            }
            return true;
        }
    }

    public boolean G(int i10) {
        if (!F() && this.f56111v[i10].N(this.T)) {
            return true;
        }
        return false;
    }

    public boolean H() {
        if (this.A == 2) {
            return true;
        }
        return false;
    }

    public void L() throws IOException {
        this.f56099j.maybeThrowError();
        this.f56093d.p();
    }

    public void M(int i10) throws IOException {
        L();
        this.f56111v[i10].Q();
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: N */
    public void h(tn.e eVar, long j10, long j11, boolean z10) {
        this.f56110u = null;
        sn.i iVar = new sn.i(eVar.f67460a, eVar.f67461b, eVar.d(), eVar.c(), j10, j11, eVar.a());
        this.f56098i.a(eVar.f67460a);
        this.f56100k.t(iVar, eVar.f67462c, this.f56091b, eVar.f67463d, eVar.f67464e, eVar.f67465f, eVar.f67466g, eVar.f67467h);
        if (!z10) {
            if (F() || this.E == 0) {
                Y();
            }
            if (this.E > 0) {
                this.f56092c.f(this);
            }
        }
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: O */
    public void f(tn.e eVar, long j10, long j11) {
        this.f56110u = null;
        this.f56093d.r(eVar);
        sn.i iVar = new sn.i(eVar.f67460a, eVar.f67461b, eVar.d(), eVar.c(), j10, j11, eVar.a());
        this.f56098i.a(eVar.f67460a);
        this.f56100k.w(iVar, eVar.f67462c, this.f56091b, eVar.f67463d, eVar.f67464e, eVar.f67465f, eVar.f67466g, eVar.f67467h);
        if (!this.D) {
            b(new k1.b().f(this.P).d());
        } else {
            this.f56092c.f(this);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: P */
    public Loader.c j(tn.e eVar, long j10, long j11, IOException iOException, int i10) {
        boolean z10;
        Loader.c cVar;
        int i11;
        boolean E = E(eVar);
        if (E && !((io.bidmachine.media3.exoplayer.hls.d) eVar).o() && (iOException instanceof HttpDataSource$InvalidResponseCodeException) && ((i11 = ((HttpDataSource$InvalidResponseCodeException) iOException).f55324d) == 410 || i11 == 404)) {
            return Loader.f57092d;
        }
        long a10 = eVar.a();
        sn.i iVar = new sn.i(eVar.f67460a, eVar.f67461b, eVar.d(), eVar.c(), j10, j11, a10);
        b.c cVar2 = new b.c(iVar, new sn.j(eVar.f67462c, this.f56091b, eVar.f67463d, eVar.f67464e, eVar.f67465f, m0.u1(eVar.f67466g), m0.u1(eVar.f67467h)), iOException, i10);
        b.C0807b c10 = this.f56098i.c(vn.u.c(this.f56093d.l()), cVar2);
        boolean z11 = false;
        if (c10 != null && c10.f57117a == 2) {
            z10 = this.f56093d.o(eVar, c10.f57118b);
        } else {
            z10 = false;
        }
        if (z10) {
            if (E && a10 == 0) {
                ArrayList<io.bidmachine.media3.exoplayer.hls.d> arrayList = this.f56103n;
                if (arrayList.remove(arrayList.size() - 1) == eVar) {
                    z11 = true;
                }
                cn.a.g(z11);
                if (this.f56103n.isEmpty()) {
                    this.Q = this.P;
                } else {
                    ((io.bidmachine.media3.exoplayer.hls.d) l.d(this.f56103n)).m();
                }
            }
            cVar = Loader.f57094f;
        } else {
            long d10 = this.f56098i.d(cVar2);
            if (d10 != -9223372036854775807L) {
                cVar = Loader.g(false, d10);
            } else {
                cVar = Loader.f57095g;
            }
        }
        Loader.c cVar3 = cVar;
        boolean c11 = cVar3.c();
        this.f56100k.y(iVar, eVar.f67462c, this.f56091b, eVar.f67463d, eVar.f67464e, eVar.f67465f, eVar.f67466g, eVar.f67467h, iOException, !c11);
        if (!c11) {
            this.f56110u = null;
            this.f56098i.a(eVar.f67460a);
        }
        if (z10) {
            if (!this.D) {
                b(new k1.b().f(this.P).d());
            } else {
                this.f56092c.f(this);
            }
        }
        return cVar3;
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: Q */
    public void g(tn.e eVar, long j10, long j11, int i10) {
        sn.i iVar;
        if (i10 == 0) {
            iVar = new sn.i(eVar.f67460a, eVar.f67461b, j10);
        } else {
            iVar = new sn.i(eVar.f67460a, eVar.f67461b, eVar.d(), eVar.c(), j10, j11, eVar.a());
        }
        this.f56100k.C(iVar, eVar.f67462c, this.f56091b, eVar.f67463d, eVar.f67464e, eVar.f67465f, eVar.f67466g, eVar.f67467h, i10);
    }

    public void R() {
        this.f56113x.clear();
    }

    public boolean S(Uri uri, b.c cVar, boolean z10) {
        long j10;
        b.C0807b c10;
        if (!this.f56093d.q(uri)) {
            return true;
        }
        if (!z10 && (c10 = this.f56098i.c(vn.u.c(this.f56093d.l()), cVar)) != null && c10.f57117a == 2) {
            j10 = c10.f57118b;
        } else {
            j10 = -9223372036854775807L;
        }
        if (this.f56093d.s(uri, j10) && j10 != -9223372036854775807L) {
            return true;
        }
        return false;
    }

    public void T() {
        if (this.f56103n.isEmpty()) {
            return;
        }
        final io.bidmachine.media3.exoplayer.hls.d dVar = (io.bidmachine.media3.exoplayer.hls.d) l.d(this.f56103n);
        int d10 = this.f56093d.d(dVar);
        if (d10 == 1) {
            dVar.t();
        } else if (d10 == 0) {
            this.f56107r.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.hls.h
                @Override // java.lang.Runnable
                public final void run() {
                    k.this.I(dVar);
                }
            });
        } else if (d10 == 2 && !this.T && this.f56099j.i()) {
            this.f56099j.e();
        }
    }

    public void V(b0[] b0VarArr, int i10, int... iArr) {
        this.I = u(b0VarArr);
        this.J = new HashSet();
        for (int i11 : iArr) {
            this.J.add(this.I.b(i11));
        }
        this.L = i10;
        Handler handler = this.f56107r;
        final b bVar = this.f56092c;
        Objects.requireNonNull(bVar);
        handler.post(new Runnable() { // from class: mn.g
            @Override // java.lang.Runnable
            public final void run() {
                k.b.this.onPrepared();
            }
        });
        d0();
    }

    public int W(int i10, c0 c0Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        io.bidmachine.media3.common.a aVar;
        if (F()) {
            return -3;
        }
        int i12 = 0;
        if (!this.f56103n.isEmpty()) {
            int i13 = 0;
            while (i13 < this.f56103n.size() - 1 && y(this.f56103n.get(i13))) {
                i13++;
            }
            m0.d1(this.f56103n, 0, i13);
            io.bidmachine.media3.exoplayer.hls.d dVar = this.f56103n.get(0);
            io.bidmachine.media3.common.a aVar2 = dVar.f67463d;
            if (!aVar2.equals(this.G)) {
                this.f56100k.j(this.f56091b, aVar2, dVar.f67464e, dVar.f67465f, dVar.f67466g);
            }
            this.G = aVar2;
        }
        if (!this.f56103n.isEmpty() && !this.f56103n.get(0).o()) {
            return -3;
        }
        int V = this.f56111v[i10].V(c0Var, decoderInputBuffer, i11, this.T);
        if (V == -5) {
            io.bidmachine.media3.common.a aVar3 = (io.bidmachine.media3.common.a) cn.a.e(c0Var.f52440b);
            if (i10 == this.B) {
                int d10 = Ints.d(this.f56111v[i10].T());
                while (i12 < this.f56103n.size() && this.f56103n.get(i12).f56040k != d10) {
                    i12++;
                }
                if (i12 < this.f56103n.size()) {
                    aVar = this.f56103n.get(i12).f67463d;
                } else {
                    aVar = (io.bidmachine.media3.common.a) cn.a.e(this.F);
                }
                aVar3 = aVar3.j(aVar);
            }
            c0Var.f52440b = aVar3;
        }
        return V;
    }

    public void X() {
        if (this.D) {
            for (d dVar : this.f56111v) {
                dVar.U();
            }
        }
        this.f56093d.t();
        this.f56099j.l(this);
        this.f56107r.removeCallbacksAndMessages(null);
        this.H = true;
        this.f56108s.clear();
    }

    public long a(long j10, i0 i0Var) {
        return this.f56093d.c(j10, i0Var);
    }

    public boolean a0(long j10, boolean z10) {
        io.bidmachine.media3.exoplayer.hls.d dVar;
        this.P = j10;
        if (F()) {
            this.Q = j10;
            return true;
        }
        if (this.f56093d.m()) {
            for (int i10 = 0; i10 < this.f56103n.size(); i10++) {
                dVar = this.f56103n.get(i10);
                if (dVar.f67466g == j10) {
                    break;
                }
            }
        }
        dVar = null;
        if (this.C && !z10 && Z(j10, dVar)) {
            return false;
        }
        this.Q = j10;
        this.T = false;
        this.f56103n.clear();
        if (this.f56099j.i()) {
            if (this.C) {
                for (d dVar2 : this.f56111v) {
                    dVar2.s();
                }
            }
            this.f56099j.e();
        } else {
            this.f56099j.f();
            Y();
        }
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0
    public boolean b(k1 k1Var) {
        List<io.bidmachine.media3.exoplayer.hls.d> list;
        long max;
        boolean z10;
        if (this.T || this.f56099j.i() || this.f56099j.h()) {
            return false;
        }
        if (F()) {
            list = Collections.emptyList();
            max = this.Q;
            for (d dVar : this.f56111v) {
                dVar.e0(this.Q);
            }
        } else {
            list = this.f56104o;
            io.bidmachine.media3.exoplayer.hls.d A = A();
            if (A.f()) {
                max = A.f67467h;
            } else {
                max = Math.max(this.P, A.f67466g);
            }
        }
        List<io.bidmachine.media3.exoplayer.hls.d> list2 = list;
        long j10 = max;
        this.f56102m.a();
        io.bidmachine.media3.exoplayer.hls.b bVar = this.f56093d;
        if (!this.D && list2.isEmpty()) {
            z10 = false;
        } else {
            z10 = true;
        }
        bVar.f(k1Var, j10, list2, z10, this.f56102m);
        b.C0802b c0802b = this.f56102m;
        boolean z11 = c0802b.f56028b;
        tn.e eVar = c0802b.f56027a;
        Uri uri = c0802b.f56029c;
        if (z11) {
            this.Q = -9223372036854775807L;
            this.T = true;
            return true;
        } else if (eVar == null) {
            if (uri != null) {
                this.f56092c.g(uri);
            }
            return false;
        } else {
            if (E(eVar)) {
                D((io.bidmachine.media3.exoplayer.hls.d) eVar);
            }
            this.f56110u = eVar;
            this.f56099j.m(eVar, this, this.f56098i.b(eVar.f67462c));
            return true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x011a, code lost:
        if (r11.getSelectedIndexInTrackGroup() != r19.f56093d.k().b(r1.f67463d)) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0126  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean b0(vn.q[] r20, boolean[] r21, sn.s[] r22, boolean[] r23, long r24, boolean r26) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.hls.k.b0(vn.q[], boolean[], sn.s[], boolean[], long, boolean):boolean");
    }

    @Override // io.bidmachine.media3.exoplayer.source.f0.d
    public void c(io.bidmachine.media3.common.a aVar) {
        this.f56107r.post(this.f56105p);
    }

    public void c0(@Nullable DrmInitData drmInitData) {
        if (!Objects.equals(this.W, drmInitData)) {
            this.W = drmInitData;
            int i10 = 0;
            while (true) {
                d[] dVarArr = this.f56111v;
                if (i10 < dVarArr.length) {
                    if (this.O[i10]) {
                        dVarArr[i10].l0(drmInitData);
                    }
                    i10++;
                } else {
                    return;
                }
            }
        }
    }

    public void discardBuffer(long j10, boolean z10) {
        if (this.C && !F()) {
            int length = this.f56111v.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.f56111v[i10].r(j10, z10, this.N[i10]);
            }
        }
    }

    public void e0(boolean z10) {
        this.f56093d.v(z10);
    }

    @Override // ao.r
    public void endTracks() {
        this.U = true;
        this.f56107r.post(this.f56106q);
    }

    public void f0(long j10) {
        if (this.V != j10) {
            this.V = j10;
            for (d dVar : this.f56111v) {
                dVar.d0(j10);
            }
        }
    }

    public int g0(int i10, long j10) {
        if (F()) {
            return 0;
        }
        d dVar = this.f56111v[i10];
        int H = dVar.H(j10, this.T);
        io.bidmachine.media3.exoplayer.hls.d dVar2 = (io.bidmachine.media3.exoplayer.hls.d) l.e(this.f56103n, null);
        if (dVar2 != null && !dVar2.o()) {
            H = Math.min(H, dVar2.k(i10) - dVar.F());
        }
        dVar.h0(H);
        return H;
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0
    public long getBufferedPositionUs() {
        ArrayList<io.bidmachine.media3.exoplayer.hls.d> arrayList;
        if (this.T) {
            return Long.MIN_VALUE;
        }
        if (F()) {
            return this.Q;
        }
        long j10 = this.P;
        io.bidmachine.media3.exoplayer.hls.d A = A();
        if (!A.f()) {
            if (this.f56103n.size() > 1) {
                A = this.f56103n.get(arrayList.size() - 2);
            } else {
                A = null;
            }
        }
        if (A != null) {
            j10 = Math.max(j10, A.f67467h);
        }
        if (this.C) {
            for (d dVar : this.f56111v) {
                j10 = Math.max(j10, dVar.C());
            }
        }
        return j10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0
    public long getNextLoadPositionUs() {
        if (F()) {
            return this.Q;
        }
        if (this.T) {
            return Long.MIN_VALUE;
        }
        return A().f67467h;
    }

    public x getTrackGroups() {
        n();
        return this.I;
    }

    public void h0(int i10) {
        n();
        cn.a.e(this.K);
        int i11 = this.K[i10];
        cn.a.g(this.N[i11]);
        this.N[i11] = false;
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0
    public boolean isLoading() {
        return this.f56099j.i();
    }

    public void maybeThrowPrepareError() throws IOException {
        L();
        if (this.T && !this.D) {
            throw ParserException.b("Loading finished before preparation is complete.", null);
        }
    }

    public int o(int i10) {
        n();
        cn.a.e(this.K);
        int i11 = this.K[i10];
        if (i11 == -1) {
            if (!this.J.contains(this.I.b(i10))) {
                return -2;
            }
            return -3;
        }
        boolean[] zArr = this.N;
        if (zArr[i11]) {
            return -2;
        }
        zArr[i11] = true;
        return i11;
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.f
    public void onLoaderReleased() {
        for (d dVar : this.f56111v) {
            dVar.W();
        }
    }

    public void r() {
        if (!this.D) {
            b(new k1.b().f(this.P).d());
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0
    public void reevaluateBuffer(long j10) {
        if (!this.f56099j.h() && !F()) {
            if (this.f56099j.i()) {
                cn.a.e(this.f56110u);
                if (this.f56093d.x(j10, this.f56110u, this.f56104o)) {
                    this.f56099j.e();
                    return;
                }
                return;
            }
            int size = this.f56104o.size();
            while (size > 0 && this.f56093d.d(this.f56104o.get(size - 1)) == 2) {
                size--;
            }
            if (size < this.f56104o.size()) {
                w(size);
            }
            int i10 = this.f56093d.i(j10, this.f56104o);
            if (i10 < this.f56103n.size()) {
                w(i10);
            }
        }
    }

    @Override // ao.r
    public o0 track(int i10, int i11) {
        o0 o0Var;
        if (Y.contains(Integer.valueOf(i11))) {
            o0Var = B(i10, i11);
        } else {
            int i12 = 0;
            while (true) {
                o0[] o0VarArr = this.f56111v;
                if (i12 < o0VarArr.length) {
                    if (this.f56112w[i12] == i10) {
                        o0Var = o0VarArr[i12];
                        break;
                    }
                    i12++;
                } else {
                    o0Var = null;
                    break;
                }
            }
        }
        if (o0Var == null) {
            if (this.U) {
                return s(i10, i11);
            }
            o0Var = t(i10, i11);
        }
        if (i11 == 5) {
            if (this.f56115z == null) {
                this.f56115z = new c(o0Var, this.f56101l);
            }
            return this.f56115z;
        }
        return o0Var;
    }

    @Override // ao.r
    public void d(j0 j0Var) {
    }
}
