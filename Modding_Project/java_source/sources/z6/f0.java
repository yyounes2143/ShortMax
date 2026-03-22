package z6;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.s0;
import com.google.android.exoplayer2.g;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
/* compiled from: TrackSelectionParameters.java */
/* loaded from: classes4.dex */
public class f0 implements com.google.android.exoplayer2.g {
    public static final f0 A;
    @Deprecated
    public static final f0 B;
    @Deprecated
    public static final g.a<f0> C;

    /* renamed from: a  reason: collision with root package name */
    public final int f71367a;

    /* renamed from: b  reason: collision with root package name */
    public final int f71368b;

    /* renamed from: c  reason: collision with root package name */
    public final int f71369c;

    /* renamed from: d  reason: collision with root package name */
    public final int f71370d;

    /* renamed from: e  reason: collision with root package name */
    public final int f71371e;

    /* renamed from: f  reason: collision with root package name */
    public final int f71372f;

    /* renamed from: g  reason: collision with root package name */
    public final int f71373g;

    /* renamed from: h  reason: collision with root package name */
    public final int f71374h;

    /* renamed from: i  reason: collision with root package name */
    public final int f71375i;

    /* renamed from: j  reason: collision with root package name */
    public final int f71376j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f71377k;

    /* renamed from: l  reason: collision with root package name */
    public final ImmutableList<String> f71378l;

    /* renamed from: m  reason: collision with root package name */
    public final int f71379m;

    /* renamed from: n  reason: collision with root package name */
    public final ImmutableList<String> f71380n;

    /* renamed from: o  reason: collision with root package name */
    public final int f71381o;

    /* renamed from: p  reason: collision with root package name */
    public final int f71382p;

    /* renamed from: q  reason: collision with root package name */
    public final int f71383q;

    /* renamed from: r  reason: collision with root package name */
    public final ImmutableList<String> f71384r;

    /* renamed from: s  reason: collision with root package name */
    public final ImmutableList<String> f71385s;

    /* renamed from: t  reason: collision with root package name */
    public final int f71386t;

    /* renamed from: u  reason: collision with root package name */
    public final int f71387u;

    /* renamed from: v  reason: collision with root package name */
    public final boolean f71388v;

    /* renamed from: w  reason: collision with root package name */
    public final boolean f71389w;

    /* renamed from: x  reason: collision with root package name */
    public final boolean f71390x;

    /* renamed from: y  reason: collision with root package name */
    public final ImmutableMap<n6.u, d0> f71391y;

    /* renamed from: z  reason: collision with root package name */
    public final ImmutableSet<Integer> f71392z;

