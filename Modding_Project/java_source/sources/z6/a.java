package z6;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.u1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.MultimapBuilder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import z6.y;
/* compiled from: AdaptiveTrackSelection.java */
/* loaded from: classes4.dex */
public class a extends c {

    /* renamed from: h  reason: collision with root package name */
    private final a7.d f71323h;

    /* renamed from: i  reason: collision with root package name */
    private final long f71324i;

    /* renamed from: j  reason: collision with root package name */
    private final long f71325j;

    /* renamed from: k  reason: collision with root package name */
    private final long f71326k;

    /* renamed from: l  reason: collision with root package name */
    private final int f71327l;

    /* renamed from: m  reason: collision with root package name */
    private final int f71328m;

    /* renamed from: n  reason: collision with root package name */
    private final float f71329n;

    /* renamed from: o  reason: collision with root package name */
    private final float f71330o;

    /* renamed from: p  reason: collision with root package name */
    private final ImmutableList<C0981a> f71331p;

    /* renamed from: q  reason: collision with root package name */
    private final b7.d f71332q;

    /* renamed from: r  reason: collision with root package name */
    private float f71333r;

    /* renamed from: s  reason: collision with root package name */
    private int f71334s;

    /* renamed from: t  reason: collision with root package name */
    private int f71335t;

    /* renamed from: u  reason: collision with root package name */
    private long f71336u;

    /* compiled from: AdaptiveTrackSelection.java */
    /* renamed from: z6.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0981a {

        /* renamed from: a  reason: collision with root package name */
        public final long f71337a;

        /* renamed from: b  reason: collision with root package name */
        public final long f71338b;

