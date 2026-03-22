package io.bidmachine.media3.exoplayer.source;

import androidx.annotation.Nullable;
import com.google.common.collect.MultimapBuilder;
import io.bidmachine.media3.exoplayer.source.r;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import zm.a0;
import zm.q;
/* loaded from: classes8.dex */
public final class MergingMediaSource extends io.bidmachine.media3.exoplayer.source.c<Integer> {

    /* renamed from: w  reason: collision with root package name */
    private static final zm.q f56705w = new q.c().c("MergingMediaSource").a();

    /* renamed from: k  reason: collision with root package name */
    private final boolean f56706k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f56707l;

    /* renamed from: m  reason: collision with root package name */
    private final r[] f56708m;

    /* renamed from: n  reason: collision with root package name */
    private final List<List<c>> f56709n;

    /* renamed from: o  reason: collision with root package name */
    private final zm.a0[] f56710o;

    /* renamed from: p  reason: collision with root package name */
    private final ArrayList<r> f56711p;

    /* renamed from: q  reason: collision with root package name */
    private final sn.e f56712q;

    /* renamed from: r  reason: collision with root package name */
    private final Map<Object, Long> f56713r;

    /* renamed from: s  reason: collision with root package name */
    private final com.google.common.collect.p<Object, io.bidmachine.media3.exoplayer.source.b> f56714s;

    /* renamed from: t  reason: collision with root package name */
    private int f56715t;

    /* renamed from: u  reason: collision with root package name */
    private long[][] f56716u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private IllegalMergeException f56717v;

    /* loaded from: classes8.dex */
    public static final class IllegalMergeException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final int f56718a;

