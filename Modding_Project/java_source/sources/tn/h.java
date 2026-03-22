package tn;

import androidx.annotation.Nullable;
import cn.m0;
import gn.c0;
import gn.i0;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.drm.h;
import io.bidmachine.media3.exoplayer.k1;
import io.bidmachine.media3.exoplayer.source.f0;
import io.bidmachine.media3.exoplayer.source.g0;
import io.bidmachine.media3.exoplayer.source.s;
import io.bidmachine.media3.exoplayer.upstream.Loader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import sn.s;
import tn.i;
import zm.u;
/* compiled from: ChunkSampleStream.java */
/* loaded from: classes8.dex */
public class h<T extends i> implements s, g0, Loader.b<e>, Loader.f {

    /* renamed from: a  reason: collision with root package name */
    public final int f67471a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f67472b;

    /* renamed from: c  reason: collision with root package name */
    private final io.bidmachine.media3.common.a[] f67473c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean[] f67474d;

    /* renamed from: e  reason: collision with root package name */
    private final T f67475e;

    /* renamed from: f  reason: collision with root package name */
    private final g0.a<h<T>> f67476f;

    /* renamed from: g  reason: collision with root package name */
    private final s.a f67477g;

    /* renamed from: h  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.upstream.b f67478h;

    /* renamed from: i  reason: collision with root package name */
    private final Loader f67479i;

    /* renamed from: j  reason: collision with root package name */
    private final g f67480j;

    /* renamed from: k  reason: collision with root package name */
    private final ArrayList<tn.a> f67481k;

    /* renamed from: l  reason: collision with root package name */
    private final List<tn.a> f67482l;

    /* renamed from: m  reason: collision with root package name */
    private final f0 f67483m;

    /* renamed from: n  reason: collision with root package name */
    private final f0[] f67484n;

    /* renamed from: o  reason: collision with root package name */
    private final c f67485o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private e f67486p;

    /* renamed from: q  reason: collision with root package name */
    private io.bidmachine.media3.common.a f67487q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private b<T> f67488r;

    /* renamed from: s  reason: collision with root package name */
    private long f67489s;

    /* renamed from: t  reason: collision with root package name */
    private long f67490t;

    /* renamed from: u  reason: collision with root package name */
    private int f67491u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private tn.a f67492v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f67493w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f67494x;

    /* renamed from: y  reason: collision with root package name */
    boolean f67495y;

    /* compiled from: ChunkSampleStream.java */
    /* loaded from: classes8.dex */
    public interface b<T extends i> {
        void c(h<T> hVar);
    }

    public h(int i10, @Nullable int[] iArr, @Nullable io.bidmachine.media3.common.a[] aVarArr, T t10, g0.a<h<T>> aVar, wn.b bVar, long j10, io.bidmachine.media3.exoplayer.drm.i iVar, h.a aVar2, io.bidmachine.media3.exoplayer.upstream.b bVar2, s.a aVar3, boolean z10, @Nullable xn.a aVar4) {
        Loader loader;
        this.f67471a = i10;
        int i11 = 0;
        iArr = iArr == null ? new int[0] : iArr;
        this.f67472b = iArr;
        this.f67473c = aVarArr == null ? new io.bidmachine.media3.common.a[0] : aVarArr;
        this.f67475e = t10;
        this.f67476f = aVar;
        this.f67477g = aVar3;
        this.f67478h = bVar2;
        this.f67493w = z10;
        if (aVar4 != null) {
            loader = new Loader(aVar4);
        } else {
            loader = new Loader("ChunkSampleStream");
        }
        this.f67479i = loader;
        this.f67480j = new g();
        ArrayList<tn.a> arrayList = new ArrayList<>();
        this.f67481k = arrayList;
        this.f67482l = Collections.unmodifiableList(arrayList);
        int length = iArr.length;
        this.f67484n = new f0[length];
        this.f67474d = new boolean[length];
        int i12 = length + 1;
        int[] iArr2 = new int[i12];
        f0[] f0VarArr = new f0[i12];
        f0 l10 = f0.l(bVar, iVar, aVar2);
        this.f67483m = l10;
        iArr2[0] = i10;
        f0VarArr[0] = l10;
        while (i11 < length) {
            f0 m10 = f0.m(bVar);
            this.f67484n[i11] = m10;
            int i13 = i11 + 1;
            f0VarArr[i13] = m10;
            iArr2[i13] = this.f67472b[i11];
            i11 = i13;
        }
        this.f67485o = new c(iArr2, f0VarArr);
        this.f67489s = j10;
        this.f67490t = j10;
    }

