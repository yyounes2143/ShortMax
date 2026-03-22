package vn;

import android.content.Context;
import android.graphics.Point;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.accessibility.CaptioningManager;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import cn.m0;
import com.google.android.gms.internal.ads.j0;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import gn.g0;
import io.bidmachine.media3.exoplayer.ExoPlaybackException;
import io.bidmachine.media3.exoplayer.h2;
import io.bidmachine.media3.exoplayer.i2;
import io.bidmachine.media3.exoplayer.source.r;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;
import sn.x;
import vn.a;
import vn.n;
import vn.q;
import vn.s;
import zm.a0;
import zm.b0;
import zm.c0;
import zm.d0;
/* compiled from: DefaultTrackSelector.java */
/* loaded from: classes8.dex */
public class n extends s implements i2.a {

    /* renamed from: j  reason: collision with root package name */
    private static final com.google.common.collect.t<Integer> f69071j = com.google.common.collect.t.d(new Comparator() { // from class: vn.l
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int V;
            V = n.V((Integer) obj, (Integer) obj2);
            return V;
        }
    });

    /* renamed from: d  reason: collision with root package name */
    private final Object f69072d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final Context f69073e;

    /* renamed from: f  reason: collision with root package name */
    private final q.b f69074f;
    @GuardedBy("lock")

    /* renamed from: g  reason: collision with root package name */
    private e f69075g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private g f69076h;

    /* renamed from: i  reason: collision with root package name */
    private zm.c f69077i;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes8.dex */
    public static final class b extends i<b> implements Comparable<b> {

        /* renamed from: e  reason: collision with root package name */
        private final int f69078e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f69079f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private final String f69080g;

        /* renamed from: h  reason: collision with root package name */
        private final e f69081h;

        /* renamed from: i  reason: collision with root package name */
        private final boolean f69082i;

        /* renamed from: j  reason: collision with root package name */
        private final int f69083j;

        /* renamed from: k  reason: collision with root package name */
        private final int f69084k;

        /* renamed from: l  reason: collision with root package name */
        private final int f69085l;

        /* renamed from: m  reason: collision with root package name */
        private final boolean f69086m;

        /* renamed from: n  reason: collision with root package name */
        private final boolean f69087n;

        /* renamed from: o  reason: collision with root package name */
        private final int f69088o;

        /* renamed from: p  reason: collision with root package name */
        private final int f69089p;

        /* renamed from: q  reason: collision with root package name */
        private final boolean f69090q;

        /* renamed from: r  reason: collision with root package name */
        private final int f69091r;

        /* renamed from: s  reason: collision with root package name */
        private final int f69092s;

        /* renamed from: t  reason: collision with root package name */
        private final int f69093t;

        /* renamed from: u  reason: collision with root package name */
        private final int f69094u;

        /* renamed from: v  reason: collision with root package name */
        private final boolean f69095v;

        /* renamed from: w  reason: collision with root package name */
        private final boolean f69096w;

        /* renamed from: x  reason: collision with root package name */
        private final boolean f69097x;

        public b(int i10, b0 b0Var, int i11, e eVar, int i12, boolean z10, h7.l<io.bidmachine.media3.common.a> lVar, int i13) {
            super(i10, b0Var, i11);
            int i14;
            boolean z11;
            int i15;
            int i16;
            boolean z12;
            boolean z13;
            boolean z14;
            int i17;
            boolean z15;
            this.f69081h = eVar;
            if (eVar.f69112y0) {
                i14 = 24;
            } else {
                i14 = 16;
            }
            if (eVar.f69108u0 && (i13 & i14) != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.f69086m = z11;
            this.f69080g = n.a0(this.f69138d.f55163d);
            this.f69082i = i2.x(i12, false);
            int i18 = 0;
            while (true) {
                i15 = Integer.MAX_VALUE;
                if (i18 < eVar.f71868p.size()) {
                    i16 = n.H(this.f69138d, eVar.f71868p.get(i18), false);
                    if (i16 > 0) {
                        break;
                    }
                    i18++;
                } else {
                    i16 = 0;
                    i18 = Integer.MAX_VALUE;
                    break;
                }
            }
            this.f69084k = i18;
            this.f69083j = i16;
            this.f69085l = n.L(this.f69138d.f55165f, eVar.f71869q);
            io.bidmachine.media3.common.a aVar = this.f69138d;
            int i19 = aVar.f55165f;
            if (i19 != 0 && (i19 & 1) == 0) {
                z12 = false;
            } else {
                z12 = true;
            }
            this.f69087n = z12;
            if ((aVar.f55164e & 1) != 0) {
                z13 = true;
            } else {
                z13 = false;
            }
            this.f69090q = z13;
            this.f69097x = n.P(aVar);
            io.bidmachine.media3.common.a aVar2 = this.f69138d;
            int i20 = aVar2.E;
            this.f69091r = i20;
            this.f69092s = aVar2.F;
            int i21 = aVar2.f55169j;
            this.f69093t = i21;
            if ((i21 == -1 || i21 <= eVar.f71871s) && ((i20 == -1 || i20 <= eVar.f71870r) && lVar.apply(aVar2))) {
                z14 = true;
            } else {
                z14 = false;
            }
            this.f69079f = z14;
            String[] p02 = m0.p0();
            int i22 = 0;
            while (true) {
                if (i22 < p02.length) {
                    i17 = n.H(this.f69138d, p02[i22], false);
                    if (i17 > 0) {
                        break;
                    }
                    i22++;
                } else {
                    i17 = 0;
                    i22 = Integer.MAX_VALUE;
                    break;
                }
            }
            this.f69088o = i22;
            this.f69089p = i17;
            int i23 = 0;
            while (true) {
                if (i23 < eVar.f71872t.size()) {
                    String str = this.f69138d.f55174o;
                    if (str != null && str.equals(eVar.f71872t.get(i23))) {
                        i15 = i23;
                        break;
                    }
                    i23++;
                } else {
                    break;
                }
            }
            this.f69094u = i15;
            if (i2.g(i12) == 128) {
                z15 = true;
            } else {
                z15 = false;
            }
            this.f69095v = z15;
            this.f69096w = i2.d(i12) == 64;
            this.f69078e = g(i12, z10, i14);
        }

        public static int c(List<b> list, List<b> list2) {
            return ((b) Collections.max(list)).compareTo((b) Collections.max(list2));
        }

        public static ImmutableList<b> f(int i10, b0 b0Var, e eVar, int[] iArr, boolean z10, h7.l<io.bidmachine.media3.common.a> lVar, int i11) {
            ImmutableList.a r10 = ImmutableList.r();
            for (int i12 = 0; i12 < b0Var.f71809a; i12++) {
                r10.a(new b(i10, b0Var, i12, eVar, iArr[i12], z10, lVar, i11));
            }
            return r10.k();
        }

        private int g(int i10, boolean z10, int i11) {
            if (!i2.x(i10, this.f69081h.A0)) {
                return 0;
            }
            if (!this.f69079f && !this.f69081h.f69107t0) {
                return 0;
            }
            e eVar = this.f69081h;
            if (eVar.f71873u.f71883a == 2 && !n.b0(eVar, i10, this.f69138d)) {
                return 0;
            }
            if (i2.x(i10, false) && this.f69079f && this.f69138d.f55169j != -1) {
                e eVar2 = this.f69081h;
                if (!eVar2.C && !eVar2.B && ((eVar2.C0 || !z10) && eVar2.f71873u.f71883a != 2 && (i10 & i11) != 0)) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // vn.n.i
        public int a() {
            return this.f69078e;
        }

        @Override // java.lang.Comparable
        /* renamed from: e */
        public int compareTo(b bVar) {
            com.google.common.collect.t g10;
            if (this.f69079f && this.f69082i) {
                g10 = n.f69071j;
            } else {
                g10 = n.f69071j.g();
            }
            com.google.common.collect.g f10 = com.google.common.collect.g.j().g(this.f69082i, bVar.f69082i).f(Integer.valueOf(this.f69084k), Integer.valueOf(bVar.f69084k), com.google.common.collect.t.e().g()).d(this.f69083j, bVar.f69083j).d(this.f69085l, bVar.f69085l).g(this.f69090q, bVar.f69090q).g(this.f69087n, bVar.f69087n).f(Integer.valueOf(this.f69088o), Integer.valueOf(bVar.f69088o), com.google.common.collect.t.e().g()).d(this.f69089p, bVar.f69089p).g(this.f69079f, bVar.f69079f).f(Integer.valueOf(this.f69094u), Integer.valueOf(bVar.f69094u), com.google.common.collect.t.e().g());
            if (this.f69081h.B) {
                f10 = f10.f(Integer.valueOf(this.f69093t), Integer.valueOf(bVar.f69093t), n.f69071j.g());
            }
            com.google.common.collect.g f11 = f10.g(this.f69095v, bVar.f69095v).g(this.f69096w, bVar.f69096w).g(this.f69097x, bVar.f69097x).f(Integer.valueOf(this.f69091r), Integer.valueOf(bVar.f69091r), g10).f(Integer.valueOf(this.f69092s), Integer.valueOf(bVar.f69092s), g10);
            if (Objects.equals(this.f69080g, bVar.f69080g)) {
                f11 = f11.f(Integer.valueOf(this.f69093t), Integer.valueOf(bVar.f69093t), g10);
            }
            return f11.i();
        }

        @Override // vn.n.i
        /* renamed from: h */
        public boolean b(b bVar) {
            int i10;
            String str;
            int i11;
            if ((this.f69081h.f69110w0 || ((i11 = this.f69138d.E) != -1 && i11 == bVar.f69138d.E)) && (this.f69086m || ((str = this.f69138d.f55174o) != null && TextUtils.equals(str, bVar.f69138d.f55174o)))) {
                e eVar = this.f69081h;
                if ((eVar.f69109v0 || ((i10 = this.f69138d.F) != -1 && i10 == bVar.f69138d.F)) && (eVar.f69111x0 || (this.f69095v == bVar.f69095v && this.f69096w == bVar.f69096w))) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes8.dex */
    public static final class c extends i<c> implements Comparable<c> {

        /* renamed from: e  reason: collision with root package name */
        private final int f69098e;

        /* renamed from: f  reason: collision with root package name */
        private final int f69099f;

        public c(int i10, b0 b0Var, int i11, e eVar, int i12) {
            super(i10, b0Var, i11);
            this.f69098e = i2.x(i12, eVar.A0) ? 1 : 0;
            this.f69099f = this.f69138d.e();
        }

        public static int c(List<c> list, List<c> list2) {
            return list.get(0).compareTo(list2.get(0));
        }

        public static ImmutableList<c> f(int i10, b0 b0Var, e eVar, int[] iArr) {
            ImmutableList.a r10 = ImmutableList.r();
            for (int i11 = 0; i11 < b0Var.f71809a; i11++) {
                r10.a(new c(i10, b0Var, i11, eVar, iArr[i11]));
            }
            return r10.k();
        }

        @Override // vn.n.i
        public int a() {
            return this.f69098e;
        }

        @Override // java.lang.Comparable
        /* renamed from: e */
        public int compareTo(c cVar) {
            return Integer.compare(this.f69099f, cVar.f69099f);
        }

        @Override // vn.n.i
        /* renamed from: g */
        public boolean b(c cVar) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes8.dex */
    public static final class d implements Comparable<d> {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f69100a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f69101b;

        public d(io.bidmachine.media3.common.a aVar, int i10) {
            this.f69100a = (aVar.f55164e & 1) != 0;
            this.f69101b = i2.x(i10, false);
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(d dVar) {
            return com.google.common.collect.g.j().g(this.f69101b, dVar.f69101b).g(this.f69100a, dVar.f69100a).i();
        }
    }

    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes8.dex */
    public static final class e extends d0 {
        public static final e G0;
        @Deprecated
        public static final e H0;
        private static final String I0;
        private static final String J0;
        private static final String K0;
        private static final String L0;
        private static final String M0;
        private static final String N0;
        private static final String O0;
        private static final String P0;
        private static final String Q0;
        private static final String R0;
        private static final String S0;
        private static final String T0;
        private static final String U0;
        private static final String V0;
        private static final String W0;
        private static final String X0;
        private static final String Y0;
        private static final String Z0;

        /* renamed from: a1  reason: collision with root package name */
        private static final String f69102a1;
        public final boolean A0;
        public final boolean B0;
        public final boolean C0;
        public final boolean D0;
        private final SparseArray<Map<x, f>> E0;
        private final SparseBooleanArray F0;

        /* renamed from: p0  reason: collision with root package name */
        public final boolean f69103p0;

        /* renamed from: q0  reason: collision with root package name */
        public final boolean f69104q0;

        /* renamed from: r0  reason: collision with root package name */
        public final boolean f69105r0;

        /* renamed from: s0  reason: collision with root package name */
        public final boolean f69106s0;

        /* renamed from: t0  reason: collision with root package name */
        public final boolean f69107t0;

        /* renamed from: u0  reason: collision with root package name */
        public final boolean f69108u0;

        /* renamed from: v0  reason: collision with root package name */
        public final boolean f69109v0;

        /* renamed from: w0  reason: collision with root package name */
        public final boolean f69110w0;

        /* renamed from: x0  reason: collision with root package name */
        public final boolean f69111x0;

        /* renamed from: y0  reason: collision with root package name */
        public final boolean f69112y0;

        /* renamed from: z0  reason: collision with root package name */
        public final boolean f69113z0;

        /* compiled from: DefaultTrackSelector.java */
        /* loaded from: classes8.dex */
        public static final class a extends d0.c {
            private boolean F;
            private boolean G;
            private boolean H;
            private boolean I;
            private boolean J;
            private boolean K;
            private boolean L;
            private boolean M;
            private boolean N;
            private boolean O;
            private boolean P;
            private boolean Q;
            private boolean R;
            private boolean S;
            private boolean T;
            private final SparseArray<Map<x, f>> U;
            private final SparseBooleanArray V;

            private static SparseArray<Map<x, f>> j0(SparseArray<Map<x, f>> sparseArray) {
                SparseArray<Map<x, f>> sparseArray2 = new SparseArray<>();
                for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                    sparseArray2.put(sparseArray.keyAt(i10), new HashMap(sparseArray.valueAt(i10)));
                }
                return sparseArray2;
            }

            private void k0() {
                this.F = true;
                this.G = false;
                this.H = true;
                this.I = false;
                this.J = true;
                this.K = false;
                this.L = false;
                this.M = false;
                this.N = false;
                this.O = true;
                this.P = true;
                this.Q = true;
                this.R = false;
                this.S = true;
                this.T = false;
            }

            @Override // zm.d0.c
            /* renamed from: h0 */
            public e F() {
                return new e(this);
            }

            @Override // zm.d0.c
            /* renamed from: i0 */
            public a G(int i10) {
                super.G(i10);
                return this;
            }

            protected a l0(d0 d0Var) {
                super.J(d0Var);
                return this;
            }

            @Override // zm.d0.c
            /* renamed from: m0 */
            public a K(int i10) {
                super.K(i10);
                return this;
            }

            @Override // zm.d0.c
            /* renamed from: n0 */
            public a L(c0 c0Var) {
                super.L(c0Var);
                return this;
            }

            @Override // zm.d0.c
            /* renamed from: o0 */
            public a M(@Nullable String str) {
                super.M(str);
                return this;
            }

            @Override // zm.d0.c
            /* renamed from: p0 */
            public a N(String... strArr) {
                super.N(strArr);
                return this;
            }

            @Override // zm.d0.c
            /* renamed from: q0 */
            public a O(int i10) {
                super.O(i10);
                return this;
            }

            @Override // zm.d0.c
            /* renamed from: r0 */
            public a P(int i10, boolean z10) {
                super.P(i10, z10);
                return this;
            }

            public a() {
                this.U = new SparseArray<>();
                this.V = new SparseBooleanArray();
                k0();
            }

            private a(e eVar) {
                super(eVar);
                this.F = eVar.f69103p0;
                this.G = eVar.f69104q0;
                this.H = eVar.f69105r0;
                this.I = eVar.f69106s0;
                this.J = eVar.f69107t0;
                this.K = eVar.f69108u0;
                this.L = eVar.f69109v0;
                this.M = eVar.f69110w0;
                this.N = eVar.f69111x0;
                this.O = eVar.f69112y0;
                this.P = eVar.f69113z0;
                this.Q = eVar.A0;
                this.R = eVar.B0;
                this.S = eVar.C0;
                this.T = eVar.D0;
                this.U = j0(eVar.E0);
                this.V = eVar.F0.clone();
            }
        }

        static {
            e F = new a().F();
            G0 = F;
            H0 = F;
            I0 = m0.C0(1000);
            J0 = m0.C0(1001);
            K0 = m0.C0(1002);
            L0 = m0.C0(1003);
            M0 = m0.C0(1004);
            N0 = m0.C0(1005);
            O0 = m0.C0(1006);
            P0 = m0.C0(1007);
            Q0 = m0.C0(1008);
            R0 = m0.C0(1009);
            S0 = m0.C0(1010);
            T0 = m0.C0(1011);
            U0 = m0.C0(1012);
            V0 = m0.C0(1013);
            W0 = m0.C0(1014);
            X0 = m0.C0(1015);
            Y0 = m0.C0(1016);
            Z0 = m0.C0(1017);
            f69102a1 = m0.C0(1018);
        }

        private static boolean d(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
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

        private static boolean e(SparseArray<Map<x, f>> sparseArray, SparseArray<Map<x, f>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i10));
                if (indexOfKey < 0 || !f(sparseArray.valueAt(i10), sparseArray2.valueAt(indexOfKey))) {
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
        private static boolean f(java.util.Map<sn.x, vn.n.f> r4, java.util.Map<sn.x, vn.n.f> r5) {
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
                sn.x r1 = (sn.x) r1
                boolean r3 = r5.containsKey(r1)
                if (r3 == 0) goto L3a
                java.lang.Object r0 = r0.getValue()
                java.lang.Object r1 = r5.get(r1)
                boolean r0 = java.util.Objects.equals(r0, r1)
                if (r0 != 0) goto L14
            L3a:
                return r2
            L3b:
                r4 = 1
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: vn.n.e.f(java.util.Map, java.util.Map):boolean");
        }

        @Override // zm.d0
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            if (super.equals(eVar) && this.f69103p0 == eVar.f69103p0 && this.f69104q0 == eVar.f69104q0 && this.f69105r0 == eVar.f69105r0 && this.f69106s0 == eVar.f69106s0 && this.f69107t0 == eVar.f69107t0 && this.f69108u0 == eVar.f69108u0 && this.f69109v0 == eVar.f69109v0 && this.f69110w0 == eVar.f69110w0 && this.f69111x0 == eVar.f69111x0 && this.f69112y0 == eVar.f69112y0 && this.f69113z0 == eVar.f69113z0 && this.A0 == eVar.A0 && this.B0 == eVar.B0 && this.C0 == eVar.C0 && this.D0 == eVar.D0 && d(this.F0, eVar.F0) && e(this.E0, eVar.E0)) {
                return true;
            }
            return false;
        }

        @Override // zm.d0
        /* renamed from: g */
        public a a() {
            return new a();
        }

        public boolean h(int i10) {
            return this.F0.get(i10);
        }

        @Override // zm.d0
        public int hashCode() {
            return ((((((((((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.f69103p0 ? 1 : 0)) * 31) + (this.f69104q0 ? 1 : 0)) * 31) + (this.f69105r0 ? 1 : 0)) * 31) + (this.f69106s0 ? 1 : 0)) * 31) + (this.f69107t0 ? 1 : 0)) * 31) + (this.f69108u0 ? 1 : 0)) * 31) + (this.f69109v0 ? 1 : 0)) * 31) + (this.f69110w0 ? 1 : 0)) * 31) + (this.f69111x0 ? 1 : 0)) * 31) + (this.f69112y0 ? 1 : 0)) * 31) + (this.f69113z0 ? 1 : 0)) * 31) + (this.A0 ? 1 : 0)) * 31) + (this.B0 ? 1 : 0)) * 31) + (this.C0 ? 1 : 0)) * 31) + (this.D0 ? 1 : 0);
        }

        @Nullable
        @Deprecated
        public f i(int i10, x xVar) {
            Map<x, f> map = this.E0.get(i10);
            if (map != null) {
                return map.get(xVar);
            }
            return null;
        }

        @Deprecated
        public boolean j(int i10, x xVar) {
            Map<x, f> map = this.E0.get(i10);
            if (map != null && map.containsKey(xVar)) {
                return true;
            }
            return false;
        }

        private e(a aVar) {
            super(aVar);
            this.f69103p0 = aVar.F;
            this.f69104q0 = aVar.G;
            this.f69105r0 = aVar.H;
            this.f69106s0 = aVar.I;
            this.f69107t0 = aVar.J;
            this.f69108u0 = aVar.K;
            this.f69109v0 = aVar.L;
            this.f69110w0 = aVar.M;
            this.f69111x0 = aVar.N;
            this.f69112y0 = aVar.O;
            this.f69113z0 = aVar.P;
            this.A0 = aVar.Q;
            this.B0 = aVar.R;
            this.C0 = aVar.S;
            this.D0 = aVar.T;
            this.E0 = aVar.U;
            this.F0 = aVar.V;
        }
    }

    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes8.dex */
    public static final class f {

        /* renamed from: d  reason: collision with root package name */
        private static final String f69114d = m0.C0(0);

        /* renamed from: e  reason: collision with root package name */
        private static final String f69115e = m0.C0(1);

        /* renamed from: f  reason: collision with root package name */
        private static final String f69116f = m0.C0(2);

        /* renamed from: a  reason: collision with root package name */
        public final int f69117a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f69118b;

        /* renamed from: c  reason: collision with root package name */
        public final int f69119c;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || f.class != obj.getClass()) {
                return false;
            }
            f fVar = (f) obj;
            if (this.f69117a == fVar.f69117a && Arrays.equals(this.f69118b, fVar.f69118b) && this.f69119c == fVar.f69119c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f69117a * 31) + Arrays.hashCode(this.f69118b)) * 31) + this.f69119c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultTrackSelector.java */
    @RequiresApi(32)
    /* loaded from: classes8.dex */
    public static class g {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Spatializer f69120a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f69121b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final Handler f69122c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final Spatializer$OnSpatializerStateChangedListener f69123d;

        /* compiled from: DefaultTrackSelector.java */
        /* loaded from: classes8.dex */
        class a implements Spatializer$OnSpatializerStateChangedListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ n f69124a;

            a(n nVar) {
                this.f69124a = nVar;
            }

            public void onSpatializerAvailableChanged(Spatializer spatializer, boolean z10) {
                this.f69124a.Y();
            }

            public void onSpatializerEnabledChanged(Spatializer spatializer, boolean z10) {
                this.f69124a.Y();
            }
        }

        public g(@Nullable Context context, n nVar) {
            AudioManager c10;
            Spatializer spatializer;
            int immersiveAudioLevel;
            if (context == null) {
                c10 = null;
            } else {
                c10 = an.d.c(context);
            }
            if (c10 != null && !m0.K0((Context) cn.a.e(context))) {
                spatializer = c10.getSpatializer();
                this.f69120a = spatializer;
                immersiveAudioLevel = spatializer.getImmersiveAudioLevel();
                this.f69121b = immersiveAudioLevel != 0;
                a aVar = new a(nVar);
                this.f69123d = aVar;
                Handler handler = new Handler((Looper) cn.a.i(Looper.myLooper()));
                this.f69122c = handler;
                Objects.requireNonNull(handler);
                spatializer.addOnSpatializerStateChangedListener(new androidx.emoji2.text.a(handler), aVar);
                return;
            }
            this.f69120a = null;
            this.f69121b = false;
            this.f69122c = null;
            this.f69123d = null;
        }

        public boolean a(zm.c cVar, io.bidmachine.media3.common.a aVar) {
            int i10;
            boolean canBeSpatialized;
            if (Objects.equals(aVar.f55174o, MimeTypes.AUDIO_E_AC3_JOC)) {
                i10 = aVar.E;
                if (i10 == 16) {
                    i10 = 12;
                }
            } else if (Objects.equals(aVar.f55174o, "audio/iamf")) {
                i10 = aVar.E;
                if (i10 == -1) {
                    i10 = 6;
                }
            } else if (Objects.equals(aVar.f55174o, "audio/ac4")) {
                i10 = aVar.E;
                if (i10 == 18 || i10 == 21) {
                    i10 = 24;
                }
            } else {
                i10 = aVar.E;
            }
            int M = m0.M(i10);
            if (M == 0) {
                return false;
            }
            AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(M);
            int i11 = aVar.F;
            if (i11 != -1) {
                channelMask.setSampleRate(i11);
            }
            canBeSpatialized = j0.a(cn.a.e(this.f69120a)).canBeSpatialized(cVar.a().f71826a, channelMask.build());
            return canBeSpatialized;
        }

        public boolean b() {
            boolean isAvailable;
            isAvailable = j0.a(cn.a.e(this.f69120a)).isAvailable();
            return isAvailable;
        }

        public boolean c() {
            boolean isEnabled;
            isEnabled = j0.a(cn.a.e(this.f69120a)).isEnabled();
            return isEnabled;
        }

        public boolean d() {
            return this.f69121b;
        }

        public void e() {
            Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener;
            Spatializer spatializer = this.f69120a;
            if (spatializer != null && (spatializer$OnSpatializerStateChangedListener = this.f69123d) != null && this.f69122c != null) {
                spatializer.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
                this.f69122c.removeCallbacksAndMessages(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes8.dex */
    public static final class h extends i<h> implements Comparable<h> {

        /* renamed from: e  reason: collision with root package name */
        private final int f69126e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f69127f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f69128g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f69129h;

        /* renamed from: i  reason: collision with root package name */
        private final int f69130i;

        /* renamed from: j  reason: collision with root package name */
        private final int f69131j;

        /* renamed from: k  reason: collision with root package name */
        private final int f69132k;

        /* renamed from: l  reason: collision with root package name */
        private final int f69133l;

        /* renamed from: m  reason: collision with root package name */
        private final boolean f69134m;

        public h(int i10, b0 b0Var, int i11, e eVar, int i12, @Nullable String str, @Nullable String str2) {
            super(i10, b0Var, i11);
            boolean z10;
            boolean z11;
            ImmutableList<String> immutableList;
            int i13;
            int i14;
            boolean z12;
            boolean z13;
            boolean z14;
            int i15 = 0;
            this.f69127f = i2.x(i12, false);
            int i16 = this.f69138d.f55164e & (~eVar.f71877y);
            if ((i16 & 1) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f69128g = z10;
            if ((i16 & 2) != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.f69129h = z11;
            if (str2 != null) {
                immutableList = ImmutableList.B(str2);
            } else if (eVar.f71874v.isEmpty()) {
                immutableList = ImmutableList.B("");
            } else {
                immutableList = eVar.f71874v;
            }
            int i17 = 0;
            while (true) {
                if (i17 < immutableList.size()) {
                    i13 = n.H(this.f69138d, immutableList.get(i17), eVar.f71878z);
                    if (i13 > 0) {
                        break;
                    }
                    i17++;
                } else {
                    i17 = Integer.MAX_VALUE;
                    i13 = 0;
                    break;
                }
            }
            this.f69130i = i17;
            this.f69131j = i13;
            if (str2 != null) {
                i14 = 1088;
            } else {
                i14 = eVar.f71875w;
            }
            int L = n.L(this.f69138d.f55165f, i14);
            this.f69132k = L;
            if ((1088 & this.f69138d.f55165f) != 0) {
                z12 = true;
            } else {
                z12 = false;
            }
            this.f69134m = z12;
            if (n.a0(str) == null) {
                z13 = true;
            } else {
                z13 = false;
            }
            int H = n.H(this.f69138d, str, z13);
            this.f69133l = H;
            if (i13 <= 0 && ((!eVar.f71874v.isEmpty() || L <= 0) && !this.f69128g && (!this.f69129h || H <= 0))) {
                z14 = false;
            } else {
                z14 = true;
            }
            if (i2.x(i12, eVar.A0) && z14) {
                i15 = 1;
            }
            this.f69126e = i15;
        }

        public static int c(List<h> list, List<h> list2) {
            return list.get(0).compareTo(list2.get(0));
        }

        public static ImmutableList<h> f(int i10, b0 b0Var, e eVar, int[] iArr, @Nullable String str, @Nullable String str2) {
            ImmutableList.a r10 = ImmutableList.r();
            for (int i11 = 0; i11 < b0Var.f71809a; i11++) {
                r10.a(new h(i10, b0Var, i11, eVar, iArr[i11], str, str2));
            }
            return r10.k();
        }

        @Override // vn.n.i
        public int a() {
            return this.f69126e;
        }

        @Override // java.lang.Comparable
        /* renamed from: e */
        public int compareTo(h hVar) {
            com.google.common.collect.t g10;
            com.google.common.collect.g g11 = com.google.common.collect.g.j().g(this.f69127f, hVar.f69127f).f(Integer.valueOf(this.f69130i), Integer.valueOf(hVar.f69130i), com.google.common.collect.t.e().g()).d(this.f69131j, hVar.f69131j).d(this.f69132k, hVar.f69132k).g(this.f69128g, hVar.f69128g);
            Boolean valueOf = Boolean.valueOf(this.f69129h);
            Boolean valueOf2 = Boolean.valueOf(hVar.f69129h);
            if (this.f69131j == 0) {
                g10 = com.google.common.collect.t.e();
            } else {
                g10 = com.google.common.collect.t.e().g();
            }
            com.google.common.collect.g d10 = g11.f(valueOf, valueOf2, g10).d(this.f69133l, hVar.f69133l);
            if (this.f69132k == 0) {
                d10 = d10.h(this.f69134m, hVar.f69134m);
            }
            return d10.i();
        }

        @Override // vn.n.i
        /* renamed from: g */
        public boolean b(h hVar) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes8.dex */
    public static abstract class i<T extends i<T>> {

        /* renamed from: a  reason: collision with root package name */
        public final int f69135a;

        /* renamed from: b  reason: collision with root package name */
        public final b0 f69136b;

        /* renamed from: c  reason: collision with root package name */
        public final int f69137c;

        /* renamed from: d  reason: collision with root package name */
        public final io.bidmachine.media3.common.a f69138d;

        /* compiled from: DefaultTrackSelector.java */
        /* loaded from: classes8.dex */
        public interface a<T extends i<T>> {
            List<T> a(int i10, b0 b0Var, int[] iArr);
        }

        public i(int i10, b0 b0Var, int i11) {
            this.f69135a = i10;
            this.f69136b = b0Var;
            this.f69137c = i11;
            this.f69138d = b0Var.a(i11);
        }

        public abstract int a();

        public abstract boolean b(T t10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes8.dex */
    public static final class j extends i<j> {

        /* renamed from: e  reason: collision with root package name */
        private final boolean f69139e;

        /* renamed from: f  reason: collision with root package name */
        private final e f69140f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f69141g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f69142h;

        /* renamed from: i  reason: collision with root package name */
        private final boolean f69143i;

        /* renamed from: j  reason: collision with root package name */
        private final int f69144j;

        /* renamed from: k  reason: collision with root package name */
        private final int f69145k;

        /* renamed from: l  reason: collision with root package name */
        private final int f69146l;

        /* renamed from: m  reason: collision with root package name */
        private final int f69147m;

        /* renamed from: n  reason: collision with root package name */
        private final int f69148n;

        /* renamed from: o  reason: collision with root package name */
        private final int f69149o;

        /* renamed from: p  reason: collision with root package name */
        private final boolean f69150p;

        /* renamed from: q  reason: collision with root package name */
        private final int f69151q;

        /* renamed from: r  reason: collision with root package name */
        private final boolean f69152r;

        /* renamed from: s  reason: collision with root package name */
        private final int f69153s;

        /* renamed from: t  reason: collision with root package name */
        private final boolean f69154t;

        /* renamed from: u  reason: collision with root package name */
        private final boolean f69155u;

        /* renamed from: v  reason: collision with root package name */
        private final int f69156v;

        /* JADX WARN: Removed duplicated region for block: B:54:0x008a  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x00ab  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x00d7  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x00e6  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x00e8  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x00fa  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x011b  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x011d  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x0129  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x00bf A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:98:0x0111 A[EDGE_INSN: B:98:0x0111->B:86:0x0111 ?: BREAK  , SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public j(int r5, zm.b0 r6, int r7, vn.n.e r8, int r9, @androidx.annotation.Nullable java.lang.String r10, int r11, boolean r12) {
            /*
                Method dump skipped, instructions count: 317
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: vn.n.j.<init>(int, zm.b0, int, vn.n$e, int, java.lang.String, int, boolean):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int f(j jVar, j jVar2) {
            com.google.common.collect.g g10 = com.google.common.collect.g.j().g(jVar.f69142h, jVar2.f69142h).f(Integer.valueOf(jVar.f69147m), Integer.valueOf(jVar2.f69147m), com.google.common.collect.t.e().g()).d(jVar.f69148n, jVar2.f69148n).d(jVar.f69149o, jVar2.f69149o).g(jVar.f69150p, jVar2.f69150p).d(jVar.f69151q, jVar2.f69151q).g(jVar.f69143i, jVar2.f69143i).g(jVar.f69139e, jVar2.f69139e).g(jVar.f69141g, jVar2.f69141g).f(Integer.valueOf(jVar.f69146l), Integer.valueOf(jVar2.f69146l), com.google.common.collect.t.e().g()).g(jVar.f69154t, jVar2.f69154t).g(jVar.f69155u, jVar2.f69155u);
            if (jVar.f69154t && jVar.f69155u) {
                g10 = g10.d(jVar.f69156v, jVar2.f69156v);
            }
            return g10.i();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int g(j jVar, j jVar2) {
            com.google.common.collect.t g10;
            if (jVar.f69139e && jVar.f69142h) {
                g10 = n.f69071j;
            } else {
                g10 = n.f69071j.g();
            }
            com.google.common.collect.g j10 = com.google.common.collect.g.j();
            if (jVar.f69140f.B) {
                j10 = j10.f(Integer.valueOf(jVar.f69144j), Integer.valueOf(jVar2.f69144j), n.f69071j.g());
            }
            return j10.f(Integer.valueOf(jVar.f69145k), Integer.valueOf(jVar2.f69145k), g10).f(Integer.valueOf(jVar.f69144j), Integer.valueOf(jVar2.f69144j), g10).i();
        }

        public static int h(List<j> list, List<j> list2) {
            return com.google.common.collect.g.j().f((j) Collections.max(list, new Comparator() { // from class: vn.o
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int f10;
                    f10 = n.j.f((n.j) obj, (n.j) obj2);
                    return f10;
                }
            }), (j) Collections.max(list2, new Comparator() { // from class: vn.o
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int f10;
                    f10 = n.j.f((n.j) obj, (n.j) obj2);
                    return f10;
                }
            }), new Comparator() { // from class: vn.o
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int f10;
                    f10 = n.j.f((n.j) obj, (n.j) obj2);
                    return f10;
                }
            }).d(list.size(), list2.size()).f((j) Collections.max(list, new Comparator() { // from class: vn.p
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int g10;
                    g10 = n.j.g((n.j) obj, (n.j) obj2);
                    return g10;
                }
            }), (j) Collections.max(list2, new Comparator() { // from class: vn.p
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int g10;
                    g10 = n.j.g((n.j) obj, (n.j) obj2);
                    return g10;
                }
            }), new Comparator() { // from class: vn.p
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int g10;
                    g10 = n.j.g((n.j) obj, (n.j) obj2);
                    return g10;
                }
            }).i();
        }

        public static ImmutableList<j> i(int i10, b0 b0Var, e eVar, int[] iArr, @Nullable String str, int i11, @Nullable Point point) {
            int i12;
            int i13;
            boolean z10;
            if (point != null) {
                i12 = point.x;
            } else {
                i12 = eVar.f71861i;
            }
            if (point != null) {
                i13 = point.y;
            } else {
                i13 = eVar.f71862j;
            }
            int I = n.I(b0Var, i12, i13, eVar.f71864l);
            ImmutableList.a r10 = ImmutableList.r();
            for (int i14 = 0; i14 < b0Var.f71809a; i14++) {
                int e10 = b0Var.a(i14).e();
                if (I != Integer.MAX_VALUE && (e10 == -1 || e10 > I)) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                r10.a(new j(i10, b0Var, i14, eVar, iArr[i14], str, i11, z10));
            }
            return r10.k();
        }

        private int j(int i10, int i11) {
            if ((this.f69138d.f55165f & 16384) != 0 || !i2.x(i10, this.f69140f.A0)) {
                return 0;
            }
            if (!this.f69139e && !this.f69140f.f69103p0) {
                return 0;
            }
            if (i2.x(i10, false) && this.f69141g && this.f69139e && this.f69138d.f55169j != -1) {
                e eVar = this.f69140f;
                if (!eVar.C && !eVar.B && (i10 & i11) != 0) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // vn.n.i
        public int a() {
            return this.f69153s;
        }

        @Override // vn.n.i
        /* renamed from: k */
        public boolean b(j jVar) {
            if ((!this.f69152r && !Objects.equals(this.f69138d.f55174o, jVar.f69138d.f55174o)) || (!this.f69140f.f69106s0 && (this.f69154t != jVar.f69154t || this.f69155u != jVar.f69155u))) {
                return false;
            }
            return true;
        }
    }

    public n(Context context) {
        this(context, new a.b());
    }

    private static void E(s.a aVar, e eVar, q.a[] aVarArr) {
        q.a aVar2;
        int d10 = aVar.d();
        for (int i10 = 0; i10 < d10; i10++) {
            x f10 = aVar.f(i10);
            if (eVar.j(i10, f10)) {
                f i11 = eVar.i(i10, f10);
                if (i11 != null && i11.f69118b.length != 0) {
                    aVar2 = new q.a(f10.b(i11.f69117a), i11.f69118b, i11.f69119c);
                } else {
                    aVar2 = null;
                }
                aVarArr[i10] = aVar2;
            }
        }
    }

    private static void F(s.a aVar, d0 d0Var, q.a[] aVarArr) {
        q.a aVar2;
        int d10 = aVar.d();
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 < d10; i10++) {
            G(aVar.f(i10), d0Var, hashMap);
        }
        G(aVar.h(), d0Var, hashMap);
        for (int i11 = 0; i11 < d10; i11++) {
            c0 c0Var = (c0) hashMap.get(Integer.valueOf(aVar.e(i11)));
            if (c0Var != null) {
                if (!c0Var.f71835b.isEmpty() && aVar.f(i11).d(c0Var.f71834a) != -1) {
                    aVar2 = new q.a(c0Var.f71834a, Ints.m(c0Var.f71835b));
                } else {
                    aVar2 = null;
                }
                aVarArr[i11] = aVar2;
            }
        }
    }

    private static void G(x xVar, d0 d0Var, Map<Integer, c0> map) {
        c0 c0Var;
        for (int i10 = 0; i10 < xVar.f66547a; i10++) {
            c0 c0Var2 = d0Var.D.get(xVar.b(i10));
            if (c0Var2 != null && ((c0Var = map.get(Integer.valueOf(c0Var2.a()))) == null || (c0Var.f71835b.isEmpty() && !c0Var2.f71835b.isEmpty()))) {
                map.put(Integer.valueOf(c0Var2.a()), c0Var2);
            }
        }
    }

    protected static int H(io.bidmachine.media3.common.a aVar, @Nullable String str, boolean z10) {
        if (!TextUtils.isEmpty(str) && str.equals(aVar.f55163d)) {
            return 4;
        }
        String a02 = a0(str);
        String a03 = a0(aVar.f55163d);
        if (a03 != null && a02 != null) {
            if (!a03.startsWith(a02) && !a02.startsWith(a03)) {
                if (!m0.n1(a03, "-")[0].equals(m0.n1(a02, "-")[0])) {
                    return 0;
                }
                return 2;
            }
            return 3;
        } else if (!z10 || a03 != null) {
            return 0;
        } else {
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int I(b0 b0Var, int i10, int i11, boolean z10) {
        int i12;
        int i13 = Integer.MAX_VALUE;
        if (i10 != Integer.MAX_VALUE && i11 != Integer.MAX_VALUE) {
            for (int i14 = 0; i14 < b0Var.f71809a; i14++) {
                io.bidmachine.media3.common.a a10 = b0Var.a(i14);
                int i15 = a10.f55181v;
                if (i15 > 0 && (i12 = a10.f55182w) > 0) {
                    Point d10 = u.d(z10, i10, i11, i15, i12);
                    int i16 = a10.f55181v;
                    int i17 = a10.f55182w;
                    int i18 = i16 * i17;
                    if (i16 >= ((int) (d10.x * 0.98f)) && i17 >= ((int) (d10.y * 0.98f)) && i18 < i13) {
                        i13 = i18;
                    }
                }
            }
        }
        return i13;
    }

    @Nullable
    private static String K(@Nullable Context context) {
        CaptioningManager captioningManager;
        Locale locale;
        if (context == null || (captioningManager = (CaptioningManager) context.getSystemService("captioning")) == null || !captioningManager.isEnabled() || (locale = captioningManager.getLocale()) == null) {
            return null;
        }
        return m0.e0(locale);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int L(int i10, int i11) {
        if (i10 != 0 && i10 == i11) {
            return Integer.MAX_VALUE;
        }
        return Integer.bitCount(i10 & i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int M(@Nullable String str) {
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
    /* renamed from: N */
    public boolean Q(io.bidmachine.media3.common.a aVar, e eVar) {
        int i10;
        g gVar;
        g gVar2;
        if (eVar.f69113z0 && (i10 = aVar.E) != -1 && i10 > 2 && ((!O(aVar) || (m0.f3614a >= 32 && (gVar2 = this.f69076h) != null && gVar2.d())) && (m0.f3614a < 32 || (gVar = this.f69076h) == null || !gVar.d() || !this.f69076h.b() || !this.f69076h.c() || !this.f69076h.a(this.f69077i, aVar)))) {
            return false;
        }
        return true;
    }

    private static boolean O(io.bidmachine.media3.common.a aVar) {
        String str = aVar.f55174o;
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

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean P(io.bidmachine.media3.common.a aVar) {
        String str = aVar.f55174o;
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
            case 187078297:
                if (str.equals("audio/ac4")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1504698186:
                if (str.equals("audio/iamf")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List R(final e eVar, boolean z10, int[] iArr, int i10, b0 b0Var, int[] iArr2) {
        return b.f(i10, b0Var, eVar, iArr2, z10, new h7.l() { // from class: vn.m
            @Override // h7.l
            public final boolean apply(Object obj) {
                boolean Q;
                Q = n.this.Q(eVar, (io.bidmachine.media3.common.a) obj);
                return Q;
            }
        }, iArr[i10]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List S(e eVar, int i10, b0 b0Var, int[] iArr) {
        return c.f(i10, b0Var, eVar, iArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List T(e eVar, String str, String str2, int i10, b0 b0Var, int[] iArr) {
        return h.f(i10, b0Var, eVar, iArr, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List U(e eVar, String str, int[] iArr, Point point, int i10, b0 b0Var, int[] iArr2) {
        return j.i(i10, b0Var, eVar, iArr2, str, iArr[i10], point);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int V(Integer num, Integer num2) {
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

    private static void W(e eVar, s.a aVar, int[][][] iArr, g0[] g0VarArr, q[] qVarArr) {
        int i10;
        int i11 = -1;
        boolean z10 = false;
        int i12 = 0;
        for (int i13 = 0; i13 < aVar.d(); i13++) {
            int e10 = aVar.e(i13);
            q qVar = qVarArr[i13];
            if (e10 == 1 || qVar == null) {
                if (e10 == 1 && qVar != null && qVar.length() == 1) {
                    if (b0(eVar, iArr[i13][aVar.f(i13).d(qVar.getTrackGroup())][qVar.getIndexInTrackGroup(0)], qVar.getSelectedFormat())) {
                        i12++;
                        i11 = i13;
                    }
                }
            } else {
                return;
            }
        }
        if (i12 == 1) {
            if (eVar.f71873u.f71884b) {
                i10 = 1;
            } else {
                i10 = 2;
            }
            g0 g0Var = g0VarArr[i11];
            if (g0Var != null && g0Var.f52458b) {
                z10 = true;
            }
            g0VarArr[i11] = new g0(i10, z10);
        }
    }

    private static void X(s.a aVar, int[][][] iArr, g0[] g0VarArr, q[] qVarArr) {
        boolean z10;
        boolean z11;
        int i10 = -1;
        int i11 = -1;
        for (int i12 = 0; i12 < aVar.d(); i12++) {
            int e10 = aVar.e(i12);
            q qVar = qVarArr[i12];
            if ((e10 == 1 || e10 == 2) && qVar != null && c0(iArr[i12], aVar.f(i12), qVar)) {
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
        } else {
            z11 = false;
        }
        if (z10 & z11) {
            g0 g0Var = new g0(0, true);
            g0VarArr[i11] = g0Var;
            g0VarArr[i10] = g0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y() {
        boolean z10;
        g gVar;
        synchronized (this.f69072d) {
            try {
                if (this.f69075g.f69113z0 && m0.f3614a >= 32 && (gVar = this.f69076h) != null && gVar.d()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            f();
        }
    }

    private void Z(h2 h2Var) {
        boolean z10;
        synchronized (this.f69072d) {
            z10 = this.f69075g.D0;
        }
        if (z10) {
            g(h2Var);
        }
    }

    @Nullable
    protected static String a0(@Nullable String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, C.LANGUAGE_UNDETERMINED)) {
            return null;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b0(e eVar, int i10, io.bidmachine.media3.common.a aVar) {
        boolean z10;
        boolean z11;
        if (i2.o(i10) == 0) {
            return false;
        }
        if (eVar.f71873u.f71885c && (i2.o(i10) & 2048) == 0) {
            return false;
        }
        if (!eVar.f71873u.f71884b) {
            return true;
        }
        if (aVar.H == 0 && aVar.I == 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        if ((i2.o(i10) & 1024) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10 && !z11) {
            return false;
        }
        return true;
    }

    private static boolean c0(int[][] iArr, x xVar, q qVar) {
        if (qVar == null) {
            return false;
        }
        int d10 = xVar.d(qVar.getTrackGroup());
        for (int i10 = 0; i10 < qVar.length(); i10++) {
            if (i2.j(iArr[d10][qVar.getIndexInTrackGroup(i10)]) != 32) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    private <T extends i<T>> Pair<q.a, Integer> i0(int i10, s.a aVar, int[][][] iArr, i.a<T> aVar2, Comparator<List<T>> comparator) {
        int i11;
        RandomAccess randomAccess;
        s.a aVar3 = aVar;
        ArrayList arrayList = new ArrayList();
        int d10 = aVar.d();
        int i12 = 0;
        while (i12 < d10) {
            if (i10 == aVar3.e(i12)) {
                x f10 = aVar3.f(i12);
                for (int i13 = 0; i13 < f10.f66547a; i13++) {
                    b0 b10 = f10.b(i13);
                    List<T> a10 = aVar2.a(i12, b10, iArr[i12][i13]);
                    boolean[] zArr = new boolean[b10.f71809a];
                    int i14 = 0;
                    while (i14 < b10.f71809a) {
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
                                while (i15 < b10.f71809a) {
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
            iArr2[i17] = ((i) list.get(i17)).f69137c;
        }
        i iVar = (i) list.get(0);
        return Pair.create(new q.a(iVar.f69136b, iArr2), Integer.valueOf(iVar.f69135a));
    }

    private void k0(e eVar) {
        boolean equals;
        cn.a.e(eVar);
        synchronized (this.f69072d) {
            equals = this.f69075g.equals(eVar);
            this.f69075g = eVar;
        }
        if (!equals) {
            if (eVar.f69113z0 && this.f69073e == null) {
                cn.r.h("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
            }
            f();
        }
    }

    @Override // vn.v
    /* renamed from: J */
    public e c() {
        e eVar;
        synchronized (this.f69072d) {
            eVar = this.f69075g;
        }
        return eVar;
    }

    @Override // io.bidmachine.media3.exoplayer.i2.a
    public void b(h2 h2Var) {
        Z(h2Var);
    }

    protected q.a[] d0(s.a aVar, int[][][] iArr, int[] iArr2, e eVar) throws ExoPlaybackException {
        String str;
        int d10 = aVar.d();
        q.a[] aVarArr = new q.a[d10];
        Pair<q.a, Integer> e02 = e0(aVar, iArr, iArr2, eVar);
        if (e02 != null) {
            aVarArr[((Integer) e02.second).intValue()] = (q.a) e02.first;
        }
        Pair<q.a, Integer> pair = null;
        if (e02 == null) {
            str = null;
        } else {
            Object obj = e02.first;
            str = ((q.a) obj).f69157a.a(((q.a) obj).f69158b[0]).f55163d;
        }
        Pair<q.a, Integer> j02 = j0(aVar, iArr, iArr2, eVar, str);
        if (eVar.A || j02 == null) {
            pair = f0(aVar, iArr, eVar);
        }
        if (pair != null) {
            aVarArr[((Integer) pair.second).intValue()] = (q.a) pair.first;
        } else if (j02 != null) {
            aVarArr[((Integer) j02.second).intValue()] = (q.a) j02.first;
        }
        Pair<q.a, Integer> h02 = h0(aVar, iArr, eVar, str);
        if (h02 != null) {
            aVarArr[((Integer) h02.second).intValue()] = (q.a) h02.first;
        }
        for (int i10 = 0; i10 < d10; i10++) {
            int e10 = aVar.e(i10);
            if (e10 != 2 && e10 != 1 && e10 != 3 && e10 != 4) {
                aVarArr[i10] = g0(e10, aVar.f(i10), iArr[i10], eVar);
            }
        }
        return aVarArr;
    }

    @Nullable
    protected Pair<q.a, Integer> e0(s.a aVar, int[][][] iArr, final int[] iArr2, final e eVar) throws ExoPlaybackException {
        final boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (i10 < aVar.d()) {
                if (2 == aVar.e(i10) && aVar.f(i10).f66547a > 0) {
                    z10 = true;
                    break;
                }
                i10++;
            } else {
                break;
            }
        }
        return i0(1, aVar, iArr, new i.a() { // from class: vn.h
            @Override // vn.n.i.a
            public final List a(int i11, b0 b0Var, int[] iArr3) {
                List R;
                R = n.this.R(eVar, z10, iArr2, i11, b0Var, iArr3);
                return R;
            }
        }, new Comparator() { // from class: vn.i
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return n.b.c((List) obj, (List) obj2);
            }
        });
    }

    @Nullable
    protected Pair<q.a, Integer> f0(s.a aVar, int[][][] iArr, final e eVar) throws ExoPlaybackException {
        if (eVar.f71873u.f71883a == 2) {
            return null;
        }
        return i0(4, aVar, iArr, new i.a() { // from class: vn.j
            @Override // vn.n.i.a
            public final List a(int i10, b0 b0Var, int[] iArr2) {
                List S;
                S = n.S(n.e.this, i10, b0Var, iArr2);
                return S;
            }
        }, new Comparator() { // from class: vn.k
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return n.c.c((List) obj, (List) obj2);
            }
        });
    }

    @Nullable
    protected q.a g0(int i10, x xVar, int[][] iArr, e eVar) throws ExoPlaybackException {
        if (eVar.f71873u.f71883a == 2) {
            return null;
        }
        int i11 = 0;
        b0 b0Var = null;
        d dVar = null;
        for (int i12 = 0; i12 < xVar.f66547a; i12++) {
            b0 b10 = xVar.b(i12);
            int[] iArr2 = iArr[i12];
            for (int i13 = 0; i13 < b10.f71809a; i13++) {
                if (i2.x(iArr2[i13], eVar.A0)) {
                    d dVar2 = new d(b10.a(i13), iArr2[i13]);
                    if (dVar == null || dVar2.compareTo(dVar) > 0) {
                        b0Var = b10;
                        i11 = i13;
                        dVar = dVar2;
                    }
                }
            }
        }
        if (b0Var == null) {
            return null;
        }
        return new q.a(b0Var, i11);
    }

    @Override // vn.v
    public boolean h() {
        return true;
    }

    @Nullable
    protected Pair<q.a, Integer> h0(s.a aVar, int[][][] iArr, final e eVar, @Nullable final String str) throws ExoPlaybackException {
        final String str2 = null;
        if (eVar.f71873u.f71883a == 2) {
            return null;
        }
        if (eVar.f71876x) {
            str2 = K(this.f69073e);
        }
        return i0(3, aVar, iArr, new i.a() { // from class: vn.d
            @Override // vn.n.i.a
            public final List a(int i10, b0 b0Var, int[] iArr2) {
                List T;
                T = n.T(n.e.this, str, str2, i10, b0Var, iArr2);
                return T;
            }
        }, new Comparator() { // from class: vn.e
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return n.h.c((List) obj, (List) obj2);
            }
        });
    }

    @Override // vn.v
    public void j() {
        g gVar;
        if (m0.f3614a >= 32 && (gVar = this.f69076h) != null) {
            gVar.e();
        }
        super.j();
    }

    @Nullable
    protected Pair<q.a, Integer> j0(s.a aVar, int[][][] iArr, final int[] iArr2, final e eVar, @Nullable final String str) throws ExoPlaybackException {
        Context context;
        final Point point = null;
        if (eVar.f71873u.f71883a == 2) {
            return null;
        }
        if (eVar.f71863k && (context = this.f69073e) != null) {
            point = m0.V(context);
        }
        return i0(2, aVar, iArr, new i.a() { // from class: vn.f
            @Override // vn.n.i.a
            public final List a(int i10, b0 b0Var, int[] iArr3) {
                List U;
                U = n.U(n.e.this, str, iArr2, point, i10, b0Var, iArr3);
                return U;
            }
        }, new Comparator() { // from class: vn.g
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return n.j.h((List) obj, (List) obj2);
            }
        });
    }

    @Override // vn.v
    public void l(zm.c cVar) {
        if (this.f69077i.equals(cVar)) {
            return;
        }
        this.f69077i = cVar;
        Y();
    }

    @Override // vn.v
    public void m(d0 d0Var) {
        if (d0Var instanceof e) {
            k0((e) d0Var);
        }
        k0(new e.a().l0(d0Var).F());
    }

    @Override // vn.s
    protected final Pair<g0[], q[]> q(s.a aVar, int[][][] iArr, int[] iArr2, r.b bVar, a0 a0Var) throws ExoPlaybackException {
        e eVar;
        g0 g0Var;
        synchronized (this.f69072d) {
            eVar = this.f69075g;
        }
        if (eVar.f69113z0 && m0.f3614a >= 32 && this.f69076h == null) {
            this.f69076h = new g(this.f69073e, this);
        }
        int d10 = aVar.d();
        q.a[] d02 = d0(aVar, iArr, iArr2, eVar);
        F(aVar, eVar, d02);
        E(aVar, eVar, d02);
        for (int i10 = 0; i10 < d10; i10++) {
            int e10 = aVar.e(i10);
            if (eVar.h(i10) || eVar.E.contains(Integer.valueOf(e10))) {
                d02[i10] = null;
            }
        }
        q[] a10 = this.f69074f.a(d02, a(), bVar, a0Var);
        g0[] g0VarArr = new g0[d10];
        for (int i11 = 0; i11 < d10; i11++) {
            int e11 = aVar.e(i11);
            if (!eVar.h(i11) && !eVar.E.contains(Integer.valueOf(e11)) && (aVar.e(i11) == -2 || a10[i11] != null)) {
                g0Var = g0.f52456c;
            } else {
                g0Var = null;
            }
            g0VarArr[i11] = g0Var;
        }
        if (eVar.B0) {
            X(aVar, iArr, g0VarArr, a10);
        }
        if (eVar.f71873u.f71883a != 0) {
            W(eVar, aVar, iArr, g0VarArr, a10);
        }
        return Pair.create(g0VarArr, a10);
    }

    public n(Context context, q.b bVar) {
        this(context, e.G0, bVar);
    }

    public n(Context context, d0 d0Var, q.b bVar) {
        this(d0Var, bVar, context);
    }

    private n(d0 d0Var, q.b bVar, @Nullable Context context) {
        this.f69072d = new Object();
        this.f69073e = context != null ? context.getApplicationContext() : null;
        this.f69074f = bVar;
        if (d0Var instanceof e) {
            this.f69075g = (e) d0Var;
        } else {
            this.f69075g = e.G0.a().l0(d0Var).F();
        }
        this.f69077i = zm.c.f71814g;
        if (this.f69075g.f69113z0 && context == null) {
            cn.r.h("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    @Override // vn.v
    @Nullable
    public i2.a d() {
        return this;
    }
}
