package zm;

import androidx.annotation.Nullable;
import cn.m0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* compiled from: TrackSelectionParameters.java */
/* loaded from: classes8.dex */
public class d0 {
    public static final d0 F;
    @Deprecated
    public static final d0 G;
    private static final String H;
    private static final String I;
    private static final String J;
    private static final String K;
    private static final String L;
    private static final String M;
    private static final String N;
    private static final String O;
    private static final String P;
    private static final String Q;
    private static final String R;
    private static final String S;
    private static final String T;
    private static final String U;
    private static final String V;
    private static final String W;
    private static final String X;
    private static final String Y;
    private static final String Z;

    /* renamed from: a0  reason: collision with root package name */
    private static final String f71838a0;

    /* renamed from: b0  reason: collision with root package name */
    private static final String f71839b0;

    /* renamed from: c0  reason: collision with root package name */
    private static final String f71840c0;

    /* renamed from: d0  reason: collision with root package name */
    private static final String f71841d0;

    /* renamed from: e0  reason: collision with root package name */
    private static final String f71842e0;

    /* renamed from: f0  reason: collision with root package name */
    private static final String f71843f0;

    /* renamed from: g0  reason: collision with root package name */
    private static final String f71844g0;

    /* renamed from: h0  reason: collision with root package name */
    private static final String f71845h0;

    /* renamed from: i0  reason: collision with root package name */
    private static final String f71846i0;

    /* renamed from: j0  reason: collision with root package name */
    private static final String f71847j0;

    /* renamed from: k0  reason: collision with root package name */
    private static final String f71848k0;

    /* renamed from: l0  reason: collision with root package name */
    private static final String f71849l0;

    /* renamed from: m0  reason: collision with root package name */
    private static final String f71850m0;

    /* renamed from: n0  reason: collision with root package name */
    private static final String f71851n0;

    /* renamed from: o0  reason: collision with root package name */
    private static final String f71852o0;
    public final boolean A;
    public final boolean B;
    public final boolean C;
    public final ImmutableMap<b0, c0> D;
    public final ImmutableSet<Integer> E;

    /* renamed from: a  reason: collision with root package name */
    public final int f71853a;

    /* renamed from: b  reason: collision with root package name */
    public final int f71854b;

    /* renamed from: c  reason: collision with root package name */
    public final int f71855c;

    /* renamed from: d  reason: collision with root package name */
    public final int f71856d;

    /* renamed from: e  reason: collision with root package name */
    public final int f71857e;

    /* renamed from: f  reason: collision with root package name */
    public final int f71858f;

    /* renamed from: g  reason: collision with root package name */
    public final int f71859g;

    /* renamed from: h  reason: collision with root package name */
    public final int f71860h;

    /* renamed from: i  reason: collision with root package name */
    public final int f71861i;

    /* renamed from: j  reason: collision with root package name */
    public final int f71862j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f71863k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f71864l;

    /* renamed from: m  reason: collision with root package name */
    public final ImmutableList<String> f71865m;

    /* renamed from: n  reason: collision with root package name */
    public final ImmutableList<String> f71866n;

    /* renamed from: o  reason: collision with root package name */
    public final int f71867o;

    /* renamed from: p  reason: collision with root package name */
    public final ImmutableList<String> f71868p;

    /* renamed from: q  reason: collision with root package name */
    public final int f71869q;

    /* renamed from: r  reason: collision with root package name */
    public final int f71870r;

    /* renamed from: s  reason: collision with root package name */
    public final int f71871s;

    /* renamed from: t  reason: collision with root package name */
    public final ImmutableList<String> f71872t;

    /* renamed from: u  reason: collision with root package name */
    public final b f71873u;

    /* renamed from: v  reason: collision with root package name */
    public final ImmutableList<String> f71874v;

    /* renamed from: w  reason: collision with root package name */
    public final int f71875w;

    /* renamed from: x  reason: collision with root package name */
    public final boolean f71876x;

    /* renamed from: y  reason: collision with root package name */
    public final int f71877y;

    /* renamed from: z  reason: collision with root package name */
    public final boolean f71878z;

    /* compiled from: TrackSelectionParameters.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: d  reason: collision with root package name */
        public static final b f71879d = new a().d();