    private void A(int i10) {
        tn.a aVar = this.f67481k.get(i10);
        io.bidmachine.media3.common.a aVar2 = aVar.f67463d;
        if (!aVar2.equals(this.f67487q)) {
            this.f67477g.j(this.f67471a, aVar2, aVar.f67464e, aVar.f67465f, aVar.f67466g);
        }
        this.f67487q = aVar2;
    }

    private int F(int i10, int i11) {
        do {
            i11++;
            if (i11 >= this.f67481k.size()) {
                return this.f67481k.size() - 1;
            }
        } while (this.f67481k.get(i11).g(0) <= i10);
        return i11 - 1;
    }

    private void H() {
        this.f67483m.Y();
        for (f0 f0Var : this.f67484n) {
            f0Var.Y();
        }
    }

    private void q(int i10) {
        int min = Math.min(F(i10, 0), this.f67491u);
        if (min > 0) {
            m0.d1(this.f67481k, 0, min);
            this.f67491u -= min;
        }
    }

    private void r(int i10) {
        cn.a.g(!this.f67479i.i());
        int size = this.f67481k.size();
        while (true) {
            if (i10 < size) {
                if (!w(i10)) {
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
        long j10 = v().f67467h;
        tn.a s10 = s(i10);
        if (this.f67481k.isEmpty()) {
            this.f67489s = this.f67490t;
        }
        this.f67495y = false;
        this.f67477g.F(this.f67471a, s10.f67466g, j10);
    }

    private tn.a s(int i10) {
        tn.a aVar = this.f67481k.get(i10);
        ArrayList<tn.a> arrayList = this.f67481k;
        m0.d1(arrayList, i10, arrayList.size());
        this.f67491u = Math.max(this.f67491u, this.f67481k.size());
        int i11 = 0;
        this.f67483m.w(aVar.g(0));
        while (true) {
            f0[] f0VarArr = this.f67484n;
            if (i11 < f0VarArr.length) {
                f0 f0Var = f0VarArr[i11];
                i11++;
                f0Var.w(aVar.g(i11));
            } else {
                return aVar;
            }
        }
    }

    private tn.a v() {
        ArrayList<tn.a> arrayList = this.f67481k;
        return arrayList.get(arrayList.size() - 1);
    }

    private boolean w(int i10) {
        int F;
        tn.a aVar = this.f67481k.get(i10);
        if (this.f67483m.F() > aVar.g(0)) {
            return true;
        }
        int i11 = 0;
        do {
            f0[] f0VarArr = this.f67484n;
            if (i11 >= f0VarArr.length) {
                return false;
            }
            F = f0VarArr[i11].F();
            i11++;
        } while (F <= aVar.g(i11));
        return true;
    }

    private boolean x(e eVar) {
        return eVar instanceof tn.a;
    }

    private void z() {
        int F = F(this.f67483m.F(), this.f67491u - 1);
        while (true) {
            int i10 = this.f67491u;
            if (i10 <= F) {
                this.f67491u = i10 + 1;
                A(i10);
            } else {
                return;
            }
        }
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: B */
    public void h(e eVar, long j10, long j11, boolean z10) {
        this.f67486p = null;
        this.f67492v = null;
        sn.i iVar = new sn.i(eVar.f67460a, eVar.f67461b, eVar.d(), eVar.c(), j10, j11, eVar.a());
        this.f67478h.a(eVar.f67460a);
        this.f67477g.t(iVar, eVar.f67462c, this.f67471a, eVar.f67463d, eVar.f67464e, eVar.f67465f, eVar.f67466g, eVar.f67467h);
        if (!z10) {
            if (y()) {
                H();
            } else if (x(eVar)) {
                s(this.f67481k.size() - 1);
                if (this.f67481k.isEmpty()) {
                    this.f67489s = this.f67490t;
                }
            }
            this.f67476f.f(this);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: C */
    public void f(e eVar, long j10, long j11) {
        this.f67486p = null;
        this.f67475e.e(eVar);
        sn.i iVar = new sn.i(eVar.f67460a, eVar.f67461b, eVar.d(), eVar.c(), j10, j11, eVar.a());
        this.f67478h.a(eVar.f67460a);
        this.f67477g.w(iVar, eVar.f67462c, this.f67471a, eVar.f67463d, eVar.f67464e, eVar.f67465f, eVar.f67466g, eVar.f67467h);
        this.f67476f.f(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f3  */
    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.bidmachine.media3.exoplayer.upstream.Loader.c j(tn.e r32, long r33, long r35, java.io.IOException r37, int r38) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tn.h.j(tn.e, long, long, java.io.IOException, int):io.bidmachine.media3.exoplayer.upstream.Loader$c");
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: E */
    public void g(e eVar, long j10, long j11, int i10) {
        sn.i iVar;
        if (i10 == 0) {
            iVar = new sn.i(eVar.f67460a, eVar.f67461b, j10);
        } else {
            iVar = new sn.i(eVar.f67460a, eVar.f67461b, eVar.d(), eVar.c(), j10, j11, eVar.a());
        }
        this.f67477g.C(iVar, eVar.f67462c, this.f67471a, eVar.f67463d, eVar.f67464e, eVar.f67465f, eVar.f67466g, eVar.f67467h, i10);
    }

    public void G(@Nullable b<T> bVar) {
        this.f67488r = bVar;
        this.f67483m.U();
        for (f0 f0Var : this.f67484n) {
            f0Var.U();
        }
        this.f67479i.l(this);
    }

    public void I(long j10) {
        tn.a aVar;
        boolean z10;
        boolean c02;
        this.f67490t = j10;
        int i10 = 0;
        this.f67493w = false;
        if (y()) {
            this.f67489s = j10;
            return;
        }
        for (int i11 = 0; i11 < this.f67481k.size(); i11++) {
            aVar = this.f67481k.get(i11);
            int i12 = (aVar.f67466g > j10 ? 1 : (aVar.f67466g == j10 ? 0 : -1));
            if (i12 == 0 && aVar.f67430k == -9223372036854775807L) {
                break;
            } else if (i12 > 0) {
                break;
            }
        }
        aVar = null;
        if (aVar != null) {
            c02 = this.f67483m.b0(aVar.g(0));
        } else {
            f0 f0Var = this.f67483m;
            if (j10 < getNextLoadPositionUs()) {
                z10 = true;
            } else {
                z10 = false;
            }
            c02 = f0Var.c0(j10, z10);
        }
        if (c02) {
            this.f67491u = F(this.f67483m.F(), 0);
            f0[] f0VarArr = this.f67484n;
            int length = f0VarArr.length;
            while (i10 < length) {
                f0VarArr[i10].c0(j10, true);
                i10++;
            }
            return;
        }
        this.f67489s = j10;
        this.f67495y = false;
        this.f67481k.clear();
        this.f67491u = 0;
        if (this.f67479i.i()) {
            this.f67483m.s();
            f0[] f0VarArr2 = this.f67484n;
            int length2 = f0VarArr2.length;
            while (i10 < length2) {
                f0VarArr2[i10].s();
                i10++;
            }
            this.f67479i.e();
            return;
        }
        this.f67479i.f();
        H();
    }

    public h<T>.a J(long j10, int i10) {
        for (int i11 = 0; i11 < this.f67484n.length; i11++) {
            if (this.f67472b[i11] == i10) {
                cn.a.g(!this.f67474d[i11]);
                this.f67474d[i11] = true;
                this.f67484n[i11].c0(j10, true);
                return new a(this, this.f67484n[i11], i11);
            }
        }
        throw new IllegalStateException();
    }

    public long a(long j10, i0 i0Var) {
        return this.f67475e.a(j10, i0Var);
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0
    public boolean b(k1 k1Var) {
        List<tn.a> list;
        long j10;
        if (this.f67495y || this.f67479i.i() || this.f67479i.h()) {
            return false;
        }
        boolean y10 = y();
        if (y10) {
            list = Collections.emptyList();
            j10 = this.f67489s;
        } else {
            list = this.f67482l;
            j10 = v().f67467h;
        }
        this.f67475e.b(k1Var, j10, list, this.f67480j);
        g gVar = this.f67480j;
        boolean z10 = gVar.f67470b;
        e eVar = gVar.f67469a;
        gVar.a();
        if (z10) {
            this.f67489s = -9223372036854775807L;
            this.f67495y = true;
            return true;
        } else if (eVar == null) {
            return false;
        } else {
            this.f67486p = eVar;
            if (x(eVar)) {
                tn.a aVar = (tn.a) eVar;
                if (y10) {
                    long j11 = aVar.f67466g;
                    long j12 = this.f67489s;
                    if (j11 < j12) {
                        this.f67483m.e0(j12);
                        for (f0 f0Var : this.f67484n) {
                            f0Var.e0(this.f67489s);
                        }
                        if (this.f67493w) {
                            io.bidmachine.media3.common.a aVar2 = aVar.f67463d;
                            this.f67494x = !u.a(aVar2.f55174o, aVar2.f55170k);
                        }
                    }
                    this.f67493w = false;
                    this.f67489s = -9223372036854775807L;
                }
                aVar.i(this.f67485o);
                this.f67481k.add(aVar);
            } else if (eVar instanceof l) {
                ((l) eVar).e(this.f67485o);
            }
            this.f67479i.m(eVar, this, this.f67478h.b(eVar.f67462c));
            return true;
        }
    }

    @Override // sn.s
    public int c(c0 c0Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        if (y()) {
            return -3;
        }
        tn.a aVar = this.f67492v;
        if (aVar != null && aVar.g(0) <= this.f67483m.F()) {
            return -3;
        }
        z();
        return this.f67483m.V(c0Var, decoderInputBuffer, i10, this.f67495y);
    }

    public void discardBuffer(long j10, boolean z10) {
        if (y()) {
            return;
        }
        int A = this.f67483m.A();
        this.f67483m.r(j10, z10, true);
        int A2 = this.f67483m.A();
        if (A2 > A) {
            long B = this.f67483m.B();
            int i10 = 0;
            while (true) {
                f0[] f0VarArr = this.f67484n;
                if (i10 >= f0VarArr.length) {
                    break;
                }
                f0VarArr[i10].r(B, z10, this.f67474d[i10]);
                i10++;
            }
        }
        q(A2);
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0
    public long getBufferedPositionUs() {
        if (this.f67495y) {
            return Long.MIN_VALUE;
        }
        if (y()) {
            return this.f67489s;
        }
        long j10 = this.f67490t;
        tn.a v10 = v();
        if (!v10.f()) {
            if (this.f67481k.size() > 1) {
                ArrayList<tn.a> arrayList = this.f67481k;
                v10 = arrayList.get(arrayList.size() - 2);
            } else {
                v10 = null;
            }
        }
        if (v10 != null) {
            j10 = Math.max(j10, v10.f67467h);
        }
        return Math.max(j10, this.f67483m.C());
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0
    public long getNextLoadPositionUs() {
        if (y()) {
            return this.f67489s;
        }
        if (this.f67495y) {
            return Long.MIN_VALUE;
        }
        return v().f67467h;
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0
    public boolean isLoading() {
        return this.f67479i.i();
    }

    @Override // sn.s
    public boolean isReady() {
        if (!y() && this.f67483m.N(this.f67495y)) {
            return true;
        }
        return false;
    }

    @Override // sn.s
    public void maybeThrowError() throws IOException {
        this.f67479i.maybeThrowError();
        this.f67483m.Q();
        if (!this.f67479i.i()) {
            this.f67475e.maybeThrowError();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.f
    public void onLoaderReleased() {
        this.f67483m.W();
        for (f0 f0Var : this.f67484n) {
            f0Var.W();
        }
        this.f67475e.release();
        b<T> bVar = this.f67488r;
        if (bVar != null) {
            bVar.c(this);
        }
    }

    public boolean p() {
        try {
            return this.f67494x;
        } finally {
            this.f67494x = false;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0
    public void reevaluateBuffer(long j10) {
        if (!this.f67479i.h() && !y()) {
            if (this.f67479i.i()) {
                e eVar = (e) cn.a.e(this.f67486p);
                if ((!x(eVar) || !w(this.f67481k.size() - 1)) && this.f67475e.f(j10, eVar, this.f67482l)) {
                    this.f67479i.e();
                    if (x(eVar)) {
                        this.f67492v = (tn.a) eVar;
                        return;
                    }
                    return;
                }
                return;
            }
            int preferredQueueSize = this.f67475e.getPreferredQueueSize(j10, this.f67482l);
            if (preferredQueueSize < this.f67481k.size()) {
                r(preferredQueueSize);
            }
        }
    }

    @Override // sn.s
    public int skipData(long j10) {
        if (y()) {
            return 0;
        }
        int H = this.f67483m.H(j10, this.f67495y);
        tn.a aVar = this.f67492v;
        if (aVar != null) {
            H = Math.min(H, aVar.g(0) - this.f67483m.F());
        }
        this.f67483m.h0(H);
        z();
        return H;
    }

    public void t(long j10) {
        cn.a.g(!this.f67479i.i());
        if (!y() && j10 != -9223372036854775807L && !this.f67481k.isEmpty()) {
            tn.a v10 = v();
            long j11 = v10.f67431l;
            if (j11 == -9223372036854775807L) {
                j11 = v10.f67467h;
            }
            if (j11 <= j10) {
                return;
            }
            long C = this.f67483m.C();
            if (C <= j10) {
                return;
            }
            this.f67483m.u(j10);
            for (f0 f0Var : this.f67484n) {
                f0Var.u(j10);
            }
            this.f67477g.F(this.f67471a, j10, C);
        }
    }

    public T u() {
        return this.f67475e;
    }

    boolean y() {
        if (this.f67489s != -9223372036854775807L) {
            return true;
        }
        return false;
    }

    /* compiled from: ChunkSampleStream.java */
    /* loaded from: classes8.dex */
    public final class a implements sn.s {

        /* renamed from: a  reason: collision with root package name */
        public final h<T> f67496a;

        /* renamed from: b  reason: collision with root package name */
        private final f0 f67497b;

        /* renamed from: c  reason: collision with root package name */
        private final int f67498c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f67499d;

        public a(h<T> hVar, f0 f0Var, int i10) {
            this.f67496a = hVar;
            this.f67497b = f0Var;
            this.f67498c = i10;
        }

        private void a() {
            if (!this.f67499d) {
                h.this.f67477g.j(h.this.f67472b[this.f67498c], h.this.f67473c[this.f67498c], 0, null, h.this.f67490t);
                this.f67499d = true;
            }
        }

        public void b() {
            cn.a.g(h.this.f67474d[this.f67498c]);
            h.this.f67474d[this.f67498c] = false;
        }

        @Override // sn.s
        public int c(c0 c0Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            if (h.this.y()) {
                return -3;
            }
            if (h.this.f67492v != null && h.this.f67492v.g(this.f67498c + 1) <= this.f67497b.F()) {
                return -3;
            }
            a();
            return this.f67497b.V(c0Var, decoderInputBuffer, i10, h.this.f67495y);
        }

        @Override // sn.s
        public boolean isReady() {
            if (!h.this.y() && this.f67497b.N(h.this.f67495y)) {
                return true;
            }
            return false;
        }

        @Override // sn.s
        public int skipData(long j10) {
            if (h.this.y()) {
                return 0;
            }
            int H = this.f67497b.H(j10, h.this.f67495y);
            if (h.this.f67492v != null) {
                H = Math.min(H, h.this.f67492v.g(this.f67498c + 1) - this.f67497b.F());
            }
            this.f67497b.h0(H);
            if (H > 0) {
                a();
            }
            return H;
        }

        @Override // sn.s
        public void maybeThrowError() {
        }
    }
}
