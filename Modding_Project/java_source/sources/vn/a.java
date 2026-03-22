package vn;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import cn.m0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.MultimapBuilder;
import io.bidmachine.media3.exoplayer.source.r;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import vn.q;
import zm.a0;
import zm.b0;
/* compiled from: AdaptiveTrackSelection.java */
/* loaded from: classes8.dex */
public class a extends c {

    /* renamed from: i  reason: collision with root package name */
    private final wn.d f69023i;

    /* renamed from: j  reason: collision with root package name */
    private final long f69024j;

    /* renamed from: k  reason: collision with root package name */
    private final long f69025k;

    /* renamed from: l  reason: collision with root package name */
    private final long f69026l;

    /* renamed from: m  reason: collision with root package name */
    private final int f69027m;

    /* renamed from: n  reason: collision with root package name */
    private final int f69028n;

    /* renamed from: o  reason: collision with root package name */
    private final float f69029o;

    /* renamed from: p  reason: collision with root package name */
    private final float f69030p;

    /* renamed from: q  reason: collision with root package name */
    private final ImmutableList<C0951a> f69031q;

    /* renamed from: r  reason: collision with root package name */
    private final cn.h f69032r;

    /* renamed from: s  reason: collision with root package name */
    private float f69033s;

    /* renamed from: t  reason: collision with root package name */
    private int f69034t;

    /* renamed from: u  reason: collision with root package name */
    private int f69035u;

    /* renamed from: v  reason: collision with root package name */
    private long f69036v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private tn.m f69037w;

    /* renamed from: x  reason: collision with root package name */
    private long f69038x;

    /* compiled from: AdaptiveTrackSelection.java */
    /* renamed from: vn.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0951a {

        /* renamed from: a  reason: collision with root package name */
        public final long f69039a;

        /* renamed from: b  reason: collision with root package name */
        public final long f69040b;