        public C0981a(long j10, long j11) {
            this.f71337a = j10;
            this.f71338b = j11;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0981a)) {
                return false;
            }
            C0981a c0981a = (C0981a) obj;
            if (this.f71337a == c0981a.f71337a && this.f71338b == c0981a.f71338b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((int) this.f71337a) * 31) + ((int) this.f71338b);
        }
    }

    /* compiled from: AdaptiveTrackSelection.java */
    /* loaded from: classes4.dex */
    public static class b implements y.b {

        /* renamed from: a  reason: collision with root package name */
        private final int f71339a;

        /* renamed from: b  reason: collision with root package name */
        private final int f71340b;

        /* renamed from: c  reason: collision with root package name */
        private final int f71341c;

        /* renamed from: d  reason: collision with root package name */
        private final int f71342d;

        /* renamed from: e  reason: collision with root package name */
        private final int f71343e;

        /* renamed from: f  reason: collision with root package name */
        private final float f71344f;

        /* renamed from: g  reason: collision with root package name */
        private final float f71345g;

        /* renamed from: h  reason: collision with root package name */
        private final b7.d f71346h;

        public b() {
            this(10000, 25000, 25000, 0.7f);
        }

        @Override // z6.y.b
        public final y[] a(y.a[] aVarArr, a7.d dVar, o.b bVar, u1 u1Var) {
            y b10;
            ImmutableList h10 = a.h(aVarArr);
            y[] yVarArr = new y[aVarArr.length];
            for (int i10 = 0; i10 < aVarArr.length; i10++) {
                y.a aVar = aVarArr[i10];
                if (aVar != null) {
                    int[] iArr = aVar.f71499b;
                    if (iArr.length != 0) {
                        if (iArr.length == 1) {
                            b10 = new z(aVar.f71498a, iArr[0], aVar.f71500c);
                        } else {
                            b10 = b(aVar.f71498a, iArr, aVar.f71500c, dVar, (ImmutableList) h10.get(i10));
                        }
                        yVarArr[i10] = b10;
                    }
                }
            }
            return yVarArr;
        }

        protected a b(n6.u uVar, int[] iArr, int i10, a7.d dVar, ImmutableList<C0981a> immutableList) {
            return new a(uVar, iArr, i10, dVar, this.f71339a, this.f71340b, this.f71341c, this.f71342d, this.f71343e, this.f71344f, this.f71345g, immutableList, this.f71346h);
        }

        public b(int i10, int i11, int i12, float f10) {
            this(i10, i11, i12, 1279, 719, f10, 0.75f, b7.d.f2436a);
        }

        public b(int i10, int i11, int i12, int i13, int i14, float f10, float f11, b7.d dVar) {
            this.f71339a = i10;
            this.f71340b = i11;
            this.f71341c = i12;
            this.f71342d = i13;
            this.f71343e = i14;
            this.f71344f = f10;
            this.f71345g = f11;
            this.f71346h = dVar;
        }
    }

    protected a(n6.u uVar, int[] iArr, int i10, a7.d dVar, long j10, long j11, long j12, int i11, int i12, float f10, float f11, List<C0981a> list, b7.d dVar2) {
        super(uVar, iArr, i10);
        a7.d dVar3;
        long j13;
        if (j12 < j10) {
            b7.q.i("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            dVar3 = dVar;
            j13 = j10;
        } else {
            dVar3 = dVar;
            j13 = j12;
        }
        this.f71323h = dVar3;
        this.f71324i = j10 * 1000;
        this.f71325j = j11 * 1000;
        this.f71326k = j13 * 1000;
        this.f71327l = i11;
        this.f71328m = i12;
        this.f71329n = f10;
        this.f71330o = f11;
        this.f71331p = ImmutableList.u(list);
        this.f71332q = dVar2;
        this.f71333r = 1.0f;
        this.f71335t = 0;
        this.f71336u = -9223372036854775807L;
    }

    private static void g(List<ImmutableList.a<C0981a>> list, long[] jArr) {
        long j10 = 0;
        for (long j11 : jArr) {
            j10 += j11;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            ImmutableList.a<C0981a> aVar = list.get(i10);
            if (aVar != null) {
                aVar.a(new C0981a(j10, jArr[i10]));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ImmutableList<ImmutableList<C0981a>> h(y.a[] aVarArr) {
        ImmutableList k10;
        long j10;
        ArrayList arrayList = new ArrayList();
        for (y.a aVar : aVarArr) {
            if (aVar != null && aVar.f71499b.length > 1) {
                ImmutableList.a r10 = ImmutableList.r();
                r10.a(new C0981a(0L, 0L));
                arrayList.add(r10);
            } else {
                arrayList.add(null);
            }
        }
        long[][] i10 = i(aVarArr);
        int[] iArr = new int[i10.length];
        long[] jArr = new long[i10.length];
        for (int i11 = 0; i11 < i10.length; i11++) {
            long[] jArr2 = i10[i11];
            if (jArr2.length == 0) {
                j10 = 0;
            } else {
                j10 = jArr2[0];
            }
            jArr[i11] = j10;
        }
        g(arrayList, jArr);
        ImmutableList<Integer> j11 = j(i10);
        for (int i12 = 0; i12 < j11.size(); i12++) {
            int intValue = j11.get(i12).intValue();
            int i13 = iArr[intValue] + 1;
            iArr[intValue] = i13;
            jArr[intValue] = i10[intValue][i13];
            g(arrayList, jArr);
        }
        for (int i14 = 0; i14 < aVarArr.length; i14++) {
            if (arrayList.get(i14) != null) {
                jArr[i14] = jArr[i14] * 2;
            }
        }
        g(arrayList, jArr);
        ImmutableList.a r11 = ImmutableList.r();
        for (int i15 = 0; i15 < arrayList.size(); i15++) {
            ImmutableList.a aVar2 = (ImmutableList.a) arrayList.get(i15);
            if (aVar2 == null) {
                k10 = ImmutableList.A();
            } else {
                k10 = aVar2.k();
            }
            r11.a(k10);
        }
        return r11.k();
    }

    private static long[][] i(y.a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length];
        for (int i10 = 0; i10 < aVarArr.length; i10++) {
            y.a aVar = aVarArr[i10];
            if (aVar == null) {
                jArr[i10] = new long[0];
            } else {
                jArr[i10] = new long[aVar.f71499b.length];
                int i11 = 0;
                while (true) {
                    int[] iArr = aVar.f71499b;
                    if (i11 >= iArr.length) {
                        break;
                    }
                    long j10 = aVar.f71498a.c(iArr[i11]).f19153h;
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

    private static ImmutableList<Integer> j(long[][] jArr) {
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

    @Override // z6.c, z6.y
    @CallSuper
    public void enable() {
        this.f71336u = -9223372036854775807L;
    }

    @Override // z6.y
    public int getSelectedIndex() {
        return this.f71334s;
    }

    @Override // z6.c, z6.y
    public void onPlaybackSpeed(float f10) {
        this.f71333r = f10;
    }

    @Override // z6.c, z6.y
    @CallSuper
    public void disable() {
    }
}
