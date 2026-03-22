package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.g;
import com.google.android.exoplayer2.metadata.Metadata;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* compiled from: Format.java */
/* loaded from: classes4.dex */
public final class v0 implements g {
    private static final v0 G = new b().E();
    public static final g.a<v0> H = new g.a() { // from class: o5.a0
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            com.google.android.exoplayer2.v0 e10;
            e10 = com.google.android.exoplayer2.v0.e(bundle);
            return e10;
        }
    };
    public final int A;
    public final int B;
    public final int C;
    public final int D;
    public final int E;
    private int F;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f19146a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f19147b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f19148c;

    /* renamed from: d  reason: collision with root package name */
    public final int f19149d;

    /* renamed from: e  reason: collision with root package name */
    public final int f19150e;

    /* renamed from: f  reason: collision with root package name */
    public final int f19151f;

    /* renamed from: g  reason: collision with root package name */
    public final int f19152g;

    /* renamed from: h  reason: collision with root package name */
    public final int f19153h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final String f19154i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final Metadata f19155j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final String f19156k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public final String f19157l;

    /* renamed from: m  reason: collision with root package name */
    public final int f19158m;

    /* renamed from: n  reason: collision with root package name */
    public final List<byte[]> f19159n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    public final DrmInitData f19160o;

    /* renamed from: p  reason: collision with root package name */
    public final long f19161p;

    /* renamed from: q  reason: collision with root package name */
    public final int f19162q;

    /* renamed from: r  reason: collision with root package name */
    public final int f19163r;

    /* renamed from: s  reason: collision with root package name */
    public final float f19164s;

    /* renamed from: t  reason: collision with root package name */
    public final int f19165t;

    /* renamed from: u  reason: collision with root package name */
    public final float f19166u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    public final byte[] f19167v;

    /* renamed from: w  reason: collision with root package name */
    public final int f19168w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    public final c7.c f19169x;

    /* renamed from: y  reason: collision with root package name */
    public final int f19170y;

    /* renamed from: z  reason: collision with root package name */
    public final int f19171z;

    /* compiled from: Format.java */
    /* loaded from: classes4.dex */
    public static final class b {
        private int A;
        private int B;
        private int C;
        private int D;
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private String f19172a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private String f19173b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f19174c;

        /* renamed from: d  reason: collision with root package name */
        private int f19175d;

        /* renamed from: e  reason: collision with root package name */
        private int f19176e;

        /* renamed from: f  reason: collision with root package name */
        private int f19177f;

        /* renamed from: g  reason: collision with root package name */
        private int f19178g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private String f19179h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private Metadata f19180i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private String f19181j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private String f19182k;

        /* renamed from: l  reason: collision with root package name */
        private int f19183l;
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private List<byte[]> f19184m;
        @Nullable

        /* renamed from: n  reason: collision with root package name */
        private DrmInitData f19185n;

        /* renamed from: o  reason: collision with root package name */
        private long f19186o;

        /* renamed from: p  reason: collision with root package name */
        private int f19187p;

        /* renamed from: q  reason: collision with root package name */
        private int f19188q;

        /* renamed from: r  reason: collision with root package name */
        private float f19189r;

        /* renamed from: s  reason: collision with root package name */
        private int f19190s;

        /* renamed from: t  reason: collision with root package name */
        private float f19191t;
        @Nullable

        /* renamed from: u  reason: collision with root package name */
        private byte[] f19192u;

        /* renamed from: v  reason: collision with root package name */
        private int f19193v;
        @Nullable

        /* renamed from: w  reason: collision with root package name */
        private c7.c f19194w;

        /* renamed from: x  reason: collision with root package name */
        private int f19195x;

        /* renamed from: y  reason: collision with root package name */
        private int f19196y;

        /* renamed from: z  reason: collision with root package name */
        private int f19197z;

        public v0 E() {
            return new v0(this);
        }

        public b F(int i10) {
            this.C = i10;
            return this;
        }

        public b G(int i10) {
            this.f19177f = i10;
            return this;
        }

        public b H(int i10) {
            this.f19195x = i10;
            return this;
        }

        public b I(@Nullable String str) {
            this.f19179h = str;
            return this;
        }

        public b J(@Nullable c7.c cVar) {
            this.f19194w = cVar;
            return this;
        }

        public b K(@Nullable String str) {
            this.f19181j = str;
            return this;
        }

        public b L(int i10) {
            this.D = i10;
            return this;
        }

        public b M(@Nullable DrmInitData drmInitData) {
            this.f19185n = drmInitData;
            return this;
        }

        public b N(int i10) {
            this.A = i10;
            return this;
        }

        public b O(int i10) {
            this.B = i10;
            return this;
        }

        public b P(float f10) {
            this.f19189r = f10;
            return this;
        }

        public b Q(int i10) {
            this.f19188q = i10;
            return this;
        }

        public b R(int i10) {
            this.f19172a = Integer.toString(i10);
            return this;
        }

        public b S(@Nullable String str) {
            this.f19172a = str;
            return this;
        }

        public b T(@Nullable List<byte[]> list) {
            this.f19184m = list;
            return this;
        }

        public b U(@Nullable String str) {
            this.f19173b = str;
            return this;
        }

        public b V(@Nullable String str) {
            this.f19174c = str;
            return this;
        }

        public b W(int i10) {
            this.f19183l = i10;
            return this;
        }

        public b X(@Nullable Metadata metadata) {
            this.f19180i = metadata;
            return this;
        }

        public b Y(int i10) {
            this.f19197z = i10;
            return this;
        }

        public b Z(int i10) {
            this.f19178g = i10;
            return this;
        }

        public b a0(float f10) {
            this.f19191t = f10;
            return this;
        }

        public b b0(@Nullable byte[] bArr) {
            this.f19192u = bArr;
            return this;
        }

        public b c0(int i10) {
            this.f19176e = i10;
            return this;
        }

        public b d0(int i10) {
            this.f19190s = i10;
            return this;
        }

        public b e0(@Nullable String str) {
            this.f19182k = str;
            return this;
        }

        public b f0(int i10) {
            this.f19196y = i10;
            return this;
        }

        public b g0(int i10) {
            this.f19175d = i10;
            return this;
        }

        public b h0(int i10) {
            this.f19193v = i10;
            return this;
        }

        public b i0(long j10) {
            this.f19186o = j10;
            return this;
        }

        public b j0(int i10) {
            this.f19187p = i10;
            return this;
        }

        public b() {
            this.f19177f = -1;
            this.f19178g = -1;
            this.f19183l = -1;
            this.f19186o = Long.MAX_VALUE;
            this.f19187p = -1;
            this.f19188q = -1;
            this.f19189r = -1.0f;
            this.f19191t = 1.0f;
            this.f19193v = -1;
            this.f19195x = -1;
            this.f19196y = -1;
            this.f19197z = -1;
            this.C = -1;
            this.D = 0;
        }

        private b(v0 v0Var) {
            this.f19172a = v0Var.f19146a;
            this.f19173b = v0Var.f19147b;
            this.f19174c = v0Var.f19148c;
            this.f19175d = v0Var.f19149d;
            this.f19176e = v0Var.f19150e;
            this.f19177f = v0Var.f19151f;
            this.f19178g = v0Var.f19152g;
            this.f19179h = v0Var.f19154i;
            this.f19180i = v0Var.f19155j;
            this.f19181j = v0Var.f19156k;
            this.f19182k = v0Var.f19157l;
            this.f19183l = v0Var.f19158m;
            this.f19184m = v0Var.f19159n;
            this.f19185n = v0Var.f19160o;
            this.f19186o = v0Var.f19161p;
            this.f19187p = v0Var.f19162q;
            this.f19188q = v0Var.f19163r;
            this.f19189r = v0Var.f19164s;
            this.f19190s = v0Var.f19165t;
            this.f19191t = v0Var.f19166u;
            this.f19192u = v0Var.f19167v;
            this.f19193v = v0Var.f19168w;
            this.f19194w = v0Var.f19169x;
            this.f19195x = v0Var.f19170y;
            this.f19196y = v0Var.f19171z;
            this.f19197z = v0Var.A;
            this.A = v0Var.B;
            this.B = v0Var.C;
            this.C = v0Var.D;
            this.D = v0Var.E;
        }
    }

    @Nullable
    private static <T> T d(@Nullable T t10, @Nullable T t11) {
        if (t10 == null) {
            return t11;
        }
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static v0 e(Bundle bundle) {
        b bVar = new b();
        b7.c.a(bundle);
        int i10 = 0;
        String string = bundle.getString(h(0));
        v0 v0Var = G;
        bVar.S((String) d(string, v0Var.f19146a)).U((String) d(bundle.getString(h(1)), v0Var.f19147b)).V((String) d(bundle.getString(h(2)), v0Var.f19148c)).g0(bundle.getInt(h(3), v0Var.f19149d)).c0(bundle.getInt(h(4), v0Var.f19150e)).G(bundle.getInt(h(5), v0Var.f19151f)).Z(bundle.getInt(h(6), v0Var.f19152g)).I((String) d(bundle.getString(h(7)), v0Var.f19154i)).X((Metadata) d((Metadata) bundle.getParcelable(h(8)), v0Var.f19155j)).K((String) d(bundle.getString(h(9)), v0Var.f19156k)).e0((String) d(bundle.getString(h(10)), v0Var.f19157l)).W(bundle.getInt(h(11), v0Var.f19158m));
        ArrayList arrayList = new ArrayList();
        while (true) {
            byte[] byteArray = bundle.getByteArray(i(i10));
            if (byteArray == null) {
                break;
            }
            arrayList.add(byteArray);
            i10++;
        }
        b M = bVar.T(arrayList).M((DrmInitData) bundle.getParcelable(h(13)));
        String h10 = h(14);
        v0 v0Var2 = G;
        M.i0(bundle.getLong(h10, v0Var2.f19161p)).j0(bundle.getInt(h(15), v0Var2.f19162q)).Q(bundle.getInt(h(16), v0Var2.f19163r)).P(bundle.getFloat(h(17), v0Var2.f19164s)).d0(bundle.getInt(h(18), v0Var2.f19165t)).a0(bundle.getFloat(h(19), v0Var2.f19166u)).b0(bundle.getByteArray(h(20))).h0(bundle.getInt(h(21), v0Var2.f19168w));
        Bundle bundle2 = bundle.getBundle(h(22));
        if (bundle2 != null) {
            bVar.J(c7.c.f3222g.fromBundle(bundle2));
        }
        bVar.H(bundle.getInt(h(23), v0Var2.f19170y)).f0(bundle.getInt(h(24), v0Var2.f19171z)).Y(bundle.getInt(h(25), v0Var2.A)).N(bundle.getInt(h(26), v0Var2.B)).O(bundle.getInt(h(27), v0Var2.C)).F(bundle.getInt(h(28), v0Var2.D)).L(bundle.getInt(h(29), v0Var2.E));
        return bVar.E();
    }

    private static String h(int i10) {
        return Integer.toString(i10, 36);
    }

    private static String i(int i10) {
        return h(12) + "_" + Integer.toString(i10, 36);
    }

    public b b() {
        return new b();
    }

    public v0 c(int i10) {
        return b().L(i10).E();
    }

    public boolean equals(@Nullable Object obj) {
        int i10;
        if (this == obj) {
            return true;
        }
        if (obj == null || v0.class != obj.getClass()) {
            return false;
        }
        v0 v0Var = (v0) obj;
        int i11 = this.F;
        if (i11 != 0 && (i10 = v0Var.F) != 0 && i11 != i10) {
            return false;
        }
        if (this.f19149d == v0Var.f19149d && this.f19150e == v0Var.f19150e && this.f19151f == v0Var.f19151f && this.f19152g == v0Var.f19152g && this.f19158m == v0Var.f19158m && this.f19161p == v0Var.f19161p && this.f19162q == v0Var.f19162q && this.f19163r == v0Var.f19163r && this.f19165t == v0Var.f19165t && this.f19168w == v0Var.f19168w && this.f19170y == v0Var.f19170y && this.f19171z == v0Var.f19171z && this.A == v0Var.A && this.B == v0Var.B && this.C == v0Var.C && this.D == v0Var.D && this.E == v0Var.E && Float.compare(this.f19164s, v0Var.f19164s) == 0 && Float.compare(this.f19166u, v0Var.f19166u) == 0 && b7.s0.c(this.f19146a, v0Var.f19146a) && b7.s0.c(this.f19147b, v0Var.f19147b) && b7.s0.c(this.f19154i, v0Var.f19154i) && b7.s0.c(this.f19156k, v0Var.f19156k) && b7.s0.c(this.f19157l, v0Var.f19157l) && b7.s0.c(this.f19148c, v0Var.f19148c) && Arrays.equals(this.f19167v, v0Var.f19167v) && b7.s0.c(this.f19155j, v0Var.f19155j) && b7.s0.c(this.f19169x, v0Var.f19169x) && b7.s0.c(this.f19160o, v0Var.f19160o) && g(v0Var)) {
            return true;
        }
        return false;
    }

    public int f() {
        int i10;
        int i11 = this.f19162q;
        if (i11 == -1 || (i10 = this.f19163r) == -1) {
            return -1;
        }
        return i11 * i10;
    }

    public boolean g(v0 v0Var) {
        if (this.f19159n.size() != v0Var.f19159n.size()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f19159n.size(); i10++) {
            if (!Arrays.equals(this.f19159n.get(i10), v0Var.f19159n.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int hashCode;
        int i10;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        if (this.F == 0) {
            String str = this.f19146a;
            int i11 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i12 = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + hashCode) * 31;
            String str2 = this.f19147b;
            if (str2 != null) {
                i10 = str2.hashCode();
            } else {
                i10 = 0;
            }
            int i13 = (i12 + i10) * 31;
            String str3 = this.f19148c;
            if (str3 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str3.hashCode();
            }
            int i14 = (((((((((i13 + hashCode2) * 31) + this.f19149d) * 31) + this.f19150e) * 31) + this.f19151f) * 31) + this.f19152g) * 31;
            String str4 = this.f19154i;
            if (str4 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str4.hashCode();
            }
            int i15 = (i14 + hashCode3) * 31;
            Metadata metadata = this.f19155j;
            if (metadata == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = metadata.hashCode();
            }
            int i16 = (i15 + hashCode4) * 31;
            String str5 = this.f19156k;
            if (str5 == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = str5.hashCode();
            }
            int i17 = (i16 + hashCode5) * 31;
            String str6 = this.f19157l;
            if (str6 != null) {
                i11 = str6.hashCode();
            }
            this.F = ((((((((((((((((((((((((((((((i17 + i11) * 31) + this.f19158m) * 31) + ((int) this.f19161p)) * 31) + this.f19162q) * 31) + this.f19163r) * 31) + Float.floatToIntBits(this.f19164s)) * 31) + this.f19165t) * 31) + Float.floatToIntBits(this.f19166u)) * 31) + this.f19168w) * 31) + this.f19170y) * 31) + this.f19171z) * 31) + this.A) * 31) + this.B) * 31) + this.C) * 31) + this.D) * 31) + this.E;
        }
        return this.F;
    }

    public Bundle j(boolean z10) {
        Bundle bundle = new Bundle();
        bundle.putString(h(0), this.f19146a);
        bundle.putString(h(1), this.f19147b);
        bundle.putString(h(2), this.f19148c);
        bundle.putInt(h(3), this.f19149d);
        bundle.putInt(h(4), this.f19150e);
        bundle.putInt(h(5), this.f19151f);
        bundle.putInt(h(6), this.f19152g);
        bundle.putString(h(7), this.f19154i);
        if (!z10) {
            bundle.putParcelable(h(8), this.f19155j);
        }
        bundle.putString(h(9), this.f19156k);
        bundle.putString(h(10), this.f19157l);
        bundle.putInt(h(11), this.f19158m);
        for (int i10 = 0; i10 < this.f19159n.size(); i10++) {
            bundle.putByteArray(i(i10), this.f19159n.get(i10));
        }
        bundle.putParcelable(h(13), this.f19160o);
        bundle.putLong(h(14), this.f19161p);
        bundle.putInt(h(15), this.f19162q);
        bundle.putInt(h(16), this.f19163r);
        bundle.putFloat(h(17), this.f19164s);
        bundle.putInt(h(18), this.f19165t);
        bundle.putFloat(h(19), this.f19166u);
        bundle.putByteArray(h(20), this.f19167v);
        bundle.putInt(h(21), this.f19168w);
        if (this.f19169x != null) {
            bundle.putBundle(h(22), this.f19169x.toBundle());
        }
        bundle.putInt(h(23), this.f19170y);
        bundle.putInt(h(24), this.f19171z);
        bundle.putInt(h(25), this.A);
        bundle.putInt(h(26), this.B);
        bundle.putInt(h(27), this.C);
        bundle.putInt(h(28), this.D);
        bundle.putInt(h(29), this.E);
        return bundle;
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        return j(false);
    }

    public String toString() {
        return "Format(" + this.f19146a + ", " + this.f19147b + ", " + this.f19156k + ", " + this.f19157l + ", " + this.f19154i + ", " + this.f19153h + ", " + this.f19148c + ", [" + this.f19162q + ", " + this.f19163r + ", " + this.f19164s + "], [" + this.f19170y + ", " + this.f19171z + "])";
    }

    private v0(b bVar) {
        this.f19146a = bVar.f19172a;
        this.f19147b = bVar.f19173b;
        this.f19148c = b7.s0.y0(bVar.f19174c);
        this.f19149d = bVar.f19175d;
        this.f19150e = bVar.f19176e;
        int i10 = bVar.f19177f;
        this.f19151f = i10;
        int i11 = bVar.f19178g;
        this.f19152g = i11;
        this.f19153h = i11 != -1 ? i11 : i10;
        this.f19154i = bVar.f19179h;
        this.f19155j = bVar.f19180i;
        this.f19156k = bVar.f19181j;
        this.f19157l = bVar.f19182k;
        this.f19158m = bVar.f19183l;
        this.f19159n = bVar.f19184m == null ? Collections.emptyList() : bVar.f19184m;
        DrmInitData drmInitData = bVar.f19185n;
        this.f19160o = drmInitData;
        this.f19161p = bVar.f19186o;
        this.f19162q = bVar.f19187p;
        this.f19163r = bVar.f19188q;
        this.f19164s = bVar.f19189r;
        this.f19165t = bVar.f19190s == -1 ? 0 : bVar.f19190s;
        this.f19166u = bVar.f19191t == -1.0f ? 1.0f : bVar.f19191t;
        this.f19167v = bVar.f19192u;
        this.f19168w = bVar.f19193v;
        this.f19169x = bVar.f19194w;
        this.f19170y = bVar.f19195x;
        this.f19171z = bVar.f19196y;
        this.A = bVar.f19197z;
        this.B = bVar.A == -1 ? 0 : bVar.A;
        this.C = bVar.B != -1 ? bVar.B : 0;
        this.D = bVar.C;
        if (bVar.D != 0 || drmInitData == null) {
            this.E = bVar.D;
        } else {
            this.E = 1;
        }
    }
}