        public C0951a(long j10, long j11) {
            this.f69039a = j10;
            this.f69040b = j11;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0951a)) {
                return false;
            }
            C0951a c0951a = (C0951a) obj;
            if (this.f69039a == c0951a.f69039a && this.f69040b == c0951a.f69040b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((int) this.f69039a) * 31) + ((int) this.f69040b);
        }
    }

    /* compiled from: AdaptiveTrackSelection.java */
    /* loaded from: classes8.dex */
    public static class b implements q.b {

        /* renamed from: a  reason: collision with root package name */
        private final int f69041a;

        /* renamed from: b  reason: collision with root package name */
        private final int f69042b;

        /* renamed from: c  reason: collision with root package name */
        private final int f69043c;

        /* renamed from: d  reason: collision with root package name */
        private final int f69044d;

        /* renamed from: e  reason: collision with root package name */
        private final int f69045e;

        /* renamed from: f  reason: collision with root package name */
        private final float f69046f;

        /* renamed from: g  reason: collision with root package name */
        private final float f69047g;

        /* renamed from: h  reason: collision with root package name */
        private final cn.h f69048h;

        public b() {
            this(10000, 25000, 25000, 0.7f);
        }

        @Override // vn.q.b
        public final q[] a(q.a[] aVarArr, wn.d dVar, r.b bVar, a0 a0Var) {
            q b10;
            ImmutableList o10 = a.o(aVarArr);
            q[] qVarArr = new q[aVarArr.length];
            for (int i10 = 0; i10 < aVarArr.length; i10++) {
                q.a aVar = aVarArr[i10];
                if (aVar != null) {
                    int[] iArr = aVar.f69158b;
                    if (iArr.length != 0) {
                        if (iArr.length == 1) {
                            b10 = new r(aVar.f69157a, iArr[0], aVar.f69159c);
                        } else {
                            b10 = b(aVar.f69157a, iArr, aVar.f69159c, dVar, (ImmutableList) o10.get(i10));
                        }
                        qVarArr[i10] = b10;
                    }
                }
            }
            return qVarArr;
        }

        protected a b(b0 b0Var, int[] iArr, int i10, wn.d dVar, ImmutableList<C0951a> immutableList) {
            return new a(b0Var, iArr, i10, dVar, this.f69041a, this.f69042b, this.f69043c, this.f69044d, this.f69045e, this.f69046f, this.f69047g, immutableList, this.f69048h);
        }

        public b(int i10, int i11, int i12, float f10) {
            this(i10, i11, i12, 1279, 719, f10, 0.75f, cn.h.f3594a);
        }

        public b(int i10, int i11, int i12, int i13, int i14, float f10, float f11, cn.h hVar) {
            this.f69041a = i10;
            this.f69042b = i11;
            this.f69043c = i12;
            this.f69044d = i13;
            this.f69045e = i14;
            this.f69046f = f10;
            this.f69047g = f11;
            this.f69048h = hVar;
        }
    }

    protected a(b0 b0Var, int[] iArr, int i10, wn.d dVar, long j10, long j11, long j12, int i11, int i12, float f10, float f11, List<C0951a> list, cn.h hVar) {
        super(b0Var, iArr, i10);
        wn.d dVar2;
        long j13;
        if (j12 < j10) {
            cn.r.h("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            dVar2 = dVar;
            j13 = j10;
        } else {
            dVar2 = dVar;
            j13 = j12;
        }
        this.f69023i = dVar2;
        this.f69024j = j10 * 1000;
        this.f69025k = j11 * 1000;
        this.f69026l = j13 * 1000;
        this.f69027m = i11;
        this.f69028n = i12;
        this.f69029o = f10;
        this.f69030p = f11;
        this.f69031q = ImmutableList.u(list);
        this.f69032r = hVar;
        this.f69033s = 1.0f;
        this.f69035u = 0;
        this.f69036v = -9223372036854775807L;
        this.f69038x = -2147483647L;
    }

    private static void l(List<ImmutableList.a<C0951a>> list, long[] jArr) {
        long j10 = 0;
        for (long j11 : jArr) {
            j10 += j11;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            ImmutableList.a<C0951a> aVar = list.get(i10);
            if (aVar != null) {
                aVar.a(new C0951a(j10, jArr[i10]));
            }
        }
    }

    private int n(long j10, long j11) {
        long p10 = p(j11);
        int i10 = 0;
        for (int i11 = 0; i11 < this.f69050b; i11++) {
            if (j10 == Long.MIN_VALUE || !d(i11, j10)) {
                io.bidmachine.media3.common.a format = getFormat(i11);
                if (m(format, format.f55169j, p10)) {
                    return i11;
                }
                i10 = i11;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ImmutableList<ImmutableList<C0951a>> o(q.a[] aVarArr) {
        ImmutableList k10;
        long j10;
        ArrayList arrayList = new ArrayList();
        for (q.a aVar : aVarArr) {
            if (aVar != null && aVar.f69158b.length > 1) {
                ImmutableList.a r10 = ImmutableList.r();
                r10.a(new C0951a(0L, 0L));
                arrayList.add(r10);
            } else {
                arrayList.add(null);
            }
        }
        long[][] t10 = t(aVarArr);
        int[] iArr = new int[t10.length];
        long[] jArr = new long[t10.length];
        for (int i10 = 0; i10 < t10.length; i10++) {
            long[] jArr2 = t10[i10];
            if (jArr2.length == 0) {
                j10 = 0;
            } else {
                j10 = jArr2[0];
            }
            jArr[i10] = j10;
        }
        l(arrayList, jArr);
        ImmutableList<Integer> u10 = u(t10);
        for (int i11 = 0; i11 < u10.size(); i11++) {
            int intValue = u10.get(i11).intValue();
            int i12 = iArr[intValue] + 1;
            iArr[intValue] = i12;
            jArr[intValue] = t10[intValue][i12];
            l(arrayList, jArr);
        }
        for (int i13 = 0; i13 < aVarArr.length; i13++) {
            if (arrayList.get(i13) != null) {
                jArr[i13] = jArr[i13] * 2;
            }
        }
        l(arrayList, jArr);
        ImmutableList.a r11 = ImmutableList.r();
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            ImmutableList.a aVar2 = (ImmutableList.a) arrayList.get(i14);
            if (aVar2 == null) {
                k10 = ImmutableList.A();
            } else {
                k10 = aVar2.k();
            }
            r11.a(k10);
        }
        return r11.k();
    }

    private long p(long j10) {
        long j11;
        long v10 = v(j10);
        if (this.f69031q.isEmpty()) {
            return v10;
        }
        int i10 = 1;
        while (i10 < this.f69031q.size() - 1 && this.f69031q.get(i10).f69039a < v10) {
            i10++;
        }
        C0951a c0951a = this.f69031q.get(i10 - 1);
        C0951a c0951a2 = this.f69031q.get(i10);
        long j12 = c0951a.f69039a;
        return c0951a.f69040b + ((((float) (v10 - j12)) / ((float) (c0951a2.f69039a - j12))) * ((float) (c0951a2.f69040b - j11)));
    }

    private long q(List<? extends tn.m> list) {
        if (list.isEmpty()) {
            return -9223372036854775807L;
        }
        tn.m mVar = (tn.m) com.google.common.collect.l.d(list);
        long j10 = mVar.f67466g;
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j11 = mVar.f67467h;
        if (j11 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j11 - j10;
    }

    private long s(tn.n[] nVarArr, List<? extends tn.m> list) {
        int i10 = this.f69034t;
        if (i10 < nVarArr.length && nVarArr[i10].next()) {
            tn.n nVar = nVarArr[this.f69034t];
            return nVar.a() - nVar.b();
        }
        for (tn.n nVar2 : nVarArr) {
            if (nVar2.next()) {
                return nVar2.a() - nVar2.b();
            }
        }
        return q(list);
    }

    private static long[][] t(q.a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length];
        for (int i10 = 0; i10 < aVarArr.length; i10++) {
            q.a aVar = aVarArr[i10];
            if (aVar == null) {
                jArr[i10] = new long[0];
            } else {
                jArr[i10] = new long[aVar.f69158b.length];
                int i11 = 0;
                while (true) {
                    int[] iArr = aVar.f69158b;
                    if (i11 >= iArr.length) {
                        break;
                    }
                    long j10 = aVar.f69157a.a(iArr[i11]).f55169j;
                    long[] jArr2 = jArr[i10];
                    if (j10 == -1) {
                        j10 = 0;
                    }
                    jArr2[i11] = j10;
                    i11++;
                }
                Arrays.sort(jArr[i10]);
            }
        }
        return jArr;
    }

    private static ImmutableList<Integer> u(long[][] jArr) {
        double d10;
        com.google.common.collect.p e10 = MultimapBuilder.c().a().e();
        for (int i10 = 0; i10 < jArr.length; i10++) {
            long[] jArr2 = jArr[i10];
            if (jArr2.length > 1) {
                int length = jArr2.length;
                double[] dArr = new double[length];
                int i11 = 0;
                while (true) {
                    long[] jArr3 = jArr[i10];
                    double d11 = 0.0d;
                    if (i11 >= jArr3.length) {
                        break;
                    }
                    long j10 = jArr3[i11];
                    if (j10 != -1) {
                        d11 = Math.log(j10);
                    }
                    dArr[i11] = d11;
                    i11++;
                }
                int i12 = length - 1;
                double d12 = dArr[i12] - dArr[0];
                int i13 = 0;
                while (i13 < i12) {
                    double d13 = dArr[i13];
                    i13++;
                    double d14 = (d13 + dArr[i13]) * 0.5d;
                    if (d12 == 0.0d) {
                        d10 = 1.0d;
                    } else {
                        d10 = (d14 - dArr[0]) / d12;
                    }
                    e10.put(Double.valueOf(d10), Integer.valueOf(i10));
                }
            }
        }
        return ImmutableList.u(e10.values());
    }

    private long v(long j10) {
        long e10;
        long bitrateEstimate = this.f69023i.getBitrateEstimate();
        this.f69038x = bitrateEstimate;
        long j11 = ((float) bitrateEstimate) * this.f69029o;
        if (this.f69023i.e() != -9223372036854775807L && j10 != -9223372036854775807L) {
            float f10 = (float) j10;
            return (((float) j11) * Math.max((f10 / this.f69033s) - ((float) e10), 0.0f)) / f10;
        }
        return ((float) j11) / this.f69033s;
    }

    private long w(long j10, long j11) {
        if (j10 == -9223372036854775807L) {
            return this.f69024j;
        }
        if (j11 != -9223372036854775807L) {
            j10 -= j11;
        }
        return Math.min(((float) j10) * this.f69030p, this.f69024j);
    }

    @Override // vn.c, vn.q
    @CallSuper
    public void disable() {
        this.f69037w = null;
    }

    @Override // vn.c, vn.q
    @CallSuper
    public void enable() {
        this.f69036v = -9223372036854775807L;
        this.f69037w = null;
    }

    @Override // vn.c, vn.q
    public int evaluateQueueSize(long j10, List<? extends tn.m> list) {
        tn.m mVar;
        int i10;
        int i11;
        long elapsedRealtime = this.f69032r.elapsedRealtime();
        if (!x(elapsedRealtime, list)) {
            return list.size();
        }
        this.f69036v = elapsedRealtime;
        if (list.isEmpty()) {
            mVar = null;
        } else {
            mVar = (tn.m) com.google.common.collect.l.d(list);
        }
        this.f69037w = mVar;
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long l02 = m0.l0(list.get(size - 1).f67466g - j10, this.f69033s);
        long r10 = r();
        if (l02 < r10) {
            return size;
        }
        io.bidmachine.media3.common.a format = getFormat(n(elapsedRealtime, q(list)));
        for (int i12 = 0; i12 < size; i12++) {
            tn.m mVar2 = list.get(i12);
            io.bidmachine.media3.common.a aVar = mVar2.f67463d;
            if (m0.l0(mVar2.f67466g - j10, this.f69033s) >= r10 && aVar.f55169j < format.f55169j && (i10 = aVar.f55182w) != -1 && i10 <= this.f69028n && (i11 = aVar.f55181v) != -1 && i11 <= this.f69027m && i10 < format.f55182w) {
                return i12;
            }
        }
        return size;
    }

    @Override // vn.q
    public int getSelectedIndex() {
        return this.f69034t;
    }

    @Override // vn.q
    @Nullable
    public Object getSelectionData() {
        return null;
    }

    @Override // vn.q
    public int getSelectionReason() {
        return this.f69035u;
    }

    @Override // vn.q
    public void h(long j10, long j11, long j12, List<? extends tn.m> list, tn.n[] nVarArr) {
        int e10;
        long elapsedRealtime = this.f69032r.elapsedRealtime();
        long s10 = s(nVarArr, list);
        int i10 = this.f69035u;
        if (i10 == 0) {
            this.f69035u = 1;
            this.f69034t = n(elapsedRealtime, s10);
            return;
        }
        int i11 = this.f69034t;
        if (list.isEmpty()) {
            e10 = -1;
        } else {
            e10 = e(((tn.m) com.google.common.collect.l.d(list)).f67463d);
        }
        if (e10 != -1) {
            i10 = ((tn.m) com.google.common.collect.l.d(list)).f67464e;
            i11 = e10;
        }
        int n10 = n(elapsedRealtime, s10);
        if (n10 != i11 && !d(i11, elapsedRealtime)) {
            io.bidmachine.media3.common.a format = getFormat(i11);
            io.bidmachine.media3.common.a format2 = getFormat(n10);
            long w10 = w(j12, s10);
            int i12 = format2.f55169j;
            int i13 = format.f55169j;
            if ((i12 > i13 && j11 < w10) || (i12 < i13 && j11 >= this.f69025k)) {
                n10 = i11;
            }
        }
        if (n10 != i11) {
            i10 = 3;
        }
        this.f69035u = i10;
        this.f69034t = n10;
    }

    protected boolean m(io.bidmachine.media3.common.a aVar, int i10, long j10) {
        if (i10 <= j10) {
            return true;
        }
        return false;
    }

    @Override // vn.c, vn.q
    public void onPlaybackSpeed(float f10) {
        this.f69033s = f10;
    }

    protected long r() {
        return this.f69026l;
    }

    protected boolean x(long j10, List<? extends tn.m> list) {
        long j11 = this.f69036v;
        if (j11 != -9223372036854775807L && j10 - j11 < 1000 && (list.isEmpty() || ((tn.m) com.google.common.collect.l.d(list)).equals(this.f69037w))) {
            return false;
        }
        return true;
    }
}
