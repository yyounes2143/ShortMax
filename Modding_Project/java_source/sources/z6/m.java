package z6;

import android.content.Context;
import android.graphics.Point;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.s0;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.g;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.v0;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;
import o5.o0;
import o5.p0;
import z6.a;
import z6.a0;
import z6.f0;
import z6.m;
import z6.y;
/* compiled from: DefaultTrackSelector.java */
/* loaded from: classes4.dex */
public class m extends a0 {

    /* renamed from: k  reason: collision with root package name */
    private static final com.google.common.collect.t<Integer> f71432k = com.google.common.collect.t.d(new Comparator() { // from class: z6.d
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int P;
            P = m.P((Integer) obj, (Integer) obj2);
            return P;
        }
    });

    /* renamed from: l  reason: collision with root package name */
    private static final com.google.common.collect.t<Integer> f71433l = com.google.common.collect.t.d(new Comparator() { // from class: z6.e
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int Q;
            Q = m.Q((Integer) obj, (Integer) obj2);
            return Q;
        }
    });

    /* renamed from: d  reason: collision with root package name */
    private final Object f71434d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final Context f71435e;

    /* renamed from: f  reason: collision with root package name */
    private final y.b f71436f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f71437g;
    @GuardedBy("lock")

    /* renamed from: h  reason: collision with root package name */
    private d f71438h;
    @Nullable
    @GuardedBy("lock")

    /* renamed from: i  reason: collision with root package name */
    private f f71439i;
    @GuardedBy("lock")

    /* renamed from: j  reason: collision with root package name */
    private com.google.android.exoplayer2.audio.a f71440j;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes4.dex */
    public static final class b extends h<b> implements Comparable<b> {

        /* renamed from: e  reason: collision with root package name */
        private final int f71441e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f71442f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private final String f71443g;

        /* renamed from: h  reason: collision with root package name */
        private final d f71444h;

        /* renamed from: i  reason: collision with root package name */
        private final boolean f71445i;

        /* renamed from: j  reason: collision with root package name */
        private final int f71446j;

        /* renamed from: k  reason: collision with root package name */
        private final int f71447k;

        /* renamed from: l  reason: collision with root package name */
        private final int f71448l;

        /* renamed from: m  reason: collision with root package name */
        private final boolean f71449m;

        /* renamed from: n  reason: collision with root package name */
        private final int f71450n;

        /* renamed from: o  reason: collision with root package name */
        private final int f71451o;

        /* renamed from: p  reason: collision with root package name */
        private final boolean f71452p;

        /* renamed from: q  reason: collision with root package name */
        private final int f71453q;

        /* renamed from: r  reason: collision with root package name */
        private final int f71454r;

        /* renamed from: s  reason: collision with root package name */
        private final int f71455s;

        /* renamed from: t  reason: collision with root package name */
        private final int f71456t;

        /* renamed from: u  reason: collision with root package name */
        private final boolean f71457u;

        /* renamed from: v  reason: collision with root package name */
        private final boolean f71458v;

        public b(int i10, n6.u uVar, int i11, d dVar, int i12, boolean z10, h7.l<v0> lVar) {
            super(i10, uVar, i11);
            int i13;
            int i14;
            boolean z11;
            boolean z12;
            boolean z13;
            int i15;
            boolean z14;
            this.f71444h = dVar;
            this.f71443g = m.T(this.f71483d.f19148c);
            this.f71445i = m.L(i12, false);
            int i16 = 0;
            while (true) {
                i13 = Integer.MAX_VALUE;
                if (i16 < dVar.f71380n.size()) {
                    i14 = m.D(this.f71483d, dVar.f71380n.get(i16), false);
                    if (i14 > 0) {
                        break;
                    }
                    i16++;
                } else {
                    i14 = 0;
                    i16 = Integer.MAX_VALUE;
                    break;
                }
            }
            this.f71447k = i16;
            this.f71446j = i14;
            this.f71448l = m.H(this.f71483d.f19150e, dVar.f71381o);
            v0 v0Var = this.f71483d;
            int i17 = v0Var.f19150e;
            if (i17 != 0 && (i17 & 1) == 0) {
                z11 = false;
            } else {
                z11 = true;
            }
            this.f71449m = z11;
            if ((v0Var.f19149d & 1) != 0) {
                z12 = true;
            } else {
                z12 = false;
            }
            this.f71452p = z12;
            int i18 = v0Var.f19170y;
            this.f71453q = i18;
            this.f71454r = v0Var.f19171z;
            int i19 = v0Var.f19153h;
            this.f71455s = i19;
            if ((i19 == -1 || i19 <= dVar.f71383q) && ((i18 == -1 || i18 <= dVar.f71382p) && lVar.apply(v0Var))) {
                z13 = true;
            } else {
                z13 = false;
            }
            this.f71442f = z13;
            String[] c02 = s0.c0();
            int i20 = 0;
            while (true) {
                if (i20 < c02.length) {
                    i15 = m.D(this.f71483d, c02[i20], false);
                    if (i15 > 0) {
                        break;
                    }
                    i20++;
                } else {
                    i15 = 0;
                    i20 = Integer.MAX_VALUE;
                    break;
                }
            }
            this.f71450n = i20;
            this.f71451o = i15;
            int i21 = 0;
            while (true) {
                if (i21 < dVar.f71384r.size()) {
                    String str = this.f71483d.f19157l;
                    if (str != null && str.equals(dVar.f71384r.get(i21))) {
                        i13 = i21;
                        break;
                    }
                    i21++;
                } else {
                    break;
                }
            }
            this.f71456t = i13;
            if (o0.g(i12) == 128) {
                z14 = true;
            } else {
                z14 = false;
            }
            this.f71457u = z14;
            this.f71458v = o0.d(i12) == 64;
            this.f71441e = g(i12, z10);
        }

        public static int c(List<b> list, List<b> list2) {
            return ((b) Collections.max(list)).compareTo((b) Collections.max(list2));
        }

        public static ImmutableList<b> f(int i10, n6.u uVar, d dVar, int[] iArr, boolean z10, h7.l<v0> lVar) {
            ImmutableList.a r10 = ImmutableList.r();
            for (int i11 = 0; i11 < uVar.f62833a; i11++) {
                r10.a(new b(i10, uVar, i11, dVar, iArr[i11], z10, lVar));
            }
            return r10.k();
        }

        private int g(int i10, boolean z10) {
            if (!m.L(i10, this.f71444h.N)) {
                return 0;
            }
            if (!this.f71442f && !this.f71444h.H) {
                return 0;
            }
            if (m.L(i10, false) && this.f71442f && this.f71483d.f19153h != -1) {
                d dVar = this.f71444h;
                if (!dVar.f71390x && !dVar.f71389w && (dVar.P || !z10)) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // z6.m.h
        public int a() {
            return this.f71441e;
        }

        @Override // java.lang.Comparable
        /* renamed from: e */
        public int compareTo(b bVar) {
            com.google.common.collect.t g10;
            com.google.common.collect.t tVar;
            if (this.f71442f && this.f71445i) {
                g10 = m.f71432k;
            } else {
                g10 = m.f71432k.g();
            }
            com.google.common.collect.g f10 = com.google.common.collect.g.j().g(this.f71445i, bVar.f71445i).f(Integer.valueOf(this.f71447k), Integer.valueOf(bVar.f71447k), com.google.common.collect.t.e().g()).d(this.f71446j, bVar.f71446j).d(this.f71448l, bVar.f71448l).g(this.f71452p, bVar.f71452p).g(this.f71449m, bVar.f71449m).f(Integer.valueOf(this.f71450n), Integer.valueOf(bVar.f71450n), com.google.common.collect.t.e().g()).d(this.f71451o, bVar.f71451o).g(this.f71442f, bVar.f71442f).f(Integer.valueOf(this.f71456t), Integer.valueOf(bVar.f71456t), com.google.common.collect.t.e().g());
            Integer valueOf = Integer.valueOf(this.f71455s);
            Integer valueOf2 = Integer.valueOf(bVar.f71455s);
            if (!this.f71444h.f71389w) {
                tVar = m.f71433l;
            } else {
                tVar = m.f71432k.g();
            }
            com.google.common.collect.g f11 = f10.f(valueOf, valueOf2, tVar).g(this.f71457u, bVar.f71457u).g(this.f71458v, bVar.f71458v).f(Integer.valueOf(this.f71453q), Integer.valueOf(bVar.f71453q), g10).f(Integer.valueOf(this.f71454r), Integer.valueOf(bVar.f71454r), g10);
            Integer valueOf3 = Integer.valueOf(this.f71455s);
            Integer valueOf4 = Integer.valueOf(bVar.f71455s);
            if (!s0.c(this.f71443g, bVar.f71443g)) {
                g10 = m.f71433l;
            }
            return f11.f(valueOf3, valueOf4, g10).i();
        }

        @Override // z6.m.h
        /* renamed from: h */
        public boolean b(b bVar) {
            int i10;
            String str;
            int i11;
            d dVar = this.f71444h;
            if ((dVar.K || ((i11 = this.f71483d.f19170y) != -1 && i11 == bVar.f71483d.f19170y)) && (dVar.I || ((str = this.f71483d.f19157l) != null && TextUtils.equals(str, bVar.f71483d.f19157l)))) {
                d dVar2 = this.f71444h;
                if ((dVar2.J || ((i10 = this.f71483d.f19171z) != -1 && i10 == bVar.f71483d.f19171z)) && (dVar2.L || (this.f71457u == bVar.f71457u && this.f71458v == bVar.f71458v))) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes4.dex */
    public static final class c implements Comparable<c> {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f71459a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f71460b;

        public c(v0 v0Var, int i10) {
            this.f71459a = (v0Var.f19149d & 1) != 0;
            this.f71460b = m.L(i10, false);
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(c cVar) {
            return com.google.common.collect.g.j().g(this.f71460b, cVar.f71460b).g(this.f71459a, cVar.f71459a).i();
        }
    }

    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes4.dex */
    public static final class d extends f0 implements com.google.android.exoplayer2.g {
        public static final d S;
        @Deprecated
        public static final d T;
        public static final g.a<d> U;
        public final boolean D;
        public final boolean E;
        public final boolean F;
        public final boolean G;
        public final boolean H;
        public final boolean I;
        public final boolean J;
        public final boolean K;
        public final boolean L;
        public final boolean M;
        public final boolean N;
        public final boolean O;
        public final boolean P;
        private final SparseArray<Map<n6.w, e>> Q;
        private final SparseBooleanArray R;

        static {
            d A = new a().A();
            S = A;
            T = A;
            U = new g.a() { // from class: z6.n
                @Override // com.google.android.exoplayer2.g.a
                public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
                    m.d p10;
                    p10 = m.d.p(bundle);
                    return p10;
                }
            };
        }

        private static boolean g(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i10)) < 0) {
                    return false;
                }
            }
            return true;
        }

        private static boolean h(SparseArray<Map<n6.w, e>> sparseArray, SparseArray<Map<n6.w, e>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i10));
                if (indexOfKey < 0 || !i(sparseArray.valueAt(i10), sparseArray2.valueAt(indexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static boolean i(java.util.Map<n6.w, z6.m.e> r4, java.util.Map<n6.w, z6.m.e> r5) {
            /*
                int r0 = r4.size()
                int r1 = r5.size()
                r2 = 0
                if (r1 == r0) goto Lc
                return r2
            Lc:
                java.util.Set r4 = r4.entrySet()
                java.util.Iterator r4 = r4.iterator()
            L14:
                boolean r0 = r4.hasNext()
                if (r0 == 0) goto L3b
                java.lang.Object r0 = r4.next()
                java.util.Map$Entry r0 = (java.util.Map.Entry) r0
                java.lang.Object r1 = r0.getKey()
                n6.w r1 = (n6.w) r1
                boolean r3 = r5.containsKey(r1)
                if (r3 == 0) goto L3a
                java.lang.Object r0 = r0.getValue()
                java.lang.Object r1 = r5.get(r1)
                boolean r0 = b7.s0.c(r0, r1)
                if (r0 != 0) goto L14
            L3a:
                return r2
            L3b:
                r4 = 1
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: z6.m.d.i(java.util.Map, java.util.Map):boolean");
        }

        public static d k(Context context) {
            return new a(context).A();
        }

        private static int[] l(SparseBooleanArray sparseBooleanArray) {
            int[] iArr = new int[sparseBooleanArray.size()];
            for (int i10 = 0; i10 < sparseBooleanArray.size(); i10++) {
                iArr[i10] = sparseBooleanArray.keyAt(i10);
            }
            return iArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ d p(Bundle bundle) {
            return new a(bundle).A();
        }

        private static void q(Bundle bundle, SparseArray<Map<n6.w, e>> sparseArray) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            SparseArray sparseArray2 = new SparseArray();
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                int keyAt = sparseArray.keyAt(i10);
                for (Map.Entry<n6.w, e> entry : sparseArray.valueAt(i10).entrySet()) {
                    e value = entry.getValue();
                    if (value != null) {
                        sparseArray2.put(arrayList2.size(), value);
                    }
                    arrayList2.add(entry.getKey());
                    arrayList.add(Integer.valueOf(keyAt));
                }
                bundle.putIntArray(f0.c(1010), Ints.m(arrayList));
                bundle.putParcelableArrayList(f0.c(1011), b7.c.d(arrayList2));
                bundle.putSparseParcelableArray(f0.c(1012), b7.c.e(sparseArray2));
            }
        }

        @Override // z6.f0
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            if (super.equals(dVar) && this.D == dVar.D && this.E == dVar.E && this.F == dVar.F && this.G == dVar.G && this.H == dVar.H && this.I == dVar.I && this.J == dVar.J && this.K == dVar.K && this.L == dVar.L && this.M == dVar.M && this.N == dVar.N && this.O == dVar.O && this.P == dVar.P && g(this.R, dVar.R) && h(this.Q, dVar.Q)) {
                return true;
            }
            return false;
        }

        @Override // z6.f0
        public int hashCode() {
            return ((((((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.D ? 1 : 0)) * 31) + (this.E ? 1 : 0)) * 31) + (this.F ? 1 : 0)) * 31) + (this.G ? 1 : 0)) * 31) + (this.H ? 1 : 0)) * 31) + (this.I ? 1 : 0)) * 31) + (this.J ? 1 : 0)) * 31) + (this.K ? 1 : 0)) * 31) + (this.L ? 1 : 0)) * 31) + (this.M ? 1 : 0)) * 31) + (this.N ? 1 : 0)) * 31) + (this.O ? 1 : 0)) * 31) + (this.P ? 1 : 0);
        }

        @Override // z6.f0
        /* renamed from: j */
        public a a() {
            return new a();
        }

        public boolean m(int i10) {
            return this.R.get(i10);
        }

        @Nullable
        @Deprecated
        public e n(int i10, n6.w wVar) {
            Map<n6.w, e> map = this.Q.get(i10);
            if (map != null) {
                return map.get(wVar);
            }
            return null;
        }

        @Deprecated
        public boolean o(int i10, n6.w wVar) {
            Map<n6.w, e> map = this.Q.get(i10);
            if (map != null && map.containsKey(wVar)) {
                return true;
            }
            return false;
        }

        @Override // z6.f0, com.google.android.exoplayer2.g
        public Bundle toBundle() {
            Bundle bundle = super.toBundle();
            bundle.putBoolean(f0.c(1000), this.D);
            bundle.putBoolean(f0.c(1001), this.E);
            bundle.putBoolean(f0.c(1002), this.F);
            bundle.putBoolean(f0.c(1014), this.G);
            bundle.putBoolean(f0.c(1003), this.H);
            bundle.putBoolean(f0.c(1004), this.I);
            bundle.putBoolean(f0.c(1005), this.J);
            bundle.putBoolean(f0.c(1006), this.K);
            bundle.putBoolean(f0.c(1015), this.L);
            bundle.putBoolean(f0.c(1016), this.M);
            bundle.putBoolean(f0.c(1007), this.N);
            bundle.putBoolean(f0.c(1008), this.O);
            bundle.putBoolean(f0.c(1009), this.P);
            q(bundle, this.Q);
            bundle.putIntArray(f0.c(1013), l(this.R));
            return bundle;
        }

        /* compiled from: DefaultTrackSelector.java */
        /* loaded from: classes4.dex */
        public static final class a extends f0.a {
            private boolean A;
            private boolean B;
            private boolean C;
            private boolean D;
            private boolean E;
            private boolean F;
            private boolean G;
            private boolean H;
            private boolean I;
            private boolean J;
            private boolean K;
            private boolean L;
            private boolean M;
            private final SparseArray<Map<n6.w, e>> N;
            private final SparseBooleanArray O;

            private static SparseArray<Map<n6.w, e>> d0(SparseArray<Map<n6.w, e>> sparseArray) {
                SparseArray<Map<n6.w, e>> sparseArray2 = new SparseArray<>();
                for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                    sparseArray2.put(sparseArray.keyAt(i10), new HashMap(sparseArray.valueAt(i10)));
                }
                return sparseArray2;
            }

            private void e0() {
                this.A = true;
                this.B = false;
                this.C = true;
                this.D = false;
                this.E = true;
                this.F = false;
                this.G = false;
                this.H = false;
                this.I = false;
                this.J = true;
                this.K = true;
                this.L = false;
                this.M = true;
            }

            private SparseBooleanArray f0(@Nullable int[] iArr) {
                if (iArr == null) {
                    return new SparseBooleanArray();
                }
                SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(iArr.length);
                for (int i10 : iArr) {
                    sparseBooleanArray.append(i10, true);
                }
                return sparseBooleanArray;
            }

            private void x0(Bundle bundle) {
                ImmutableList b10;
                SparseArray c10;
                int[] intArray = bundle.getIntArray(f0.c(1010));
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(f0.c(1011));
                if (parcelableArrayList == null) {
                    b10 = ImmutableList.A();
                } else {
                    b10 = b7.c.b(n6.w.f62839e, parcelableArrayList);
                }
                SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(f0.c(1012));
                if (sparseParcelableArray == null) {
                    c10 = new SparseArray();
                } else {
                    c10 = b7.c.c(e.f71461e, sparseParcelableArray);
                }
                if (intArray != null && intArray.length == b10.size()) {
                    for (int i10 = 0; i10 < intArray.length; i10++) {
                        w0(intArray[i10], (n6.w) b10.get(i10), (e) c10.get(i10));
                    }
                }
            }

            @Override // z6.f0.a
            /* renamed from: A0 */
            public a K(int i10, int i11, boolean z10) {
                super.K(i10, i11, z10);
                return this;
            }

            @Override // z6.f0.a
            /* renamed from: B0 */
            public a L(Context context, boolean z10) {
                super.L(context, z10);
                return this;
            }

            @Override // z6.f0.a
            /* renamed from: b0 */
            public d A() {
                return new d(this);
            }

            @Override // z6.f0.a
            /* renamed from: c0 */
            public a B(int i10) {
                super.B(i10);
                return this;
            }

            protected a g0(f0 f0Var) {
                super.E(f0Var);
                return this;
            }

            public a h0(boolean z10) {
                this.H = z10;
                return this;
            }

            public a i0(boolean z10) {
                this.I = z10;
                return this;
            }

            public a j0(boolean z10) {
                this.F = z10;
                return this;
            }

            public a k0(boolean z10) {
                this.G = z10;
                return this;
            }

            public a l0(boolean z10) {
                this.M = z10;
                return this;
            }

            public a m0(boolean z10) {
                this.D = z10;
                return this;
            }

            public a n0(boolean z10) {
                this.B = z10;
                return this;
            }

            public a o0(boolean z10) {
                this.C = z10;
                return this;
            }

            public a p0(boolean z10) {
                this.J = z10;
                return this;
            }

            public a q0(boolean z10) {
                this.E = z10;
                return this;
            }

            public a r0(boolean z10) {
                this.K = z10;
                return this;
            }

            public a s0(boolean z10) {
                this.A = z10;
                return this;
            }

            @Override // z6.f0.a
            /* renamed from: t0 */
            public a F(int i10) {
                super.F(i10);
                return this;
            }

            @Override // z6.f0.a
            /* renamed from: u0 */
            public a G(d0 d0Var) {
                super.G(d0Var);
                return this;
            }

            @Override // z6.f0.a
            /* renamed from: v0 */
            public a H(Context context) {
                super.H(context);
                return this;
            }

            @Deprecated
            public a w0(int i10, n6.w wVar, @Nullable e eVar) {
                Map<n6.w, e> map = this.N.get(i10);
                if (map == null) {
                    map = new HashMap<>();
                    this.N.put(i10, map);
                }
                if (map.containsKey(wVar) && s0.c(map.get(wVar), eVar)) {
                    return this;
                }
                map.put(wVar, eVar);
                return this;
            }

            @Override // z6.f0.a
            /* renamed from: y0 */
            public a J(int i10, boolean z10) {
                super.J(i10, z10);
                return this;
            }

            public a z0(boolean z10) {
                this.L = z10;
                return this;
            }

            @Deprecated
            public a() {
                this.N = new SparseArray<>();
                this.O = new SparseBooleanArray();
                e0();
            }

            public a(Context context) {
                super(context);
                this.N = new SparseArray<>();
                this.O = new SparseBooleanArray();
                e0();
            }

            private a(d dVar) {
                super(dVar);
                this.A = dVar.D;
                this.B = dVar.E;
                this.C = dVar.F;
                this.D = dVar.G;
                this.E = dVar.H;
                this.F = dVar.I;
                this.G = dVar.J;
                this.H = dVar.K;
                this.I = dVar.L;
                this.J = dVar.M;
                this.K = dVar.N;
                this.L = dVar.O;
                this.M = dVar.P;
                this.N = d0(dVar.Q);
                this.O = dVar.R.clone();
            }

            private a(Bundle bundle) {
                super(bundle);
                e0();
                d dVar = d.S;
                s0(bundle.getBoolean(f0.c(1000), dVar.D));
                n0(bundle.getBoolean(f0.c(1001), dVar.E));
                o0(bundle.getBoolean(f0.c(1002), dVar.F));
                m0(bundle.getBoolean(f0.c(1014), dVar.G));
                q0(bundle.getBoolean(f0.c(1003), dVar.H));
                j0(bundle.getBoolean(f0.c(1004), dVar.I));
                k0(bundle.getBoolean(f0.c(1005), dVar.J));
                h0(bundle.getBoolean(f0.c(1006), dVar.K));
                i0(bundle.getBoolean(f0.c(1015), dVar.L));
                p0(bundle.getBoolean(f0.c(1016), dVar.M));
                r0(bundle.getBoolean(f0.c(1007), dVar.N));
                z0(bundle.getBoolean(f0.c(1008), dVar.O));
                l0(bundle.getBoolean(f0.c(1009), dVar.P));
                this.N = new SparseArray<>();
                x0(bundle);
                this.O = f0(bundle.getIntArray(f0.c(1013)));
            }
        }

        private d(a aVar) {
            super(aVar);
            this.D = aVar.A;
            this.E = aVar.B;
            this.F = aVar.C;
            this.G = aVar.D;
            this.H = aVar.E;
            this.I = aVar.F;
            this.J = aVar.G;
            this.K = aVar.H;
            this.L = aVar.I;
            this.M = aVar.J;
            this.N = aVar.K;
            this.O = aVar.L;
            this.P = aVar.M;
            this.Q = aVar.N;
            this.R = aVar.O;
        }
    }

    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes4.dex */
    public static final class e implements com.google.android.exoplayer2.g {

        /* renamed from: e  reason: collision with root package name */
        public static final g.a<e> f71461e = new g.a() { // from class: z6.o
            @Override // com.google.android.exoplayer2.g.a
            public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
                m.e c10;
                c10 = m.e.c(bundle);
                return c10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final int f71462a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f71463b;

        /* renamed from: c  reason: collision with root package name */
        public final int f71464c;

        /* renamed from: d  reason: collision with root package name */
        public final int f71465d;

        public e(int i10, int[] iArr, int i11) {
            this.f71462a = i10;
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f71463b = copyOf;
            this.f71464c = iArr.length;
            this.f71465d = i11;
            Arrays.sort(copyOf);
        }

        private static String b(int i10) {
            return Integer.toString(i10, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ e c(Bundle bundle) {
            boolean z10 = false;
            int i10 = bundle.getInt(b(0), -1);
            int[] intArray = bundle.getIntArray(b(1));
            int i11 = bundle.getInt(b(2), -1);
            if (i10 >= 0 && i11 >= 0) {
                z10 = true;
            }
            b7.a.a(z10);
            b7.a.e(intArray);
            return new e(i10, intArray, i11);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            if (this.f71462a == eVar.f71462a && Arrays.equals(this.f71463b, eVar.f71463b) && this.f71465d == eVar.f71465d) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f71462a * 31) + Arrays.hashCode(this.f71463b)) * 31) + this.f71465d;
        }

        @Override // com.google.android.exoplayer2.g
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(b(0), this.f71462a);
            bundle.putIntArray(b(1), this.f71463b);
            bundle.putInt(b(2), this.f71465d);
            return bundle;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultTrackSelector.java */
    @RequiresApi(32)
    /* loaded from: classes4.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        private final Spatializer f71466a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f71467b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Handler f71468c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private Spatializer$OnSpatializerStateChangedListener f71469d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: DefaultTrackSelector.java */
        /* loaded from: classes4.dex */
        public class a implements Spatializer$OnSpatializerStateChangedListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ m f71470a;

            a(f fVar, m mVar) {
                this.f71470a = mVar;
            }

            public void onSpatializerAvailableChanged(Spatializer spatializer, boolean z10) {
                this.f71470a.S();
            }

            public void onSpatializerEnabledChanged(Spatializer spatializer, boolean z10) {
                this.f71470a.S();
            }
        }

        private f(Spatializer spatializer) {
            int immersiveAudioLevel;
            boolean z10;
            this.f71466a = spatializer;
            immersiveAudioLevel = spatializer.getImmersiveAudioLevel();
            if (immersiveAudioLevel != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f71467b = z10;
        }

        @Nullable
        public static f g(Context context) {
            Spatializer spatializer;
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            if (audioManager != null) {
                spatializer = audioManager.getSpatializer();
                return new f(spatializer);
            }
            return null;
        }

        public boolean a(com.google.android.exoplayer2.audio.a aVar, v0 v0Var) {
            int i10;
            boolean canBeSpatialized;
            if (MimeTypes.AUDIO_E_AC3_JOC.equals(v0Var.f19157l) && v0Var.f19170y == 16) {
                i10 = 12;
            } else {
                i10 = v0Var.f19170y;
            }
            AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(s0.D(i10));
            int i11 = v0Var.f19171z;
            if (i11 != -1) {
                channelMask.setSampleRate(i11);
            }
            canBeSpatialized = this.f71466a.canBeSpatialized(aVar.b().f17300a, channelMask.build());
            return canBeSpatialized;
        }

        public void b(m mVar, Looper looper) {
            if (this.f71469d == null && this.f71468c == null) {
                this.f71469d = new a(this, mVar);
                Handler handler = new Handler(looper);
                this.f71468c = handler;
                Spatializer spatializer = this.f71466a;
                Objects.requireNonNull(handler);
                spatializer.addOnSpatializerStateChangedListener(new androidx.emoji2.text.a(handler), this.f71469d);
            }
        }

        public boolean c() {
            boolean isAvailable;
            isAvailable = this.f71466a.isAvailable();
            return isAvailable;
        }

        public boolean d() {
            boolean isEnabled;
            isEnabled = this.f71466a.isEnabled();
            return isEnabled;
        }

        public boolean e() {
            return this.f71467b;
        }

        public void f() {
            Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener = this.f71469d;
            if (spatializer$OnSpatializerStateChangedListener != null && this.f71468c != null) {
                this.f71466a.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
                ((Handler) s0.j(this.f71468c)).removeCallbacksAndMessages(null);
                this.f71468c = null;
                this.f71469d = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes4.dex */
    public static final class g extends h<g> implements Comparable<g> {

        /* renamed from: e  reason: collision with root package name */
        private final int f71471e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f71472f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f71473g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f71474h;

        /* renamed from: i  reason: collision with root package name */
        private final int f71475i;

        /* renamed from: j  reason: collision with root package name */
        private final int f71476j;

        /* renamed from: k  reason: collision with root package name */
        private final int f71477k;

        /* renamed from: l  reason: collision with root package name */
        private final int f71478l;

        /* renamed from: m  reason: collision with root package name */
        private final boolean f71479m;

        public g(int i10, n6.u uVar, int i11, d dVar, int i12, @Nullable String str) {
            super(i10, uVar, i11);
            boolean z10;
            boolean z11;
            ImmutableList<String> immutableList;
            int i13;
            boolean z12;
            boolean z13;
            boolean z14;
            int i14 = 0;
            this.f71472f = m.L(i12, false);
            int i15 = this.f71483d.f19149d & (~dVar.f71387u);
            if ((i15 & 1) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f71473g = z10;
            if ((i15 & 2) != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.f71474h = z11;
            if (dVar.f71385s.isEmpty()) {
                immutableList = ImmutableList.B("");
            } else {
                immutableList = dVar.f71385s;
            }
            int i16 = 0;
            while (true) {
                if (i16 < immutableList.size()) {
                    i13 = m.D(this.f71483d, immutableList.get(i16), dVar.f71388v);
                    if (i13 > 0) {
                        break;
                    }
                    i16++;
                } else {
                    i16 = Integer.MAX_VALUE;
                    i13 = 0;
                    break;
                }
            }
            this.f71475i = i16;
            this.f71476j = i13;
            int H = m.H(this.f71483d.f19150e, dVar.f71386t);
            this.f71477k = H;
            if ((this.f71483d.f19150e & 1088) != 0) {
                z12 = true;
            } else {
                z12 = false;
            }
            this.f71479m = z12;
            if (m.T(str) == null) {
                z13 = true;
            } else {
                z13 = false;
            }
            int D = m.D(this.f71483d, str, z13);
            this.f71478l = D;
            if (i13 <= 0 && ((!dVar.f71385s.isEmpty() || H <= 0) && !this.f71473g && (!this.f71474h || D <= 0))) {
                z14 = false;
            } else {
                z14 = true;
            }
            if (m.L(i12, dVar.N) && z14) {
                i14 = 1;
            }
            this.f71471e = i14;
        }

        public static int c(List<g> list, List<g> list2) {
            return list.get(0).compareTo(list2.get(0));
        }

        public static ImmutableList<g> f(int i10, n6.u uVar, d dVar, int[] iArr, @Nullable String str) {
            ImmutableList.a r10 = ImmutableList.r();
            for (int i11 = 0; i11 < uVar.f62833a; i11++) {
                r10.a(new g(i10, uVar, i11, dVar, iArr[i11], str));
            }
            return r10.k();
        }

        @Override // z6.m.h
        public int a() {
            return this.f71471e;
        }

        @Override // java.lang.Comparable
        /* renamed from: e */
        public int compareTo(g gVar) {
            com.google.common.collect.t g10;
            com.google.common.collect.g g11 = com.google.common.collect.g.j().g(this.f71472f, gVar.f71472f).f(Integer.valueOf(this.f71475i), Integer.valueOf(gVar.f71475i), com.google.common.collect.t.e().g()).d(this.f71476j, gVar.f71476j).d(this.f71477k, gVar.f71477k).g(this.f71473g, gVar.f71473g);
            Boolean valueOf = Boolean.valueOf(this.f71474h);
            Boolean valueOf2 = Boolean.valueOf(gVar.f71474h);
            if (this.f71476j == 0) {
                g10 = com.google.common.collect.t.e();
            } else {
                g10 = com.google.common.collect.t.e().g();
            }
            com.google.common.collect.g d10 = g11.f(valueOf, valueOf2, g10).d(this.f71478l, gVar.f71478l);
            if (this.f71477k == 0) {
                d10 = d10.h(this.f71479m, gVar.f71479m);
            }
            return d10.i();
        }

        @Override // z6.m.h
        /* renamed from: g */
        public boolean b(g gVar) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes4.dex */
    public static abstract class h<T extends h<T>> {

        /* renamed from: a  reason: collision with root package name */
        public final int f71480a;

        /* renamed from: b  reason: collision with root package name */
        public final n6.u f71481b;

        /* renamed from: c  reason: collision with root package name */
        public final int f71482c;

        /* renamed from: d  reason: collision with root package name */
        public final v0 f71483d;

        /* compiled from: DefaultTrackSelector.java */
        /* loaded from: classes4.dex */
        public interface a<T extends h<T>> {
            List<T> a(int i10, n6.u uVar, int[] iArr);
        }

        public h(int i10, n6.u uVar, int i11) {
            this.f71480a = i10;
            this.f71481b = uVar;
            this.f71482c = i11;
            this.f71483d = uVar.c(i11);
        }

        public abstract int a();

        public abstract boolean b(T t10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes4.dex */
    public static final class i extends h<i> {

        /* renamed from: e  reason: collision with root package name */
        private final boolean f71484e;

        /* renamed from: f  reason: collision with root package name */
        private final d f71485f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f71486g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f71487h;

        /* renamed from: i  reason: collision with root package name */
        private final int f71488i;

        /* renamed from: j  reason: collision with root package name */
        private final int f71489j;

        /* renamed from: k  reason: collision with root package name */
        private final int f71490k;

        /* renamed from: l  reason: collision with root package name */
        private final int f71491l;

        /* renamed from: m  reason: collision with root package name */
        private final boolean f71492m;

        /* renamed from: n  reason: collision with root package name */
        private final boolean f71493n;

        /* renamed from: o  reason: collision with root package name */
        private final int f71494o;

        /* renamed from: p  reason: collision with root package name */
        private final boolean f71495p;

        /* renamed from: q  reason: collision with root package name */
        private final boolean f71496q;

        /* renamed from: r  reason: collision with root package name */
        private final int f71497r;

        /* JADX WARN: Removed duplicated region for block: B:54:0x00a0  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00b2  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x00d5  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x00d7  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x00e2  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x00c8 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public i(int r5, n6.u r6, int r7, z6.m.d r8, int r9, int r10, boolean r11) {
            /*
                Method dump skipped, instructions count: 246
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: z6.m.i.<init>(int, n6.u, int, z6.m$d, int, int, boolean):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int f(i iVar, i iVar2) {
            com.google.common.collect.g g10 = com.google.common.collect.g.j().g(iVar.f71487h, iVar2.f71487h).d(iVar.f71491l, iVar2.f71491l).g(iVar.f71492m, iVar2.f71492m).g(iVar.f71484e, iVar2.f71484e).g(iVar.f71486g, iVar2.f71486g).f(Integer.valueOf(iVar.f71490k), Integer.valueOf(iVar2.f71490k), com.google.common.collect.t.e().g()).g(iVar.f71495p, iVar2.f71495p).g(iVar.f71496q, iVar2.f71496q);
            if (iVar.f71495p && iVar.f71496q) {
                g10 = g10.d(iVar.f71497r, iVar2.f71497r);
            }
            return g10.i();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int g(i iVar, i iVar2) {
            com.google.common.collect.t g10;
            com.google.common.collect.t tVar;
            if (iVar.f71484e && iVar.f71487h) {
                g10 = m.f71432k;
            } else {
                g10 = m.f71432k.g();
            }
            com.google.common.collect.g j10 = com.google.common.collect.g.j();
            Integer valueOf = Integer.valueOf(iVar.f71488i);
            Integer valueOf2 = Integer.valueOf(iVar2.f71488i);
            if (!iVar.f71485f.f71389w) {
                tVar = m.f71433l;
            } else {
                tVar = m.f71432k.g();
            }
            return j10.f(valueOf, valueOf2, tVar).f(Integer.valueOf(iVar.f71489j), Integer.valueOf(iVar2.f71489j), g10).f(Integer.valueOf(iVar.f71488i), Integer.valueOf(iVar2.f71488i), g10).i();
        }

        public static int h(List<i> list, List<i> list2) {
            return com.google.common.collect.g.j().f((i) Collections.max(list, new Comparator() { // from class: z6.w
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int f10;
                    f10 = m.i.f((m.i) obj, (m.i) obj2);
                    return f10;
                }
            }), (i) Collections.max(list2, new Comparator() { // from class: z6.w
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int f10;
                    f10 = m.i.f((m.i) obj, (m.i) obj2);
                    return f10;
                }
            }), new Comparator() { // from class: z6.w
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int f10;
                    f10 = m.i.f((m.i) obj, (m.i) obj2);
                    return f10;
                }
            }).d(list.size(), list2.size()).f((i) Collections.max(list, new Comparator() { // from class: z6.x
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int g10;
                    g10 = m.i.g((m.i) obj, (m.i) obj2);
                    return g10;
                }
            }), (i) Collections.max(list2, new Comparator() { // from class: z6.x
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int g10;
                    g10 = m.i.g((m.i) obj, (m.i) obj2);
                    return g10;
                }
            }), new Comparator() { // from class: z6.x
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int g10;
                    g10 = m.i.g((m.i) obj, (m.i) obj2);
                    return g10;
                }
            }).i();
        }

        public static ImmutableList<i> i(int i10, n6.u uVar, d dVar, int[] iArr, int i11) {
            boolean z10;
            int E = m.E(uVar, dVar.f71375i, dVar.f71376j, dVar.f71377k);
            ImmutableList.a r10 = ImmutableList.r();
            for (int i12 = 0; i12 < uVar.f62833a; i12++) {
                int f10 = uVar.c(i12).f();
                if (E != Integer.MAX_VALUE && (f10 == -1 || f10 > E)) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                r10.a(new i(i10, uVar, i12, dVar, iArr[i12], i11, z10));
            }
            return r10.k();
        }

        private int j(int i10, int i11) {
            if ((this.f71483d.f19150e & 16384) != 0 || !m.L(i10, this.f71485f.N)) {
                return 0;
            }
            if (!this.f71484e && !this.f71485f.D) {
                return 0;
            }
            if (m.L(i10, false) && this.f71486g && this.f71484e && this.f71483d.f19153h != -1) {
                d dVar = this.f71485f;
                if (!dVar.f71390x && !dVar.f71389w && (i10 & i11) != 0) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // z6.m.h
        public int a() {
            return this.f71494o;
        }

        @Override // z6.m.h
        /* renamed from: k */
        public boolean b(i iVar) {
            if ((!this.f71493n && !s0.c(this.f71483d.f19157l, iVar.f71483d.f19157l)) || (!this.f71485f.G && (this.f71495p != iVar.f71495p || this.f71496q != iVar.f71496q))) {
                return false;
            }
            return true;
        }
    }

    public m(Context context) {
        this(context, new a.b());
    }

    private static void A(a0.a aVar, d dVar, y.a[] aVarArr) {
        y.a aVar2;
        int d10 = aVar.d();
        for (int i10 = 0; i10 < d10; i10++) {
            n6.w f10 = aVar.f(i10);
            if (dVar.o(i10, f10)) {
                e n10 = dVar.n(i10, f10);
                if (n10 != null && n10.f71463b.length != 0) {
                    aVar2 = new y.a(f10.b(n10.f71462a), n10.f71463b, n10.f71465d);
                } else {
                    aVar2 = null;
                }
                aVarArr[i10] = aVar2;
            }
        }
    }

    private static void B(a0.a aVar, f0 f0Var, y.a[] aVarArr) {
        y.a aVar2;
        int d10 = aVar.d();
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 < d10; i10++) {
            C(aVar.f(i10), f0Var, hashMap);
        }
        C(aVar.h(), f0Var, hashMap);
        for (int i11 = 0; i11 < d10; i11++) {
            d0 d0Var = (d0) hashMap.get(Integer.valueOf(aVar.e(i11)));
            if (d0Var != null) {
                if (!d0Var.f71364b.isEmpty() && aVar.f(i11).c(d0Var.f71363a) != -1) {
                    aVar2 = new y.a(d0Var.f71363a, Ints.m(d0Var.f71364b));
                } else {
                    aVar2 = null;
                }
                aVarArr[i11] = aVar2;
            }
        }
    }

    private static void C(n6.w wVar, f0 f0Var, Map<Integer, d0> map) {
        d0 d0Var;
        for (int i10 = 0; i10 < wVar.f62840a; i10++) {
            d0 d0Var2 = f0Var.f71391y.get(wVar.b(i10));
            if (d0Var2 != null && ((d0Var = map.get(Integer.valueOf(d0Var2.b()))) == null || (d0Var.f71364b.isEmpty() && !d0Var2.f71364b.isEmpty()))) {
                map.put(Integer.valueOf(d0Var2.b()), d0Var2);
            }
        }
    }

    protected static int D(v0 v0Var, @Nullable String str, boolean z10) {
        if (!TextUtils.isEmpty(str) && str.equals(v0Var.f19148c)) {
            return 4;
        }
        String T = T(str);
        String T2 = T(v0Var.f19148c);
        if (T2 != null && T != null) {
            if (!T2.startsWith(T) && !T.startsWith(T2)) {
                if (!s0.I0(T2, "-")[0].equals(s0.I0(T, "-")[0])) {
                    return 0;
                }
                return 2;
            }
            return 3;
        } else if (!z10 || T2 != null) {
            return 0;
        } else {
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int E(n6.u uVar, int i10, int i11, boolean z10) {
        int i12;
        int i13 = Integer.MAX_VALUE;
        if (i10 != Integer.MAX_VALUE && i11 != Integer.MAX_VALUE) {
            for (int i14 = 0; i14 < uVar.f62833a; i14++) {
                v0 c10 = uVar.c(i14);
                int i15 = c10.f19162q;
                if (i15 > 0 && (i12 = c10.f19163r) > 0) {
                    Point F = F(z10, i10, i11, i15, i12);
                    int i16 = c10.f19162q;
                    int i17 = c10.f19163r;
                    int i18 = i16 * i17;
                    if (i16 >= ((int) (F.x * 0.98f)) && i17 >= ((int) (F.y * 0.98f)) && i18 < i13) {
                        i13 = i18;
                    }
                }
            }
        }
        return i13;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x000c, code lost:
        if (r1 != r3) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Point F(boolean r3, int r4, int r5, int r6, int r7) {
        /*
            if (r3 == 0) goto Lf
            r3 = 0
            r0 = 1
            if (r6 <= r7) goto L8
            r1 = r0
            goto L9
        L8:
            r1 = r3
        L9:
            if (r4 <= r5) goto Lc
            r3 = r0
        Lc:
            if (r1 == r3) goto Lf
            goto L12
        Lf:
            r2 = r5
            r5 = r4
            r4 = r2
        L12:
            int r3 = r6 * r4
            int r0 = r7 * r5
            if (r3 < r0) goto L22
            android.graphics.Point r3 = new android.graphics.Point
            int r4 = b7.s0.l(r0, r6)
            r3.<init>(r5, r4)
            return r3
        L22:
            android.graphics.Point r5 = new android.graphics.Point
            int r3 = b7.s0.l(r3, r7)
            r5.<init>(r3, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: z6.m.F(boolean, int, int, int, int):android.graphics.Point");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int H(int i10, int i11) {
        if (i10 != 0 && i10 == i11) {
            return Integer.MAX_VALUE;
        }
        return Integer.bitCount(i10 & i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int I(@Nullable String str) {
        if (str == null) {
            return 0;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1851077871:
                if (str.equals("video/dolby-vision")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1662735862:
                if (str.equals(com.unity3d.services.core.device.MimeTypes.VIDEO_AV1)) {
                    c10 = 1;
                    break;
                }
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1599127257:
                if (str.equals(MimeTypes.VIDEO_VP9)) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 5;
            case 1:
                return 4;
            case 2:
                return 3;
            case 3:
                return 1;
            case 4:
                return 2;
            default:
                return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean J(v0 v0Var) {
        boolean z10;
        f fVar;
        f fVar2;
        synchronized (this.f71434d) {
            try {
                if (this.f71438h.M) {
                    if (!this.f71437g) {
                        if (v0Var.f19170y > 2) {
                            if (K(v0Var)) {
                                if (s0.f2506a >= 32 && (fVar2 = this.f71439i) != null && fVar2.e()) {
                                }
                            }
                            if (s0.f2506a < 32 || (fVar = this.f71439i) == null || !fVar.e() || !this.f71439i.c() || !this.f71439i.d() || !this.f71439i.a(this.f71440j, v0Var)) {
                                z10 = false;
                            }
                        }
                    }
                }
                z10 = true;
            } finally {
            }
        }
        return z10;
    }

    private static boolean K(v0 v0Var) {
        String str = v0Var.f19157l;
        if (str == null) {
            return false;
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals(MimeTypes.AUDIO_E_AC3_JOC)) {
                    c10 = 0;
                    break;
                }
                break;
            case 187078296:
                if (str.equals(MimeTypes.AUDIO_AC3)) {
                    c10 = 1;
                    break;
                }
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals(MimeTypes.AUDIO_E_AC3)) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
                return true;
            default:
                return false;
        }
    }

    protected static boolean L(int i10, boolean z10) {
        int f10 = o0.f(i10);
        if (f10 != 4 && (!z10 || f10 != 3)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List M(d dVar, boolean z10, int i10, n6.u uVar, int[] iArr) {
        return b.f(i10, uVar, dVar, iArr, z10, new h7.l() { // from class: z6.l
            @Override // h7.l
            public final boolean apply(Object obj) {
                boolean J;
                J = m.this.J((v0) obj);
                return J;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List N(d dVar, String str, int i10, n6.u uVar, int[] iArr) {
        return g.f(i10, uVar, dVar, iArr, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List O(d dVar, int[] iArr, int i10, n6.u uVar, int[] iArr2) {
        return i.i(i10, uVar, dVar, iArr2, iArr[i10]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int P(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            if (num2.intValue() != -1) {
                return -1;
            }
            return 0;
        } else if (num2.intValue() == -1) {
            return 1;
        } else {
            return num.intValue() - num2.intValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int Q(Integer num, Integer num2) {
        return 0;
    }

    private static void R(a0.a aVar, int[][][] iArr, p0[] p0VarArr, y[] yVarArr) {
        boolean z10;
        boolean z11 = false;
        int i10 = -1;
        int i11 = -1;
        for (int i12 = 0; i12 < aVar.d(); i12++) {
            int e10 = aVar.e(i12);
            y yVar = yVarArr[i12];
            if ((e10 == 1 || e10 == 2) && yVar != null && U(iArr[i12], aVar.f(i12), yVar)) {
                if (e10 == 1) {
                    if (i11 != -1) {
                        z10 = false;
                        break;
                    }
                    i11 = i12;
                } else if (i10 != -1) {
                    z10 = false;
                    break;
                } else {
                    i10 = i12;
                }
            }
        }
        z10 = true;
        if (i11 != -1 && i10 != -1) {
            z11 = true;
        }
        if (z10 & z11) {
            p0 p0Var = new p0(true);
            p0VarArr[i11] = p0Var;
            p0VarArr[i10] = p0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        boolean z10;
        f fVar;
        synchronized (this.f71434d) {
            try {
                if (this.f71438h.M && !this.f71437g && s0.f2506a >= 32 && (fVar = this.f71439i) != null && fVar.e()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            d();
        }
    }

    @Nullable
    protected static String T(@Nullable String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, C.LANGUAGE_UNDETERMINED)) {
            return null;
        }
        return str;
    }

    private static boolean U(int[][] iArr, n6.w wVar, y yVar) {
        if (yVar == null) {
            return false;
        }
        int c10 = wVar.c(yVar.getTrackGroup());
        for (int i10 = 0; i10 < yVar.length(); i10++) {
            if (o0.j(iArr[c10][yVar.getIndexInTrackGroup(i10)]) != 32) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    private <T extends h<T>> Pair<y.a, Integer> Z(int i10, a0.a aVar, int[][][] iArr, h.a<T> aVar2, Comparator<List<T>> comparator) {
        int i11;
        RandomAccess randomAccess;
        a0.a aVar3 = aVar;
        ArrayList arrayList = new ArrayList();
        int d10 = aVar.d();
        int i12 = 0;
        while (i12 < d10) {
            if (i10 == aVar3.e(i12)) {
                n6.w f10 = aVar3.f(i12);
                for (int i13 = 0; i13 < f10.f62840a; i13++) {
                    n6.u b10 = f10.b(i13);
                    List<T> a10 = aVar2.a(i12, b10, iArr[i12][i13]);
                    boolean[] zArr = new boolean[b10.f62833a];
                    int i14 = 0;
                    while (i14 < b10.f62833a) {
                        T t10 = a10.get(i14);
                        int a11 = t10.a();
                        if (zArr[i14] || a11 == 0) {
                            i11 = d10;
                        } else {
                            if (a11 == 1) {
                                randomAccess = ImmutableList.B(t10);
                                i11 = d10;
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(t10);
                                int i15 = i14 + 1;
                                while (i15 < b10.f62833a) {
                                    T t11 = a10.get(i15);
                                    int i16 = d10;
                                    if (t11.a() == 2 && t10.b(t11)) {
                                        arrayList2.add(t11);
                                        zArr[i15] = true;
                                    }
                                    i15++;
                                    d10 = i16;
                                }
                                i11 = d10;
                                randomAccess = arrayList2;
                            }
                            arrayList.add(randomAccess);
                        }
                        i14++;
                        d10 = i11;
                    }
                }
            }
            i12++;
            aVar3 = aVar;
            d10 = d10;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i17 = 0; i17 < list.size(); i17++) {
            iArr2[i17] = ((h) list.get(i17)).f71482c;
        }
        h hVar = (h) list.get(0);
        return Pair.create(new y.a(hVar.f71481b, iArr2), Integer.valueOf(hVar.f71480a));
    }

    private void b0(d dVar) {
        boolean equals;
        b7.a.e(dVar);
        synchronized (this.f71434d) {
            equals = this.f71438h.equals(dVar);
            this.f71438h = dVar;
        }
        if (!equals) {
            if (dVar.M && this.f71435e == null) {
                b7.q.i("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
            }
            d();
        }
    }

    @Override // z6.h0
    /* renamed from: G */
    public d b() {
        d dVar;
        synchronized (this.f71434d) {
            dVar = this.f71438h;
        }
        return dVar;
    }

    protected y.a[] V(a0.a aVar, int[][][] iArr, int[] iArr2, d dVar) throws ExoPlaybackException {
        String str;
        int d10 = aVar.d();
        y.a[] aVarArr = new y.a[d10];
        Pair<y.a, Integer> a02 = a0(aVar, iArr, iArr2, dVar);
        if (a02 != null) {
            aVarArr[((Integer) a02.second).intValue()] = (y.a) a02.first;
        }
        Pair<y.a, Integer> W = W(aVar, iArr, iArr2, dVar);
        if (W != null) {
            aVarArr[((Integer) W.second).intValue()] = (y.a) W.first;
        }
        if (W == null) {
            str = null;
        } else {
            Object obj = W.first;
            str = ((y.a) obj).f71498a.c(((y.a) obj).f71499b[0]).f19148c;
        }
        Pair<y.a, Integer> Y = Y(aVar, iArr, dVar, str);
        if (Y != null) {
            aVarArr[((Integer) Y.second).intValue()] = (y.a) Y.first;
        }
        for (int i10 = 0; i10 < d10; i10++) {
            int e10 = aVar.e(i10);
            if (e10 != 2 && e10 != 1 && e10 != 3) {
                aVarArr[i10] = X(e10, aVar.f(i10), iArr[i10], dVar);
            }
        }
        return aVarArr;
    }

    @Nullable
    protected Pair<y.a, Integer> W(a0.a aVar, int[][][] iArr, int[] iArr2, final d dVar) throws ExoPlaybackException {
        final boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (i10 < aVar.d()) {
                if (2 == aVar.e(i10) && aVar.f(i10).f62840a > 0) {
                    z10 = true;
                    break;
                }
                i10++;
            } else {
                break;
            }
        }
        return Z(1, aVar, iArr, new h.a() { // from class: z6.h
            @Override // z6.m.h.a
            public final List a(int i11, n6.u uVar, int[] iArr3) {
                List M;
                M = m.this.M(dVar, z10, i11, uVar, iArr3);
                return M;
            }
        }, new Comparator() { // from class: z6.i
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return m.b.c((List) obj, (List) obj2);
            }
        });
    }

    @Nullable
    protected y.a X(int i10, n6.w wVar, int[][] iArr, d dVar) throws ExoPlaybackException {
        n6.u uVar = null;
        c cVar = null;
        int i11 = 0;
        for (int i12 = 0; i12 < wVar.f62840a; i12++) {
            n6.u b10 = wVar.b(i12);
            int[] iArr2 = iArr[i12];
            for (int i13 = 0; i13 < b10.f62833a; i13++) {
                if (L(iArr2[i13], dVar.N)) {
                    c cVar2 = new c(b10.c(i13), iArr2[i13]);
                    if (cVar == null || cVar2.compareTo(cVar) > 0) {
                        uVar = b10;
                        i11 = i13;
                        cVar = cVar2;
                    }
                }
            }
        }
        if (uVar == null) {
            return null;
        }
        return new y.a(uVar, i11);
    }

    @Nullable
    protected Pair<y.a, Integer> Y(a0.a aVar, int[][][] iArr, final d dVar, @Nullable final String str) throws ExoPlaybackException {
        return Z(3, aVar, iArr, new h.a() { // from class: z6.j
            @Override // z6.m.h.a
            public final List a(int i10, n6.u uVar, int[] iArr2) {
                List N;
                N = m.N(m.d.this, str, i10, uVar, iArr2);
                return N;
            }
        }, new Comparator() { // from class: z6.k
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return m.g.c((List) obj, (List) obj2);
            }
        });
    }

    @Nullable
    protected Pair<y.a, Integer> a0(a0.a aVar, int[][][] iArr, final int[] iArr2, final d dVar) throws ExoPlaybackException {
        return Z(2, aVar, iArr, new h.a() { // from class: z6.f
            @Override // z6.m.h.a
            public final List a(int i10, n6.u uVar, int[] iArr3) {
                List O;
                O = m.O(m.d.this, iArr2, i10, uVar, iArr3);
                return O;
            }
        }, new Comparator() { // from class: z6.g
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return m.i.h((List) obj, (List) obj2);
            }
        });
    }

    @Override // z6.h0
    public boolean e() {
        return true;
    }

    @Override // z6.h0
    public void g() {
        f fVar;
        synchronized (this.f71434d) {
            try {
                if (s0.f2506a >= 32 && (fVar = this.f71439i) != null) {
                    fVar.f();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        super.g();
    }

    @Override // z6.h0
    public void i(com.google.android.exoplayer2.audio.a aVar) {
        boolean equals;
        synchronized (this.f71434d) {
            equals = this.f71440j.equals(aVar);
            this.f71440j = aVar;
        }
        if (!equals) {
            S();
        }
    }

    @Override // z6.h0
    public void j(f0 f0Var) {
        if (f0Var instanceof d) {
            b0((d) f0Var);
        }
        b0(new d.a().g0(f0Var).A());
    }

    @Override // z6.a0
    protected final Pair<p0[], y[]> n(a0.a aVar, int[][][] iArr, int[] iArr2, o.b bVar, u1 u1Var) throws ExoPlaybackException {
        d dVar;
        p0 p0Var;
        f fVar;
        synchronized (this.f71434d) {
            try {
                dVar = this.f71438h;
                if (dVar.M && s0.f2506a >= 32 && (fVar = this.f71439i) != null) {
                    fVar.b(this, (Looper) b7.a.i(Looper.myLooper()));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        int d10 = aVar.d();
        y.a[] V = V(aVar, iArr, iArr2, dVar);
        B(aVar, dVar, V);
        A(aVar, dVar, V);
        for (int i10 = 0; i10 < d10; i10++) {
            int e10 = aVar.e(i10);
            if (dVar.m(i10) || dVar.f71392z.contains(Integer.valueOf(e10))) {
                V[i10] = null;
            }
        }
        y[] a10 = this.f71436f.a(V, a(), bVar, u1Var);
        p0[] p0VarArr = new p0[d10];
        for (int i11 = 0; i11 < d10; i11++) {
            int e11 = aVar.e(i11);
            if (!dVar.m(i11) && !dVar.f71392z.contains(Integer.valueOf(e11)) && (aVar.e(i11) == -2 || a10[i11] != null)) {
                p0Var = p0.f63121b;
            } else {
                p0Var = null;
            }
            p0VarArr[i11] = p0Var;
        }
        if (dVar.O) {
            R(aVar, iArr, p0VarArr, a10);
        }
        return Pair.create(p0VarArr, a10);
    }

    public m(Context context, y.b bVar) {
        this(context, d.k(context), bVar);
    }

    public m(Context context, f0 f0Var, y.b bVar) {
        this(f0Var, bVar, context);
    }

    private m(f0 f0Var, y.b bVar, @Nullable Context context) {
        this.f71434d = new Object();
        this.f71435e = context != null ? context.getApplicationContext() : null;
        this.f71436f = bVar;
        if (f0Var instanceof d) {
            this.f71438h = (d) f0Var;
        } else {
            this.f71438h = (context == null ? d.S : d.k(context)).a().g0(f0Var).A();
        }
        this.f71440j = com.google.android.exoplayer2.audio.a.f17292g;
        boolean z10 = context != null && s0.r0(context);
        this.f71437g = z10;
        if (!z10 && context != null && s0.f2506a >= 32) {
            this.f71439i = f.g(context);
        }
        if (this.f71438h.M && context == null) {
            b7.q.i("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }
}