        public IllegalMergeException(int i10) {
            this.f56718a = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class b extends m {

        /* renamed from: f  reason: collision with root package name */
        private final long[] f56719f;

        /* renamed from: g  reason: collision with root package name */
        private final long[] f56720g;

        public b(zm.a0 a0Var, Map<Object, Long> map) {
            super(a0Var);
            int p10 = a0Var.p();
            this.f56720g = new long[a0Var.p()];
            a0.c cVar = new a0.c();
            for (int i10 = 0; i10 < p10; i10++) {
                this.f56720g[i10] = a0Var.n(i10, cVar).f71769m;
            }
            int i11 = a0Var.i();
            this.f56719f = new long[i11];
            a0.b bVar = new a0.b();
            for (int i12 = 0; i12 < i11; i12++) {
                a0Var.g(i12, bVar, true);
                long longValue = ((Long) cn.a.e(map.get(bVar.f71741b))).longValue();
                long[] jArr = this.f56719f;
                longValue = longValue == Long.MIN_VALUE ? bVar.f71743d : longValue;
                jArr[i12] = longValue;
                long j10 = bVar.f71743d;
                if (j10 != -9223372036854775807L) {
                    long[] jArr2 = this.f56720g;
                    int i13 = bVar.f71742c;
                    jArr2[i13] = jArr2[i13] - (j10 - longValue);
                }
            }
        }

        @Override // io.bidmachine.media3.exoplayer.source.m, zm.a0
        public a0.b g(int i10, a0.b bVar, boolean z10) {
            super.g(i10, bVar, z10);
            bVar.f71743d = this.f56719f[i10];
            return bVar;
        }

        @Override // io.bidmachine.media3.exoplayer.source.m, zm.a0
        public a0.c o(int i10, a0.c cVar, long j10) {
            long j11;
            super.o(i10, cVar, j10);
            long j12 = this.f56720g[i10];
            cVar.f71769m = j12;
            if (j12 != -9223372036854775807L) {
                long j13 = cVar.f71768l;
                if (j13 != -9223372036854775807L) {
                    j11 = Math.min(j13, j12);
                    cVar.f71768l = j11;
                    return cVar;
                }
            }
            j11 = cVar.f71768l;
            cVar.f71768l = j11;
            return cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final r.b f56721a;

        /* renamed from: b  reason: collision with root package name */
        private final q f56722b;

        private c(r.b bVar, q qVar) {
            this.f56721a = bVar;
            this.f56722b = qVar;
        }
    }

    public MergingMediaSource(r... rVarArr) {
        this(false, rVarArr);
    }

    private void I() {
        a0.b bVar = new a0.b();
        for (int i10 = 0; i10 < this.f56715t; i10++) {
            long j10 = -this.f56710o[0].f(i10, bVar).n();
            int i11 = 1;
            while (true) {
                zm.a0[] a0VarArr = this.f56710o;
                if (i11 < a0VarArr.length) {
                    this.f56716u[i10][i11] = j10 - (-a0VarArr[i11].f(i10, bVar).n());
                    i11++;
                }
            }
        }
    }

    private void L() {
        zm.a0[] a0VarArr;
        a0.b bVar = new a0.b();
        for (int i10 = 0; i10 < this.f56715t; i10++) {
            int i11 = 0;
            long j10 = Long.MIN_VALUE;
            while (true) {
                a0VarArr = this.f56710o;
                if (i11 >= a0VarArr.length) {
                    break;
                }
                long j11 = a0VarArr[i11].f(i10, bVar).j();
                if (j11 != -9223372036854775807L) {
                    long j12 = j11 + this.f56716u[i10][i11];
                    if (j10 == Long.MIN_VALUE || j12 < j10) {
                        j10 = j12;
                    }
                }
                i11++;
            }
            Object m10 = a0VarArr[0].m(i10);
            this.f56713r.put(m10, Long.valueOf(j10));
            for (io.bidmachine.media3.exoplayer.source.b bVar2 : this.f56714s.get(m10)) {
                bVar2.n(0L, j10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.source.c, io.bidmachine.media3.exoplayer.source.a
    public void A() {
        super.A();
        Arrays.fill(this.f56710o, (Object) null);
        this.f56715t = -1;
        this.f56717v = null;
        this.f56711p.clear();
        Collections.addAll(this.f56711p, this.f56708m);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.source.c
    @Nullable
    /* renamed from: J */
    public r.b C(Integer num, r.b bVar) {
        List<c> list = this.f56709n.get(num.intValue());
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (list.get(i10).f56721a.equals(bVar)) {
                return this.f56709n.get(0).get(i10).f56721a;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.source.c
    /* renamed from: K */
    public void G(Integer num, r rVar, zm.a0 a0Var) {
        if (this.f56717v != null) {
            return;
        }
        if (this.f56715t == -1) {
            this.f56715t = a0Var.i();
        } else if (a0Var.i() != this.f56715t) {
            this.f56717v = new IllegalMergeException(0);
            return;
        }
        if (this.f56716u.length == 0) {
            this.f56716u = (long[][]) Array.newInstance(Long.TYPE, this.f56715t, this.f56710o.length);
        }
        this.f56711p.remove(rVar);
        this.f56710o[num.intValue()] = a0Var;
        if (this.f56711p.isEmpty()) {
            if (this.f56706k) {
                I();
            }
            b bVar = this.f56710o[0];
            if (this.f56707l) {
                L();
                bVar = new b(bVar, this.f56713r);
            }
            z(bVar);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public zm.q a() {
        r[] rVarArr = this.f56708m;
        if (rVarArr.length > 0) {
            return rVarArr[0].a();
        }
        return f56705w;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public void d(zm.q qVar) {
        this.f56708m[0].d(qVar);
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public q f(r.b bVar, wn.b bVar2, long j10) {
        int length = this.f56708m.length;
        q[] qVarArr = new q[length];
        int b10 = this.f56710o[0].b(bVar.f56990a);
        for (int i10 = 0; i10 < length; i10++) {
            r.b a10 = bVar.a(this.f56710o[i10].m(b10));
            qVarArr[i10] = this.f56708m[i10].f(a10, bVar2, j10 - this.f56716u[b10][i10]);
            this.f56709n.get(i10).add(new c(a10, qVarArr[i10]));
        }
        v vVar = new v(this.f56712q, this.f56716u[b10], qVarArr);
        if (this.f56707l) {
            io.bidmachine.media3.exoplayer.source.b bVar3 = new io.bidmachine.media3.exoplayer.source.b(vVar, false, 0L, ((Long) cn.a.e(this.f56713r.get(bVar.f56990a))).longValue());
            this.f56714s.put(bVar.f56990a, bVar3);
            return bVar3;
        }
        return vVar;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public void m(q qVar) {
        if (this.f56707l) {
            io.bidmachine.media3.exoplayer.source.b bVar = (io.bidmachine.media3.exoplayer.source.b) qVar;
            Iterator<Map.Entry<Object, io.bidmachine.media3.exoplayer.source.b>> it = this.f56714s.b().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Object, io.bidmachine.media3.exoplayer.source.b> next = it.next();
                if (next.getValue().equals(bVar)) {
                    this.f56714s.remove(next.getKey(), next.getValue());
                    break;
                }
            }
            qVar = bVar.f56733a;
        }
        v vVar = (v) qVar;
        for (int i10 = 0; i10 < this.f56708m.length; i10++) {
            List<c> list = this.f56709n.get(i10);
            int i11 = 0;
            while (true) {
                if (i11 >= list.size()) {
                    break;
                } else if (list.get(i11).f56722b.equals(qVar)) {
                    list.remove(i11);
                    break;
                } else {
                    i11++;
                }
            }
            this.f56708m[i10].m(vVar.h(i10));
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.c, io.bidmachine.media3.exoplayer.source.r
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        IllegalMergeException illegalMergeException = this.f56717v;
        if (illegalMergeException == null) {
            super.maybeThrowSourceInfoRefreshError();
            return;
        }
        throw illegalMergeException;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.source.c, io.bidmachine.media3.exoplayer.source.a
    public void y(@Nullable en.o oVar) {
        super.y(oVar);
        for (int i10 = 0; i10 < this.f56708m.length; i10++) {
            H(Integer.valueOf(i10), this.f56708m[i10]);
        }
    }

    public MergingMediaSource(boolean z10, r... rVarArr) {
        this(z10, false, rVarArr);
    }

    public MergingMediaSource(boolean z10, boolean z11, r... rVarArr) {
        this(z10, z11, new sn.f(), rVarArr);
    }

    public MergingMediaSource(boolean z10, boolean z11, sn.e eVar, r... rVarArr) {
        this.f56706k = z10;
        this.f56707l = z11;
        this.f56708m = rVarArr;
        this.f56712q = eVar;
        this.f56711p = new ArrayList<>(Arrays.asList(rVarArr));
        this.f56715t = -1;
        this.f56709n = new ArrayList(rVarArr.length);
        for (int i10 = 0; i10 < rVarArr.length; i10++) {
            this.f56709n.add(new ArrayList());
        }
        this.f56710o = new zm.a0[rVarArr.length];
        this.f56716u = new long[0];
        this.f56713r = new HashMap();
        this.f56714s = MultimapBuilder.a().a().e();
    }
}