        /* renamed from: e  reason: collision with root package name */
        private static final String f71880e = m0.C0(1);

        /* renamed from: f  reason: collision with root package name */
        private static final String f71881f = m0.C0(2);

        /* renamed from: g  reason: collision with root package name */
        private static final String f71882g = m0.C0(3);

        /* renamed from: a  reason: collision with root package name */
        public final int f71883a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f71884b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f71885c;

        /* compiled from: TrackSelectionParameters.java */
        /* loaded from: classes8.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private int f71886a = 0;

            /* renamed from: b  reason: collision with root package name */
            private boolean f71887b = false;

            /* renamed from: c  reason: collision with root package name */
            private boolean f71888c = false;

            public b d() {
                return new b(this);
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f71883a == bVar.f71883a && this.f71884b == bVar.f71884b && this.f71885c == bVar.f71885c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return ((((this.f71883a + 31) * 31) + (this.f71884b ? 1 : 0)) * 31) + (this.f71885c ? 1 : 0);
        }

        private b(a aVar) {
            this.f71883a = aVar.f71886a;
            this.f71884b = aVar.f71887b;
            this.f71885c = aVar.f71888c;
        }
    }

    static {
        d0 F2 = new c().F();
        F = F2;
        G = F2;
        H = m0.C0(1);
        I = m0.C0(2);
        J = m0.C0(3);
        K = m0.C0(4);
        L = m0.C0(5);
        M = m0.C0(6);
        N = m0.C0(7);
        O = m0.C0(8);
        P = m0.C0(9);
        Q = m0.C0(10);
        R = m0.C0(11);
        S = m0.C0(12);
        T = m0.C0(13);
        U = m0.C0(14);
        V = m0.C0(15);
        W = m0.C0(16);
        X = m0.C0(17);
        Y = m0.C0(18);
        Z = m0.C0(19);
        f71838a0 = m0.C0(20);
        f71839b0 = m0.C0(21);
        f71840c0 = m0.C0(22);
        f71841d0 = m0.C0(23);
        f71842e0 = m0.C0(24);
        f71843f0 = m0.C0(25);
        f71844g0 = m0.C0(26);
        f71845h0 = m0.C0(27);
        f71846i0 = m0.C0(28);
        f71847j0 = m0.C0(29);
        f71848k0 = m0.C0(30);
        f71849l0 = m0.C0(31);
        f71850m0 = m0.C0(32);
        f71851n0 = m0.C0(33);
        f71852o0 = m0.C0(34);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d0(c cVar) {
        this.f71853a = cVar.f71889a;
        this.f71854b = cVar.f71890b;
        this.f71855c = cVar.f71891c;
        this.f71856d = cVar.f71892d;
        this.f71857e = cVar.f71893e;
        this.f71858f = cVar.f71894f;
        this.f71859g = cVar.f71895g;
        this.f71860h = cVar.f71896h;
        this.f71861i = cVar.f71897i;
        this.f71862j = cVar.f71898j;
        this.f71863k = cVar.f71899k;
        this.f71864l = cVar.f71900l;
        this.f71865m = cVar.f71901m;
        this.f71866n = cVar.f71902n;
        this.f71867o = cVar.f71903o;
        this.f71868p = cVar.f71904p;
        this.f71869q = cVar.f71905q;
        this.f71870r = cVar.f71906r;
        this.f71871s = cVar.f71907s;
        this.f71872t = cVar.f71908t;
        this.f71873u = cVar.f71909u;
        this.f71874v = cVar.f71910v;
        this.f71875w = cVar.f71911w;
        this.f71876x = cVar.f71912x;
        this.f71877y = cVar.f71913y;
        this.f71878z = cVar.f71914z;
        this.A = cVar.A;
        this.B = cVar.B;
        this.C = cVar.C;
        this.D = ImmutableMap.e(cVar.D);
        this.E = ImmutableSet.t(cVar.E);
    }

    public c a() {
        return new c(this);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d0 d0Var = (d0) obj;
        if (this.f71853a == d0Var.f71853a && this.f71854b == d0Var.f71854b && this.f71855c == d0Var.f71855c && this.f71856d == d0Var.f71856d && this.f71857e == d0Var.f71857e && this.f71858f == d0Var.f71858f && this.f71859g == d0Var.f71859g && this.f71860h == d0Var.f71860h && this.f71864l == d0Var.f71864l && this.f71861i == d0Var.f71861i && this.f71862j == d0Var.f71862j && this.f71863k == d0Var.f71863k && this.f71865m.equals(d0Var.f71865m) && this.f71866n.equals(d0Var.f71866n) && this.f71867o == d0Var.f71867o && this.f71868p.equals(d0Var.f71868p) && this.f71869q == d0Var.f71869q && this.f71870r == d0Var.f71870r && this.f71871s == d0Var.f71871s && this.f71872t.equals(d0Var.f71872t) && this.f71873u.equals(d0Var.f71873u) && this.f71874v.equals(d0Var.f71874v) && this.f71875w == d0Var.f71875w && this.f71876x == d0Var.f71876x && this.f71877y == d0Var.f71877y && this.f71878z == d0Var.f71878z && this.A == d0Var.A && this.B == d0Var.B && this.C == d0Var.C && this.D.equals(d0Var.D) && this.E.equals(d0Var.E)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((this.f71853a + 31) * 31) + this.f71854b) * 31) + this.f71855c) * 31) + this.f71856d) * 31) + this.f71857e) * 31) + this.f71858f) * 31) + this.f71859g) * 31) + this.f71860h) * 31) + (this.f71864l ? 1 : 0)) * 31) + this.f71861i) * 31) + this.f71862j) * 31) + (this.f71863k ? 1 : 0)) * 31) + this.f71865m.hashCode()) * 31) + this.f71866n.hashCode()) * 31) + this.f71867o) * 31) + this.f71868p.hashCode()) * 31) + this.f71869q) * 31) + this.f71870r) * 31) + this.f71871s) * 31) + this.f71872t.hashCode()) * 31) + this.f71873u.hashCode()) * 31) + this.f71874v.hashCode()) * 31) + this.f71875w) * 31) + (this.f71876x ? 1 : 0)) * 31) + this.f71877y) * 31) + (this.f71878z ? 1 : 0)) * 31) + (this.A ? 1 : 0)) * 31) + (this.B ? 1 : 0)) * 31) + (this.C ? 1 : 0)) * 31) + this.D.hashCode()) * 31) + this.E.hashCode();
    }

    /* compiled from: TrackSelectionParameters.java */
    /* loaded from: classes8.dex */
    public static class c {
        private boolean A;
        private boolean B;
        private boolean C;
        private HashMap<b0, c0> D;
        private HashSet<Integer> E;

        /* renamed from: a  reason: collision with root package name */
        private int f71889a;

        /* renamed from: b  reason: collision with root package name */
        private int f71890b;

        /* renamed from: c  reason: collision with root package name */
        private int f71891c;

        /* renamed from: d  reason: collision with root package name */
        private int f71892d;

        /* renamed from: e  reason: collision with root package name */
        private int f71893e;

        /* renamed from: f  reason: collision with root package name */
        private int f71894f;

        /* renamed from: g  reason: collision with root package name */
        private int f71895g;

        /* renamed from: h  reason: collision with root package name */
        private int f71896h;

        /* renamed from: i  reason: collision with root package name */
        private int f71897i;

        /* renamed from: j  reason: collision with root package name */
        private int f71898j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f71899k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f71900l;

        /* renamed from: m  reason: collision with root package name */
        private ImmutableList<String> f71901m;

        /* renamed from: n  reason: collision with root package name */
        private ImmutableList<String> f71902n;

        /* renamed from: o  reason: collision with root package name */
        private int f71903o;

        /* renamed from: p  reason: collision with root package name */
        private ImmutableList<String> f71904p;

        /* renamed from: q  reason: collision with root package name */
        private int f71905q;

        /* renamed from: r  reason: collision with root package name */
        private int f71906r;

        /* renamed from: s  reason: collision with root package name */
        private int f71907s;

        /* renamed from: t  reason: collision with root package name */
        private ImmutableList<String> f71908t;

        /* renamed from: u  reason: collision with root package name */
        private b f71909u;

        /* renamed from: v  reason: collision with root package name */
        private ImmutableList<String> f71910v;

        /* renamed from: w  reason: collision with root package name */
        private int f71911w;

        /* renamed from: x  reason: collision with root package name */
        private boolean f71912x;

        /* renamed from: y  reason: collision with root package name */
        private int f71913y;

        /* renamed from: z  reason: collision with root package name */
        private boolean f71914z;

        public c() {
            this.f71889a = Integer.MAX_VALUE;
            this.f71890b = Integer.MAX_VALUE;
            this.f71891c = Integer.MAX_VALUE;
            this.f71892d = Integer.MAX_VALUE;
            this.f71897i = Integer.MAX_VALUE;
            this.f71898j = Integer.MAX_VALUE;
            this.f71899k = true;
            this.f71900l = true;
            this.f71901m = ImmutableList.A();
            this.f71902n = ImmutableList.A();
            this.f71903o = 0;
            this.f71904p = ImmutableList.A();
            this.f71905q = 0;
            this.f71906r = Integer.MAX_VALUE;
            this.f71907s = Integer.MAX_VALUE;
            this.f71908t = ImmutableList.A();
            this.f71909u = b.f71879d;
            this.f71910v = ImmutableList.A();
            this.f71911w = 0;
            this.f71912x = true;
            this.f71913y = 0;
            this.f71914z = false;
            this.A = false;
            this.B = false;
            this.C = false;
            this.D = new HashMap<>();
            this.E = new HashSet<>();
        }

        private void H(d0 d0Var) {
            this.f71889a = d0Var.f71853a;
            this.f71890b = d0Var.f71854b;
            this.f71891c = d0Var.f71855c;
            this.f71892d = d0Var.f71856d;
            this.f71893e = d0Var.f71857e;
            this.f71894f = d0Var.f71858f;
            this.f71895g = d0Var.f71859g;
            this.f71896h = d0Var.f71860h;
            this.f71897i = d0Var.f71861i;
            this.f71898j = d0Var.f71862j;
            this.f71899k = d0Var.f71863k;
            this.f71900l = d0Var.f71864l;
            this.f71901m = d0Var.f71865m;
            this.f71902n = d0Var.f71866n;
            this.f71903o = d0Var.f71867o;
            this.f71904p = d0Var.f71868p;
            this.f71905q = d0Var.f71869q;
            this.f71906r = d0Var.f71870r;
            this.f71907s = d0Var.f71871s;
            this.f71908t = d0Var.f71872t;
            this.f71909u = d0Var.f71873u;
            this.f71910v = d0Var.f71874v;
            this.f71911w = d0Var.f71875w;
            this.f71912x = d0Var.f71876x;
            this.f71913y = d0Var.f71877y;
            this.f71914z = d0Var.f71878z;
            this.A = d0Var.A;
            this.B = d0Var.B;
            this.C = d0Var.C;
            this.E = new HashSet<>(d0Var.E);
            this.D = new HashMap<>(d0Var.D);
        }

        private static ImmutableList<String> I(String[] strArr) {
            ImmutableList.a r10 = ImmutableList.r();
            for (String str : (String[]) cn.a.e(strArr)) {
                r10.a(m0.V0((String) cn.a.e(str)));
            }
            return r10.k();
        }

        public d0 F() {
            return new d0(this);
        }

        public c G(int i10) {
            Iterator<c0> it = this.D.values().iterator();
            while (it.hasNext()) {
                if (it.next().a() == i10) {
                    it.remove();
                }
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public c J(d0 d0Var) {
            H(d0Var);
            return this;
        }

        public c K(int i10) {
            this.f71913y = i10;
            return this;
        }

        public c L(c0 c0Var) {
            G(c0Var.a());
            this.D.put(c0Var.f71834a, c0Var);
            return this;
        }

        public c M(@Nullable String str) {
            if (str == null) {
                return N(new String[0]);
            }
            return N(str);
        }

        public c N(String... strArr) {
            this.f71910v = I(strArr);
            this.f71912x = false;
            return this;
        }

        public c O(int i10) {
            this.f71911w = i10;
            this.f71912x = false;
            return this;
        }

        public c P(int i10, boolean z10) {
            if (z10) {
                this.E.add(Integer.valueOf(i10));
            } else {
                this.E.remove(Integer.valueOf(i10));
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public c(d0 d0Var) {
            H(d0Var);
        }
    }
}