    static {
        f0 A2 = new a().A();
        A = A2;
        B = A2;
        C = new g.a() { // from class: z6.e0
            @Override // com.google.android.exoplayer2.g.a
            public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
                return f0.b(bundle);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public f0(a aVar) {
        this.f71367a = aVar.f71393a;
        this.f71368b = aVar.f71394b;
        this.f71369c = aVar.f71395c;
        this.f71370d = aVar.f71396d;
        this.f71371e = aVar.f71397e;
        this.f71372f = aVar.f71398f;
        this.f71373g = aVar.f71399g;
        this.f71374h = aVar.f71400h;
        this.f71375i = aVar.f71401i;
        this.f71376j = aVar.f71402j;
        this.f71377k = aVar.f71403k;
        this.f71378l = aVar.f71404l;
        this.f71379m = aVar.f71405m;
        this.f71380n = aVar.f71406n;
        this.f71381o = aVar.f71407o;
        this.f71382p = aVar.f71408p;
        this.f71383q = aVar.f71409q;
        this.f71384r = aVar.f71410r;
        this.f71385s = aVar.f71411s;
        this.f71386t = aVar.f71412t;
        this.f71387u = aVar.f71413u;
        this.f71388v = aVar.f71414v;
        this.f71389w = aVar.f71415w;
        this.f71390x = aVar.f71416x;
        this.f71391y = ImmutableMap.e(aVar.f71417y);
        this.f71392z = ImmutableSet.t(aVar.f71418z);
    }

    public static f0 b(Bundle bundle) {
        return new a(bundle).A();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    public a a() {
        return new a(this);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        f0 f0Var = (f0) obj;
        if (this.f71367a == f0Var.f71367a && this.f71368b == f0Var.f71368b && this.f71369c == f0Var.f71369c && this.f71370d == f0Var.f71370d && this.f71371e == f0Var.f71371e && this.f71372f == f0Var.f71372f && this.f71373g == f0Var.f71373g && this.f71374h == f0Var.f71374h && this.f71377k == f0Var.f71377k && this.f71375i == f0Var.f71375i && this.f71376j == f0Var.f71376j && this.f71378l.equals(f0Var.f71378l) && this.f71379m == f0Var.f71379m && this.f71380n.equals(f0Var.f71380n) && this.f71381o == f0Var.f71381o && this.f71382p == f0Var.f71382p && this.f71383q == f0Var.f71383q && this.f71384r.equals(f0Var.f71384r) && this.f71385s.equals(f0Var.f71385s) && this.f71386t == f0Var.f71386t && this.f71387u == f0Var.f71387u && this.f71388v == f0Var.f71388v && this.f71389w == f0Var.f71389w && this.f71390x == f0Var.f71390x && this.f71391y.equals(f0Var.f71391y) && this.f71392z.equals(f0Var.f71392z)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((((((((((((((((((((((this.f71367a + 31) * 31) + this.f71368b) * 31) + this.f71369c) * 31) + this.f71370d) * 31) + this.f71371e) * 31) + this.f71372f) * 31) + this.f71373g) * 31) + this.f71374h) * 31) + (this.f71377k ? 1 : 0)) * 31) + this.f71375i) * 31) + this.f71376j) * 31) + this.f71378l.hashCode()) * 31) + this.f71379m) * 31) + this.f71380n.hashCode()) * 31) + this.f71381o) * 31) + this.f71382p) * 31) + this.f71383q) * 31) + this.f71384r.hashCode()) * 31) + this.f71385s.hashCode()) * 31) + this.f71386t) * 31) + this.f71387u) * 31) + (this.f71388v ? 1 : 0)) * 31) + (this.f71389w ? 1 : 0)) * 31) + (this.f71390x ? 1 : 0)) * 31) + this.f71391y.hashCode()) * 31) + this.f71392z.hashCode();
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(6), this.f71367a);
        bundle.putInt(c(7), this.f71368b);
        bundle.putInt(c(8), this.f71369c);
        bundle.putInt(c(9), this.f71370d);
        bundle.putInt(c(10), this.f71371e);
        bundle.putInt(c(11), this.f71372f);
        bundle.putInt(c(12), this.f71373g);
        bundle.putInt(c(13), this.f71374h);
        bundle.putInt(c(14), this.f71375i);
        bundle.putInt(c(15), this.f71376j);
        bundle.putBoolean(c(16), this.f71377k);
        bundle.putStringArray(c(17), (String[]) this.f71378l.toArray(new String[0]));
        bundle.putInt(c(25), this.f71379m);
        bundle.putStringArray(c(1), (String[]) this.f71380n.toArray(new String[0]));
        bundle.putInt(c(2), this.f71381o);
        bundle.putInt(c(18), this.f71382p);
        bundle.putInt(c(19), this.f71383q);
        bundle.putStringArray(c(20), (String[]) this.f71384r.toArray(new String[0]));
        bundle.putStringArray(c(3), (String[]) this.f71385s.toArray(new String[0]));
        bundle.putInt(c(4), this.f71386t);
        bundle.putInt(c(26), this.f71387u);
        bundle.putBoolean(c(5), this.f71388v);
        bundle.putBoolean(c(21), this.f71389w);
        bundle.putBoolean(c(22), this.f71390x);
        bundle.putParcelableArrayList(c(23), b7.c.d(this.f71391y.values()));
        bundle.putIntArray(c(24), Ints.m(this.f71392z));
        return bundle;
    }

    /* compiled from: TrackSelectionParameters.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f71393a;

        /* renamed from: b  reason: collision with root package name */
        private int f71394b;

        /* renamed from: c  reason: collision with root package name */
        private int f71395c;

        /* renamed from: d  reason: collision with root package name */
        private int f71396d;

        /* renamed from: e  reason: collision with root package name */
        private int f71397e;

        /* renamed from: f  reason: collision with root package name */
        private int f71398f;

        /* renamed from: g  reason: collision with root package name */
        private int f71399g;

        /* renamed from: h  reason: collision with root package name */
        private int f71400h;

        /* renamed from: i  reason: collision with root package name */
        private int f71401i;

        /* renamed from: j  reason: collision with root package name */
        private int f71402j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f71403k;

        /* renamed from: l  reason: collision with root package name */
        private ImmutableList<String> f71404l;

        /* renamed from: m  reason: collision with root package name */
        private int f71405m;

        /* renamed from: n  reason: collision with root package name */
        private ImmutableList<String> f71406n;

        /* renamed from: o  reason: collision with root package name */
        private int f71407o;

        /* renamed from: p  reason: collision with root package name */
        private int f71408p;

        /* renamed from: q  reason: collision with root package name */
        private int f71409q;

        /* renamed from: r  reason: collision with root package name */
        private ImmutableList<String> f71410r;

        /* renamed from: s  reason: collision with root package name */
        private ImmutableList<String> f71411s;

        /* renamed from: t  reason: collision with root package name */
        private int f71412t;

        /* renamed from: u  reason: collision with root package name */
        private int f71413u;

        /* renamed from: v  reason: collision with root package name */
        private boolean f71414v;

        /* renamed from: w  reason: collision with root package name */
        private boolean f71415w;

        /* renamed from: x  reason: collision with root package name */
        private boolean f71416x;

        /* renamed from: y  reason: collision with root package name */
        private HashMap<n6.u, d0> f71417y;

        /* renamed from: z  reason: collision with root package name */
        private HashSet<Integer> f71418z;

        @Deprecated
        public a() {
            this.f71393a = Integer.MAX_VALUE;
            this.f71394b = Integer.MAX_VALUE;
            this.f71395c = Integer.MAX_VALUE;
            this.f71396d = Integer.MAX_VALUE;
            this.f71401i = Integer.MAX_VALUE;
            this.f71402j = Integer.MAX_VALUE;
            this.f71403k = true;
            this.f71404l = ImmutableList.A();
            this.f71405m = 0;
            this.f71406n = ImmutableList.A();
            this.f71407o = 0;
            this.f71408p = Integer.MAX_VALUE;
            this.f71409q = Integer.MAX_VALUE;
            this.f71410r = ImmutableList.A();
            this.f71411s = ImmutableList.A();
            this.f71412t = 0;
            this.f71413u = 0;
            this.f71414v = false;
            this.f71415w = false;
            this.f71416x = false;
            this.f71417y = new HashMap<>();
            this.f71418z = new HashSet<>();
        }

        private void C(f0 f0Var) {
            this.f71393a = f0Var.f71367a;
            this.f71394b = f0Var.f71368b;
            this.f71395c = f0Var.f71369c;
            this.f71396d = f0Var.f71370d;
            this.f71397e = f0Var.f71371e;
            this.f71398f = f0Var.f71372f;
            this.f71399g = f0Var.f71373g;
            this.f71400h = f0Var.f71374h;
            this.f71401i = f0Var.f71375i;
            this.f71402j = f0Var.f71376j;
            this.f71403k = f0Var.f71377k;
            this.f71404l = f0Var.f71378l;
            this.f71405m = f0Var.f71379m;
            this.f71406n = f0Var.f71380n;
            this.f71407o = f0Var.f71381o;
            this.f71408p = f0Var.f71382p;
            this.f71409q = f0Var.f71383q;
            this.f71410r = f0Var.f71384r;
            this.f71411s = f0Var.f71385s;
            this.f71412t = f0Var.f71386t;
            this.f71413u = f0Var.f71387u;
            this.f71414v = f0Var.f71388v;
            this.f71415w = f0Var.f71389w;
            this.f71416x = f0Var.f71390x;
            this.f71418z = new HashSet<>(f0Var.f71392z);
            this.f71417y = new HashMap<>(f0Var.f71391y);
        }

        private static ImmutableList<String> D(String[] strArr) {
            ImmutableList.a r10 = ImmutableList.r();
            for (String str : (String[]) b7.a.e(strArr)) {
                r10.a(s0.y0((String) b7.a.e(str)));
            }
            return r10.k();
        }

        @RequiresApi(19)
        private void I(Context context) {
            CaptioningManager captioningManager;
            if ((s0.f2506a >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
                this.f71412t = 1088;
                Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.f71411s = ImmutableList.B(s0.S(locale));
                }
            }
        }

        public f0 A() {
            return new f0(this);
        }

        public a B(int i10) {
            Iterator<d0> it = this.f71417y.values().iterator();
            while (it.hasNext()) {
                if (it.next().b() == i10) {
                    it.remove();
                }
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public a E(f0 f0Var) {
            C(f0Var);
            return this;
        }

        public a F(int i10) {
            this.f71413u = i10;
            return this;
        }

        public a G(d0 d0Var) {
            B(d0Var.b());
            this.f71417y.put(d0Var.f71363a, d0Var);
            return this;
        }

        public a H(Context context) {
            if (s0.f2506a >= 19) {
                I(context);
            }
            return this;
        }

        public a J(int i10, boolean z10) {
            if (z10) {
                this.f71418z.add(Integer.valueOf(i10));
            } else {
                this.f71418z.remove(Integer.valueOf(i10));
            }
            return this;
        }

        public a K(int i10, int i11, boolean z10) {
            this.f71401i = i10;
            this.f71402j = i11;
            this.f71403k = z10;
            return this;
        }

        public a L(Context context, boolean z10) {
            Point I = s0.I(context);
            return K(I.x, I.y, z10);
        }

        public a(Context context) {
            this();
            H(context);
            L(context, true);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public a(f0 f0Var) {
            C(f0Var);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public a(Bundle bundle) {
            ImmutableList b10;
            String c10 = f0.c(6);
            f0 f0Var = f0.A;
            this.f71393a = bundle.getInt(c10, f0Var.f71367a);
            this.f71394b = bundle.getInt(f0.c(7), f0Var.f71368b);
            this.f71395c = bundle.getInt(f0.c(8), f0Var.f71369c);
            this.f71396d = bundle.getInt(f0.c(9), f0Var.f71370d);
            this.f71397e = bundle.getInt(f0.c(10), f0Var.f71371e);
            this.f71398f = bundle.getInt(f0.c(11), f0Var.f71372f);
            this.f71399g = bundle.getInt(f0.c(12), f0Var.f71373g);
            this.f71400h = bundle.getInt(f0.c(13), f0Var.f71374h);
            this.f71401i = bundle.getInt(f0.c(14), f0Var.f71375i);
            this.f71402j = bundle.getInt(f0.c(15), f0Var.f71376j);
            this.f71403k = bundle.getBoolean(f0.c(16), f0Var.f71377k);
            this.f71404l = ImmutableList.v((String[]) h7.g.a(bundle.getStringArray(f0.c(17)), new String[0]));
            this.f71405m = bundle.getInt(f0.c(25), f0Var.f71379m);
            this.f71406n = D((String[]) h7.g.a(bundle.getStringArray(f0.c(1)), new String[0]));
            this.f71407o = bundle.getInt(f0.c(2), f0Var.f71381o);
            this.f71408p = bundle.getInt(f0.c(18), f0Var.f71382p);
            this.f71409q = bundle.getInt(f0.c(19), f0Var.f71383q);
            this.f71410r = ImmutableList.v((String[]) h7.g.a(bundle.getStringArray(f0.c(20)), new String[0]));
            this.f71411s = D((String[]) h7.g.a(bundle.getStringArray(f0.c(3)), new String[0]));
            this.f71412t = bundle.getInt(f0.c(4), f0Var.f71386t);
            this.f71413u = bundle.getInt(f0.c(26), f0Var.f71387u);
            this.f71414v = bundle.getBoolean(f0.c(5), f0Var.f71388v);
            this.f71415w = bundle.getBoolean(f0.c(21), f0Var.f71389w);
            this.f71416x = bundle.getBoolean(f0.c(22), f0Var.f71390x);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(f0.c(23));
            if (parcelableArrayList == null) {
                b10 = ImmutableList.A();
            } else {
                b10 = b7.c.b(d0.f71362c, parcelableArrayList);
            }
            this.f71417y = new HashMap<>();
            for (int i10 = 0; i10 < b10.size(); i10++) {
                d0 d0Var = (d0) b10.get(i10);
                this.f71417y.put(d0Var.f71363a, d0Var);
            }
            int[] iArr = (int[]) h7.g.a(bundle.getIntArray(f0.c(24)), new int[0]);
            this.f71418z = new HashSet<>();
            for (int i11 : iArr) {
                this.f71418z.add(Integer.valueOf(i11));
            }
        }
    }
}
