package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.g;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.Arrays;
import java.util.List;
/* compiled from: MediaMetadata.java */
/* loaded from: classes4.dex */
public final class z0 implements g {
    public static final z0 G = new b().F();
    public static final g.a<z0> H = new g.a() { // from class: o5.i0
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            com.google.android.exoplayer2.z0 c10;
            c10 = com.google.android.exoplayer2.z0.c(bundle);
            return c10;
        }
    };
    @Nullable
    public final Integer A;
    @Nullable
    public final Integer B;
    @Nullable
    public final CharSequence C;
    @Nullable
    public final CharSequence D;
    @Nullable
    public final CharSequence E;
    @Nullable
    public final Bundle F;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final CharSequence f19429a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final CharSequence f19430b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final CharSequence f19431c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final CharSequence f19432d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final CharSequence f19433e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final CharSequence f19434f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final CharSequence f19435g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final o1 f19436h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final o1 f19437i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final byte[] f19438j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final Integer f19439k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public final Uri f19440l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public final Integer f19441m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    public final Integer f19442n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    public final Integer f19443o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    public final Boolean f19444p;
    @Nullable
    @Deprecated

    /* renamed from: q  reason: collision with root package name */
    public final Integer f19445q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    public final Integer f19446r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    public final Integer f19447s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    public final Integer f19448t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    public final Integer f19449u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    public final Integer f19450v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    public final Integer f19451w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    public final CharSequence f19452x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    public final CharSequence f19453y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    public final CharSequence f19454z;

    /* compiled from: MediaMetadata.java */
    /* loaded from: classes4.dex */
    public static final class b {
        @Nullable
        private Integer A;
        @Nullable
        private CharSequence B;
        @Nullable
        private CharSequence C;
        @Nullable
        private CharSequence D;
        @Nullable
        private Bundle E;
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private CharSequence f19455a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private CharSequence f19456b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private CharSequence f19457c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private CharSequence f19458d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private CharSequence f19459e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private CharSequence f19460f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private CharSequence f19461g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private o1 f19462h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private o1 f19463i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private byte[] f19464j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private Integer f19465k;
        @Nullable

        /* renamed from: l  reason: collision with root package name */
        private Uri f19466l;
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private Integer f19467m;
        @Nullable

        /* renamed from: n  reason: collision with root package name */
        private Integer f19468n;
        @Nullable

        /* renamed from: o  reason: collision with root package name */
        private Integer f19469o;
        @Nullable

        /* renamed from: p  reason: collision with root package name */
        private Boolean f19470p;
        @Nullable

        /* renamed from: q  reason: collision with root package name */
        private Integer f19471q;
        @Nullable

        /* renamed from: r  reason: collision with root package name */
        private Integer f19472r;
        @Nullable

        /* renamed from: s  reason: collision with root package name */
        private Integer f19473s;
        @Nullable

        /* renamed from: t  reason: collision with root package name */
        private Integer f19474t;
        @Nullable

        /* renamed from: u  reason: collision with root package name */
        private Integer f19475u;
        @Nullable

        /* renamed from: v  reason: collision with root package name */
        private Integer f19476v;
        @Nullable

        /* renamed from: w  reason: collision with root package name */
        private CharSequence f19477w;
        @Nullable

        /* renamed from: x  reason: collision with root package name */
        private CharSequence f19478x;
        @Nullable

        /* renamed from: y  reason: collision with root package name */
        private CharSequence f19479y;
        @Nullable

        /* renamed from: z  reason: collision with root package name */
        private Integer f19480z;

        public z0 F() {
            return new z0(this);
        }

        public b G(byte[] bArr, int i10) {
            if (this.f19464j == null || b7.s0.c(Integer.valueOf(i10), 3) || !b7.s0.c(this.f19465k, 3)) {
                this.f19464j = (byte[]) bArr.clone();
                this.f19465k = Integer.valueOf(i10);
            }
            return this;
        }

        public b H(@Nullable z0 z0Var) {
            if (z0Var == null) {
                return this;
            }
            CharSequence charSequence = z0Var.f19429a;
            if (charSequence != null) {
                i0(charSequence);
            }
            CharSequence charSequence2 = z0Var.f19430b;
            if (charSequence2 != null) {
                M(charSequence2);
            }
            CharSequence charSequence3 = z0Var.f19431c;
            if (charSequence3 != null) {
                L(charSequence3);
            }
            CharSequence charSequence4 = z0Var.f19432d;
            if (charSequence4 != null) {
                K(charSequence4);
            }
            CharSequence charSequence5 = z0Var.f19433e;
            if (charSequence5 != null) {
                U(charSequence5);
            }
            CharSequence charSequence6 = z0Var.f19434f;
            if (charSequence6 != null) {
                h0(charSequence6);
            }
            CharSequence charSequence7 = z0Var.f19435g;
            if (charSequence7 != null) {
                S(charSequence7);
            }
            o1 o1Var = z0Var.f19436h;
            if (o1Var != null) {
                m0(o1Var);
            }
            o1 o1Var2 = z0Var.f19437i;
            if (o1Var2 != null) {
                Z(o1Var2);
            }
            byte[] bArr = z0Var.f19438j;
            if (bArr != null) {
                N(bArr, z0Var.f19439k);
            }
            Uri uri = z0Var.f19440l;
            if (uri != null) {
                O(uri);
            }
            Integer num = z0Var.f19441m;
            if (num != null) {
                l0(num);
            }
            Integer num2 = z0Var.f19442n;
            if (num2 != null) {
                k0(num2);
            }
            Integer num3 = z0Var.f19443o;
            if (num3 != null) {
                W(num3);
            }
            Boolean bool = z0Var.f19444p;
            if (bool != null) {
                Y(bool);
            }
            Integer num4 = z0Var.f19445q;
            if (num4 != null) {
                c0(num4);
            }
            Integer num5 = z0Var.f19446r;
            if (num5 != null) {
                c0(num5);
            }
            Integer num6 = z0Var.f19447s;
            if (num6 != null) {
                b0(num6);
            }
            Integer num7 = z0Var.f19448t;
            if (num7 != null) {
                a0(num7);
            }
            Integer num8 = z0Var.f19449u;
            if (num8 != null) {
                f0(num8);
            }
            Integer num9 = z0Var.f19450v;
            if (num9 != null) {
                e0(num9);
            }
            Integer num10 = z0Var.f19451w;
            if (num10 != null) {
                d0(num10);
            }
            CharSequence charSequence8 = z0Var.f19452x;
            if (charSequence8 != null) {
                n0(charSequence8);
            }
            CharSequence charSequence9 = z0Var.f19453y;
            if (charSequence9 != null) {
                Q(charSequence9);
            }
            CharSequence charSequence10 = z0Var.f19454z;
            if (charSequence10 != null) {
                R(charSequence10);
            }
            Integer num11 = z0Var.A;
            if (num11 != null) {
                T(num11);
            }
            Integer num12 = z0Var.B;
            if (num12 != null) {
                j0(num12);
            }
            CharSequence charSequence11 = z0Var.C;
            if (charSequence11 != null) {
                X(charSequence11);
            }
            CharSequence charSequence12 = z0Var.D;
            if (charSequence12 != null) {
                P(charSequence12);
            }
            CharSequence charSequence13 = z0Var.E;
            if (charSequence13 != null) {
                g0(charSequence13);
            }
            Bundle bundle = z0Var.F;
            if (bundle != null) {
                V(bundle);
            }
            return this;
        }

        public b I(Metadata metadata) {
            for (int i10 = 0; i10 < metadata.e(); i10++) {
                metadata.d(i10).u(this);
            }
            return this;
        }

        public b J(List<Metadata> list) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                Metadata metadata = list.get(i10);
                for (int i11 = 0; i11 < metadata.e(); i11++) {
                    metadata.d(i11).u(this);
                }
            }
            return this;
        }

        public b K(@Nullable CharSequence charSequence) {
            this.f19458d = charSequence;
            return this;
        }

        public b L(@Nullable CharSequence charSequence) {
            this.f19457c = charSequence;
            return this;
        }

        public b M(@Nullable CharSequence charSequence) {
            this.f19456b = charSequence;
            return this;
        }

        public b N(@Nullable byte[] bArr, @Nullable Integer num) {
            byte[] bArr2;
            if (bArr == null) {
                bArr2 = null;
            } else {
                bArr2 = (byte[]) bArr.clone();
            }
            this.f19464j = bArr2;
            this.f19465k = num;
            return this;
        }

        public b O(@Nullable Uri uri) {
            this.f19466l = uri;
            return this;
        }

        public b P(@Nullable CharSequence charSequence) {
            this.C = charSequence;
            return this;
        }

        public b Q(@Nullable CharSequence charSequence) {
            this.f19478x = charSequence;
            return this;
        }

        public b R(@Nullable CharSequence charSequence) {
            this.f19479y = charSequence;
            return this;
        }

        public b S(@Nullable CharSequence charSequence) {
            this.f19461g = charSequence;
            return this;
        }

        public b T(@Nullable Integer num) {
            this.f19480z = num;
            return this;
        }

        public b U(@Nullable CharSequence charSequence) {
            this.f19459e = charSequence;
            return this;
        }

        public b V(@Nullable Bundle bundle) {
            this.E = bundle;
            return this;
        }

        public b W(@Nullable Integer num) {
            this.f19469o = num;
            return this;
        }

        public b X(@Nullable CharSequence charSequence) {
            this.B = charSequence;
            return this;
        }

        public b Y(@Nullable Boolean bool) {
            this.f19470p = bool;
            return this;
        }

        public b Z(@Nullable o1 o1Var) {
            this.f19463i = o1Var;
            return this;
        }

        public b a0(@IntRange(from = 1, to = 31) @Nullable Integer num) {
            this.f19473s = num;
            return this;
        }

        public b b0(@IntRange(from = 1, to = 12) @Nullable Integer num) {
            this.f19472r = num;
            return this;
        }

        public b c0(@Nullable Integer num) {
            this.f19471q = num;
            return this;
        }

        public b d0(@IntRange(from = 1, to = 31) @Nullable Integer num) {
            this.f19476v = num;
            return this;
        }

        public b e0(@IntRange(from = 1, to = 12) @Nullable Integer num) {
            this.f19475u = num;
            return this;
        }

        public b f0(@Nullable Integer num) {
            this.f19474t = num;
            return this;
        }

        public b g0(@Nullable CharSequence charSequence) {
            this.D = charSequence;
            return this;
        }

        public b h0(@Nullable CharSequence charSequence) {
            this.f19460f = charSequence;
            return this;
        }

        public b i0(@Nullable CharSequence charSequence) {
            this.f19455a = charSequence;
            return this;
        }

        public b j0(@Nullable Integer num) {
            this.A = num;
            return this;
        }

        public b k0(@Nullable Integer num) {
            this.f19468n = num;
            return this;
        }

        public b l0(@Nullable Integer num) {
            this.f19467m = num;
            return this;
        }

        public b m0(@Nullable o1 o1Var) {
            this.f19462h = o1Var;
            return this;
        }

        public b n0(@Nullable CharSequence charSequence) {
            this.f19477w = charSequence;
            return this;
        }

        public b() {
        }

        private b(z0 z0Var) {
            this.f19455a = z0Var.f19429a;
            this.f19456b = z0Var.f19430b;
            this.f19457c = z0Var.f19431c;
            this.f19458d = z0Var.f19432d;
            this.f19459e = z0Var.f19433e;
            this.f19460f = z0Var.f19434f;
            this.f19461g = z0Var.f19435g;
            this.f19462h = z0Var.f19436h;
            this.f19463i = z0Var.f19437i;
            this.f19464j = z0Var.f19438j;
            this.f19465k = z0Var.f19439k;
            this.f19466l = z0Var.f19440l;
            this.f19467m = z0Var.f19441m;
            this.f19468n = z0Var.f19442n;
            this.f19469o = z0Var.f19443o;
            this.f19470p = z0Var.f19444p;
            this.f19471q = z0Var.f19446r;
            this.f19472r = z0Var.f19447s;
            this.f19473s = z0Var.f19448t;
            this.f19474t = z0Var.f19449u;
            this.f19475u = z0Var.f19450v;
            this.f19476v = z0Var.f19451w;
            this.f19477w = z0Var.f19452x;
            this.f19478x = z0Var.f19453y;
            this.f19479y = z0Var.f19454z;
            this.f19480z = z0Var.A;
            this.A = z0Var.B;
            this.B = z0Var.C;
            this.C = z0Var.D;
            this.D = z0Var.E;
            this.E = z0Var.F;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static z0 c(Bundle bundle) {
        Integer num;
        Bundle bundle2;
        Bundle bundle3;
        b bVar = new b();
        b S = bVar.i0(bundle.getCharSequence(d(0))).M(bundle.getCharSequence(d(1))).L(bundle.getCharSequence(d(2))).K(bundle.getCharSequence(d(3))).U(bundle.getCharSequence(d(4))).h0(bundle.getCharSequence(d(5))).S(bundle.getCharSequence(d(6)));
        byte[] byteArray = bundle.getByteArray(d(10));
        if (bundle.containsKey(d(29))) {
            num = Integer.valueOf(bundle.getInt(d(29)));
        } else {
            num = null;
        }
        S.N(byteArray, num).O((Uri) bundle.getParcelable(d(11))).n0(bundle.getCharSequence(d(22))).Q(bundle.getCharSequence(d(23))).R(bundle.getCharSequence(d(24))).X(bundle.getCharSequence(d(27))).P(bundle.getCharSequence(d(28))).g0(bundle.getCharSequence(d(30))).V(bundle.getBundle(d(1000)));
        if (bundle.containsKey(d(8)) && (bundle3 = bundle.getBundle(d(8))) != null) {
            bVar.m0(o1.f18136a.fromBundle(bundle3));
        }
        if (bundle.containsKey(d(9)) && (bundle2 = bundle.getBundle(d(9))) != null) {
            bVar.Z(o1.f18136a.fromBundle(bundle2));
        }
        if (bundle.containsKey(d(12))) {
            bVar.l0(Integer.valueOf(bundle.getInt(d(12))));
        }
        if (bundle.containsKey(d(13))) {
            bVar.k0(Integer.valueOf(bundle.getInt(d(13))));
        }
        if (bundle.containsKey(d(14))) {
            bVar.W(Integer.valueOf(bundle.getInt(d(14))));
        }
        if (bundle.containsKey(d(15))) {
            bVar.Y(Boolean.valueOf(bundle.getBoolean(d(15))));
        }
        if (bundle.containsKey(d(16))) {
            bVar.c0(Integer.valueOf(bundle.getInt(d(16))));
        }
        if (bundle.containsKey(d(17))) {
            bVar.b0(Integer.valueOf(bundle.getInt(d(17))));
        }
        if (bundle.containsKey(d(18))) {
            bVar.a0(Integer.valueOf(bundle.getInt(d(18))));
        }
        if (bundle.containsKey(d(19))) {
            bVar.f0(Integer.valueOf(bundle.getInt(d(19))));
        }
        if (bundle.containsKey(d(20))) {
            bVar.e0(Integer.valueOf(bundle.getInt(d(20))));
        }
        if (bundle.containsKey(d(21))) {
            bVar.d0(Integer.valueOf(bundle.getInt(d(21))));
        }
        if (bundle.containsKey(d(25))) {
            bVar.T(Integer.valueOf(bundle.getInt(d(25))));
        }
        if (bundle.containsKey(d(26))) {
            bVar.j0(Integer.valueOf(bundle.getInt(d(26))));
        }
        return bVar.F();
    }

    private static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    public b b() {
        return new b();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || z0.class != obj.getClass()) {
            return false;
        }
        z0 z0Var = (z0) obj;
        if (b7.s0.c(this.f19429a, z0Var.f19429a) && b7.s0.c(this.f19430b, z0Var.f19430b) && b7.s0.c(this.f19431c, z0Var.f19431c) && b7.s0.c(this.f19432d, z0Var.f19432d) && b7.s0.c(this.f19433e, z0Var.f19433e) && b7.s0.c(this.f19434f, z0Var.f19434f) && b7.s0.c(this.f19435g, z0Var.f19435g) && b7.s0.c(this.f19436h, z0Var.f19436h) && b7.s0.c(this.f19437i, z0Var.f19437i) && Arrays.equals(this.f19438j, z0Var.f19438j) && b7.s0.c(this.f19439k, z0Var.f19439k) && b7.s0.c(this.f19440l, z0Var.f19440l) && b7.s0.c(this.f19441m, z0Var.f19441m) && b7.s0.c(this.f19442n, z0Var.f19442n) && b7.s0.c(this.f19443o, z0Var.f19443o) && b7.s0.c(this.f19444p, z0Var.f19444p) && b7.s0.c(this.f19446r, z0Var.f19446r) && b7.s0.c(this.f19447s, z0Var.f19447s) && b7.s0.c(this.f19448t, z0Var.f19448t) && b7.s0.c(this.f19449u, z0Var.f19449u) && b7.s0.c(this.f19450v, z0Var.f19450v) && b7.s0.c(this.f19451w, z0Var.f19451w) && b7.s0.c(this.f19452x, z0Var.f19452x) && b7.s0.c(this.f19453y, z0Var.f19453y) && b7.s0.c(this.f19454z, z0Var.f19454z) && b7.s0.c(this.A, z0Var.A) && b7.s0.c(this.B, z0Var.B) && b7.s0.c(this.C, z0Var.C) && b7.s0.c(this.D, z0Var.D) && b7.s0.c(this.E, z0Var.E)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return h7.h.b(this.f19429a, this.f19430b, this.f19431c, this.f19432d, this.f19433e, this.f19434f, this.f19435g, this.f19436h, this.f19437i, Integer.valueOf(Arrays.hashCode(this.f19438j)), this.f19439k, this.f19440l, this.f19441m, this.f19442n, this.f19443o, this.f19444p, this.f19446r, this.f19447s, this.f19448t, this.f19449u, this.f19450v, this.f19451w, this.f19452x, this.f19453y, this.f19454z, this.A, this.B, this.C, this.D, this.E);
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence(d(0), this.f19429a);
        bundle.putCharSequence(d(1), this.f19430b);
        bundle.putCharSequence(d(2), this.f19431c);
        bundle.putCharSequence(d(3), this.f19432d);
        bundle.putCharSequence(d(4), this.f19433e);
        bundle.putCharSequence(d(5), this.f19434f);
        bundle.putCharSequence(d(6), this.f19435g);
        bundle.putByteArray(d(10), this.f19438j);
        bundle.putParcelable(d(11), this.f19440l);
        bundle.putCharSequence(d(22), this.f19452x);
        bundle.putCharSequence(d(23), this.f19453y);
        bundle.putCharSequence(d(24), this.f19454z);
        bundle.putCharSequence(d(27), this.C);
        bundle.putCharSequence(d(28), this.D);
        bundle.putCharSequence(d(30), this.E);
        if (this.f19436h != null) {
            bundle.putBundle(d(8), this.f19436h.toBundle());
        }
        if (this.f19437i != null) {
            bundle.putBundle(d(9), this.f19437i.toBundle());
        }
        if (this.f19441m != null) {
            bundle.putInt(d(12), this.f19441m.intValue());
        }
        if (this.f19442n != null) {
            bundle.putInt(d(13), this.f19442n.intValue());
        }
        if (this.f19443o != null) {
            bundle.putInt(d(14), this.f19443o.intValue());
        }
        if (this.f19444p != null) {
            bundle.putBoolean(d(15), this.f19444p.booleanValue());
        }
        if (this.f19446r != null) {
            bundle.putInt(d(16), this.f19446r.intValue());
        }
        if (this.f19447s != null) {
            bundle.putInt(d(17), this.f19447s.intValue());
        }
        if (this.f19448t != null) {
            bundle.putInt(d(18), this.f19448t.intValue());
        }
        if (this.f19449u != null) {
            bundle.putInt(d(19), this.f19449u.intValue());
        }
        if (this.f19450v != null) {
            bundle.putInt(d(20), this.f19450v.intValue());
        }
        if (this.f19451w != null) {
            bundle.putInt(d(21), this.f19451w.intValue());
        }
        if (this.A != null) {
            bundle.putInt(d(25), this.A.intValue());
        }
        if (this.B != null) {
            bundle.putInt(d(26), this.B.intValue());
        }
        if (this.f19439k != null) {
            bundle.putInt(d(29), this.f19439k.intValue());
        }
        if (this.F != null) {
            bundle.putBundle(d(1000), this.F);
        }
        return bundle;
    }

    private z0(b bVar) {
        this.f19429a = bVar.f19455a;
        this.f19430b = bVar.f19456b;
        this.f19431c = bVar.f19457c;
        this.f19432d = bVar.f19458d;
        this.f19433e = bVar.f19459e;
        this.f19434f = bVar.f19460f;
        this.f19435g = bVar.f19461g;
        this.f19436h = bVar.f19462h;
        this.f19437i = bVar.f19463i;
        this.f19438j = bVar.f19464j;
        this.f19439k = bVar.f19465k;
        this.f19440l = bVar.f19466l;
        this.f19441m = bVar.f19467m;
        this.f19442n = bVar.f19468n;
        this.f19443o = bVar.f19469o;
        this.f19444p = bVar.f19470p;
        this.f19445q = bVar.f19471q;
        this.f19446r = bVar.f19471q;
        this.f19447s = bVar.f19472r;
        this.f19448t = bVar.f19473s;
        this.f19449u = bVar.f19474t;
        this.f19450v = bVar.f19475u;
        this.f19451w = bVar.f19476v;
        this.f19452x = bVar.f19477w;
        this.f19453y = bVar.f19478x;
        this.f19454z = bVar.f19479y;
        this.A = bVar.f19480z;
        this.B = bVar.A;
        this.C = bVar.B;
        this.D = bVar.C;
        this.E = bVar.D;
        this.F = bVar.E;
    }
}
