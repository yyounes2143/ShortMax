package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.y0;
import com.google.common.collect.MultimapBuilder;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes4.dex */
public final class MergingMediaSource extends c<Integer> {

    /* renamed from: v  reason: collision with root package name */
    private static final y0 f18197v = new y0.c().d("MergingMediaSource").a();

    /* renamed from: k  reason: collision with root package name */
    private final boolean f18198k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f18199l;

    /* renamed from: m  reason: collision with root package name */
    private final o[] f18200m;

    /* renamed from: n  reason: collision with root package name */
    private final u1[] f18201n;

    /* renamed from: o  reason: collision with root package name */
    private final ArrayList<o> f18202o;

    /* renamed from: p  reason: collision with root package name */
    private final n6.d f18203p;

    /* renamed from: q  reason: collision with root package name */
    private final Map<Object, Long> f18204q;

    /* renamed from: r  reason: collision with root package name */
    private final com.google.common.collect.p<Object, b> f18205r;

    /* renamed from: s  reason: collision with root package name */
    private int f18206s;

    /* renamed from: t  reason: collision with root package name */
    private long[][] f18207t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private IllegalMergeException f18208u;

    /* loaded from: classes4.dex */
    public static final class IllegalMergeException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final int f18209a;

        public IllegalMergeException(int i10) {
            this.f18209a = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class a extends j {

        /* renamed from: d  reason: collision with root package name */
        private final long[] f18210d;

        /* renamed from: e  reason: collision with root package name */
        private final long[] f18211e;

        public a(u1 u1Var, Map<Object, Long> map) {
            super(u1Var);
            int t10 = u1Var.t();
            this.f18211e = new long[u1Var.t()];
            u1.d dVar = new u1.d();
            for (int i10 = 0; i10 < t10; i10++) {
                this.f18211e[i10] = u1Var.r(i10, dVar).f18563n;
            }
            int m10 = u1Var.m();
            this.f18210d = new long[m10];
            u1.b bVar = new u1.b();
            for (int i11 = 0; i11 < m10; i11++) {
                u1Var.k(i11, bVar, true);
                long longValue = ((Long) b7.a.e(map.get(bVar.f18536b))).longValue();
                long[] jArr = this.f18210d;
                longValue = longValue == Long.MIN_VALUE ? bVar.f18538d : longValue;
                jArr[i11] = longValue;
                long j10 = bVar.f18538d;
                if (j10 != -9223372036854775807L) {
                    long[] jArr2 = this.f18211e;
                    int i12 = bVar.f18537c;
                    jArr2[i12] = jArr2[i12] - (j10 - longValue);
                }
            }
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.u1
        public u1.b k(int i10, u1.b bVar, boolean z10) {
            super.k(i10, bVar, z10);
            bVar.f18538d = this.f18210d[i10];
            return bVar;
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.u1
        public u1.d s(int i10, u1.d dVar, long j10) {
            long j11;
            super.s(i10, dVar, j10);
            long j12 = this.f18211e[i10];
            dVar.f18563n = j12;
            if (j12 != -9223372036854775807L) {
                long j13 = dVar.f18562m;
                if (j13 != -9223372036854775807L) {
                    j11 = Math.min(j13, j12);
                    dVar.f18562m = j11;
                    return dVar;
                }
            }
            j11 = dVar.f18562m;
            dVar.f18562m = j11;
            return dVar;
        }
    }

    public MergingMediaSource(o... oVarArr) {
        this(false, oVarArr);
    }

    private void G() {
        u1.b bVar = new u1.b();
        for (int i10 = 0; i10 < this.f18206s; i10++) {
            long j10 = -this.f18201n[0].j(i10, bVar).q();
            int i11 = 1;
            while (true) {
                u1[] u1VarArr = this.f18201n;
                if (i11 < u1VarArr.length) {
                    this.f18207t[i10][i11] = j10 - (-u1VarArr[i11].j(i10, bVar).q());
                    i11++;
                }
            }
        }
    }

    private void J() {
        u1[] u1VarArr;
        u1.b bVar = new u1.b();
        for (int i10 = 0; i10 < this.f18206s; i10++) {
            int i11 = 0;
            long j10 = Long.MIN_VALUE;
            while (true) {
                u1VarArr = this.f18201n;
                if (i11 >= u1VarArr.length) {
                    break;
                }
                long m10 = u1VarArr[i11].j(i10, bVar).m();
                if (m10 != -9223372036854775807L) {
                    long j11 = m10 + this.f18207t[i10][i11];
                    if (j10 == Long.MIN_VALUE || j11 < j10) {
                        j10 = j11;
                    }
                }
                i11++;
            }
            Object q10 = u1VarArr[0].q(i10);
            this.f18204q.put(q10, Long.valueOf(j10));
            for (b bVar2 : this.f18205r.get(q10)) {
                bVar2.k(0L, j10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.c
    @Nullable
    /* renamed from: H */
    public o.b A(Integer num, o.b bVar) {
        if (num.intValue() != 0) {
            return null;
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.c
    /* renamed from: I */
    public void E(Integer num, o oVar, u1 u1Var) {
        if (this.f18208u != null) {
            return;
        }
        if (this.f18206s == -1) {
            this.f18206s = u1Var.m();
        } else if (u1Var.m() != this.f18206s) {
            this.f18208u = new IllegalMergeException(0);
            return;
        }
        if (this.f18207t.length == 0) {
            this.f18207t = (long[][]) Array.newInstance(Long.TYPE, this.f18206s, this.f18201n.length);
        }
        this.f18202o.remove(oVar);
        this.f18201n[num.intValue()] = u1Var;
        if (this.f18202o.isEmpty()) {
            if (this.f18198k) {
                G();
            }
            a aVar = this.f18201n[0];
            if (this.f18199l) {
                J();
                aVar = new a(aVar, this.f18204q);
            }
            x(aVar);
        }
    }

    @Override // com.google.android.exoplayer2.source.o
    public y0 a() {
        o[] oVarArr = this.f18200m;
        if (oVarArr.length > 0) {
            return oVarArr[0].a();
        }
        return f18197v;
    }

    @Override // com.google.android.exoplayer2.source.o
    public n f(o.b bVar, a7.b bVar2, long j10) {
        int length = this.f18200m.length;
        n[] nVarArr = new n[length];
        int f10 = this.f18201n[0].f(bVar.f62787a);
        for (int i10 = 0; i10 < length; i10++) {
            nVarArr[i10] = this.f18200m[i10].f(bVar.c(this.f18201n[i10].q(f10)), bVar2, j10 - this.f18207t[f10][i10]);
        }
        q qVar = new q(this.f18203p, this.f18207t[f10], nVarArr);
        if (this.f18199l) {
            b bVar3 = new b(qVar, true, 0L, ((Long) b7.a.e(this.f18204q.get(bVar.f62787a))).longValue());
            this.f18205r.put(bVar.f62787a, bVar3);
            return bVar3;
        }
        return qVar;
    }

    @Override // com.google.android.exoplayer2.source.o
    public void i(n nVar) {
        if (this.f18199l) {
            b bVar = (b) nVar;
            Iterator<Map.Entry<Object, b>> it = this.f18205r.b().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Object, b> next = it.next();
                if (next.getValue().equals(bVar)) {
                    this.f18205r.remove(next.getKey(), next.getValue());
                    break;
                }
            }
            nVar = bVar.f18251a;
        }
        q qVar = (q) nVar;
        int i10 = 0;
        while (true) {
            o[] oVarArr = this.f18200m;
            if (i10 < oVarArr.length) {
                oVarArr[i10].i(qVar.c(i10));
                i10++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.c, com.google.android.exoplayer2.source.o
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        IllegalMergeException illegalMergeException = this.f18208u;
        if (illegalMergeException == null) {
            super.maybeThrowSourceInfoRefreshError();
            return;
        }
        throw illegalMergeException;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.c, com.google.android.exoplayer2.source.a
    public void w(@Nullable a7.y yVar) {
        super.w(yVar);
        for (int i10 = 0; i10 < this.f18200m.length; i10++) {
            F(Integer.valueOf(i10), this.f18200m[i10]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.c, com.google.android.exoplayer2.source.a
    public void y() {
        super.y();
        Arrays.fill(this.f18201n, (Object) null);
        this.f18206s = -1;
        this.f18208u = null;
        this.f18202o.clear();
        Collections.addAll(this.f18202o, this.f18200m);
    }

    public MergingMediaSource(boolean z10, o... oVarArr) {
        this(z10, false, oVarArr);
    }

    public MergingMediaSource(boolean z10, boolean z11, o... oVarArr) {
        this(z10, z11, new n6.e(), oVarArr);
    }

    public MergingMediaSource(boolean z10, boolean z11, n6.d dVar, o... oVarArr) {
        this.f18198k = z10;
        this.f18199l = z11;
        this.f18200m = oVarArr;
        this.f18203p = dVar;
        this.f18202o = new ArrayList<>(Arrays.asList(oVarArr));
        this.f18206s = -1;
        this.f18201n = new u1[oVarArr.length];
        this.f18207t = new long[0];
        this.f18204q = new HashMap();
        this.f18205r = MultimapBuilder.a().a().e();
    }
}
