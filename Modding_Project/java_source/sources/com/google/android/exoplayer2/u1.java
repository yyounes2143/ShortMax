package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.g;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.y0;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import o6.c;
/* compiled from: Timeline.java */
/* loaded from: classes4.dex */
public abstract class u1 implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final u1 f18532a = new a();

    /* renamed from: b  reason: collision with root package name */
    public static final g.a<u1> f18533b = new g.a() { // from class: o5.v0
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            u1 b10;
            b10 = u1.b(bundle);
            return b10;
        }
    };

    /* compiled from: Timeline.java */
    /* loaded from: classes4.dex */
    class a extends u1 {
        a() {
        }

        @Override // com.google.android.exoplayer2.u1
        public int f(Object obj) {
            return -1;
        }

        @Override // com.google.android.exoplayer2.u1
        public b k(int i10, b bVar, boolean z10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.u1
        public int m() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.u1
        public Object q(int i10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.u1
        public d s(int i10, d dVar, long j10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.u1
        public int t() {
            return 0;
        }
    }

    /* compiled from: Timeline.java */
    /* loaded from: classes4.dex */
    public static final class b implements g {

        /* renamed from: h  reason: collision with root package name */
        public static final g.a<b> f18534h = new g.a() { // from class: o5.w0
            @Override // com.google.android.exoplayer2.g.a
            public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
                u1.b c10;
                c10 = u1.b.c(bundle);
                return c10;
            }
        };
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public Object f18535a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public Object f18536b;

        /* renamed from: c  reason: collision with root package name */
        public int f18537c;

        /* renamed from: d  reason: collision with root package name */
        public long f18538d;

        /* renamed from: e  reason: collision with root package name */
        public long f18539e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f18540f;

        /* renamed from: g  reason: collision with root package name */
        private o6.c f18541g = o6.c.f63136g;

        /* JADX INFO: Access modifiers changed from: private */
        public static b c(Bundle bundle) {
            o6.c cVar;
            int i10 = bundle.getInt(u(0), 0);
            long j10 = bundle.getLong(u(1), -9223372036854775807L);
            long j11 = bundle.getLong(u(2), 0L);
            boolean z10 = bundle.getBoolean(u(3));
            Bundle bundle2 = bundle.getBundle(u(4));
            if (bundle2 != null) {
                cVar = o6.c.f63138i.fromBundle(bundle2);
            } else {
                cVar = o6.c.f63136g;
            }
            o6.c cVar2 = cVar;
            b bVar = new b();
            bVar.w(null, null, i10, j10, j11, cVar2, z10);
            return bVar;
        }

        private static String u(int i10) {
            return Integer.toString(i10, 36);
        }

        public int d(int i10) {
            return this.f18541g.c(i10).f63147b;
        }

        public long e(int i10, int i11) {
            c.a c10 = this.f18541g.c(i10);
            if (c10.f63147b != -1) {
                return c10.f63151f[i11];
            }
            return -9223372036854775807L;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !b.class.equals(obj.getClass())) {
                return false;
            }
            b bVar = (b) obj;
            if (b7.s0.c(this.f18535a, bVar.f18535a) && b7.s0.c(this.f18536b, bVar.f18536b) && this.f18537c == bVar.f18537c && this.f18538d == bVar.f18538d && this.f18539e == bVar.f18539e && this.f18540f == bVar.f18540f && b7.s0.c(this.f18541g, bVar.f18541g)) {
                return true;
            }
            return false;
        }

        public int f() {
            return this.f18541g.f63140b;
        }

        public int g(long j10) {
            return this.f18541g.d(j10, this.f18538d);
        }

        public int h(long j10) {
            return this.f18541g.e(j10, this.f18538d);
        }

        public int hashCode() {
            int hashCode;
            Object obj = this.f18535a;
            int i10 = 0;
            if (obj == null) {
                hashCode = 0;
            } else {
                hashCode = obj.hashCode();
            }
            int i11 = (217 + hashCode) * 31;
            Object obj2 = this.f18536b;
            if (obj2 != null) {
                i10 = obj2.hashCode();
            }
            long j10 = this.f18538d;
            long j11 = this.f18539e;
            return ((((((((((i11 + i10) * 31) + this.f18537c) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.f18540f ? 1 : 0)) * 31) + this.f18541g.hashCode();
        }

        public long i(int i10) {
            return this.f18541g.c(i10).f63146a;
        }

        public long j() {
            return this.f18541g.f63141c;
        }

        public int k(int i10, int i11) {
            c.a c10 = this.f18541g.c(i10);
            if (c10.f63147b != -1) {
                return c10.f63150e[i11];
            }
            return 0;
        }

        public long l(int i10) {
            return this.f18541g.c(i10).f63152g;
        }

        public long m() {
            return this.f18538d;
        }

        public int n(int i10) {
            return this.f18541g.c(i10).e();
        }

        public int o(int i10, int i11) {
            return this.f18541g.c(i10).f(i11);
        }

        public long p() {
            return b7.s0.Q0(this.f18539e);
        }

        public long q() {
            return this.f18539e;
        }

        public int r() {
            return this.f18541g.f63143e;
        }

        public boolean s(int i10) {
            return !this.f18541g.c(i10).g();
        }

        public boolean t(int i10) {
            return this.f18541g.c(i10).f63153h;
        }

        @Override // com.google.android.exoplayer2.g
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(u(0), this.f18537c);
            bundle.putLong(u(1), this.f18538d);
            bundle.putLong(u(2), this.f18539e);
            bundle.putBoolean(u(3), this.f18540f);
            bundle.putBundle(u(4), this.f18541g.toBundle());
            return bundle;
        }

        public b v(@Nullable Object obj, @Nullable Object obj2, int i10, long j10, long j11) {
            return w(obj, obj2, i10, j10, j11, o6.c.f63136g, false);
        }

        public b w(@Nullable Object obj, @Nullable Object obj2, int i10, long j10, long j11, o6.c cVar, boolean z10) {
            this.f18535a = obj;
            this.f18536b = obj2;
            this.f18537c = i10;
            this.f18538d = j10;
            this.f18539e = j11;
            this.f18541g = cVar;
            this.f18540f = z10;
            return this;
        }
    }

    /* compiled from: Timeline.java */
    /* loaded from: classes4.dex */
    public static final class c extends u1 {

        /* renamed from: c  reason: collision with root package name */
        private final ImmutableList<d> f18542c;

        /* renamed from: d  reason: collision with root package name */
        private final ImmutableList<b> f18543d;

        /* renamed from: e  reason: collision with root package name */
        private final int[] f18544e;

        /* renamed from: f  reason: collision with root package name */
        private final int[] f18545f;

        public c(ImmutableList<d> immutableList, ImmutableList<b> immutableList2, int[] iArr) {
            boolean z10;
            if (immutableList.size() == iArr.length) {
                z10 = true;
            } else {
                z10 = false;
            }
            b7.a.a(z10);
            this.f18542c = immutableList;
            this.f18543d = immutableList2;
            this.f18544e = iArr;
            this.f18545f = new int[iArr.length];
            for (int i10 = 0; i10 < iArr.length; i10++) {
                this.f18545f[iArr[i10]] = i10;
            }
        }

        @Override // com.google.android.exoplayer2.u1
        public int e(boolean z10) {
            if (u()) {
                return -1;
            }
            if (!z10) {
                return 0;
            }
            return this.f18544e[0];
        }

        @Override // com.google.android.exoplayer2.u1
        public int f(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.u1
        public int g(boolean z10) {
            if (u()) {
                return -1;
            }
            if (z10) {
                return this.f18544e[t() - 1];
            }
            return t() - 1;
        }

        @Override // com.google.android.exoplayer2.u1
        public int i(int i10, int i11, boolean z10) {
            if (i11 == 1) {
                return i10;
            }
            if (i10 == g(z10)) {
                if (i11 == 2) {
                    return e(z10);
                }
                return -1;
            } else if (z10) {
                return this.f18544e[this.f18545f[i10] + 1];
            } else {
                return i10 + 1;
            }
        }

        @Override // com.google.android.exoplayer2.u1
        public b k(int i10, b bVar, boolean z10) {
            b bVar2 = this.f18543d.get(i10);
            bVar.w(bVar2.f18535a, bVar2.f18536b, bVar2.f18537c, bVar2.f18538d, bVar2.f18539e, bVar2.f18541g, bVar2.f18540f);
            return bVar;
        }

        @Override // com.google.android.exoplayer2.u1
        public int m() {
            return this.f18543d.size();
        }

        @Override // com.google.android.exoplayer2.u1
        public int p(int i10, int i11, boolean z10) {
            if (i11 == 1) {
                return i10;
            }
            if (i10 == e(z10)) {
                if (i11 == 2) {
                    return g(z10);
                }
                return -1;
            } else if (z10) {
                return this.f18544e[this.f18545f[i10] - 1];
            } else {
                return i10 - 1;
            }
        }

        @Override // com.google.android.exoplayer2.u1
        public Object q(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.u1
        public d s(int i10, d dVar, long j10) {
            d dVar2 = this.f18542c.get(i10);
            dVar.k(dVar2.f18550a, dVar2.f18552c, dVar2.f18553d, dVar2.f18554e, dVar2.f18555f, dVar2.f18556g, dVar2.f18557h, dVar2.f18558i, dVar2.f18560k, dVar2.f18562m, dVar2.f18563n, dVar2.f18564o, dVar2.f18565p, dVar2.f18566q);
            dVar.f18561l = dVar2.f18561l;
            return dVar;
        }

        @Override // com.google.android.exoplayer2.u1
        public int t() {
            return this.f18542c.size();
        }
    }

    /* compiled from: Timeline.java */
    /* loaded from: classes4.dex */
    public static final class d implements g {

        /* renamed from: r  reason: collision with root package name */
        public static final Object f18546r = new Object();

        /* renamed from: s  reason: collision with root package name */
        private static final Object f18547s = new Object();

        /* renamed from: t  reason: collision with root package name */
        private static final y0 f18548t = new y0.c().d("com.google.android.exoplayer2.Timeline").g(Uri.EMPTY).a();

        /* renamed from: u  reason: collision with root package name */
        public static final g.a<d> f18549u = new g.a() { // from class: o5.x0
            @Override // com.google.android.exoplayer2.g.a
            public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
                u1.d c10;
                c10 = u1.d.c(bundle);
                return c10;
            }
        };
        @Nullable
        @Deprecated

        /* renamed from: b  reason: collision with root package name */
        public Object f18551b;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public Object f18553d;

        /* renamed from: e  reason: collision with root package name */
        public long f18554e;

        /* renamed from: f  reason: collision with root package name */
        public long f18555f;

        /* renamed from: g  reason: collision with root package name */
        public long f18556g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f18557h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f18558i;
        @Deprecated

        /* renamed from: j  reason: collision with root package name */
        public boolean f18559j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        public y0.g f18560k;

        /* renamed from: l  reason: collision with root package name */
        public boolean f18561l;

        /* renamed from: m  reason: collision with root package name */
        public long f18562m;

        /* renamed from: n  reason: collision with root package name */
        public long f18563n;

        /* renamed from: o  reason: collision with root package name */
        public int f18564o;

        /* renamed from: p  reason: collision with root package name */
        public int f18565p;

        /* renamed from: q  reason: collision with root package name */
        public long f18566q;

        /* renamed from: a  reason: collision with root package name */
        public Object f18550a = f18546r;

        /* renamed from: c  reason: collision with root package name */
        public y0 f18552c = f18548t;

        /* JADX INFO: Access modifiers changed from: private */
        public static d c(Bundle bundle) {
            y0 y0Var;
            Bundle bundle2 = bundle.getBundle(j(1));
            y0.g gVar = null;
            if (bundle2 != null) {
                y0Var = y0.f19332j.fromBundle(bundle2);
            } else {
                y0Var = null;
            }
            long j10 = bundle.getLong(j(2), -9223372036854775807L);
            long j11 = bundle.getLong(j(3), -9223372036854775807L);
            long j12 = bundle.getLong(j(4), -9223372036854775807L);
            boolean z10 = bundle.getBoolean(j(5), false);
            boolean z11 = bundle.getBoolean(j(6), false);
            Bundle bundle3 = bundle.getBundle(j(7));
            if (bundle3 != null) {
                gVar = y0.g.f19386g.fromBundle(bundle3);
            }
            boolean z12 = bundle.getBoolean(j(8), false);
            long j13 = bundle.getLong(j(9), 0L);
            long j14 = bundle.getLong(j(10), -9223372036854775807L);
            int i10 = bundle.getInt(j(11), 0);
            int i11 = bundle.getInt(j(12), 0);
            long j15 = bundle.getLong(j(13), 0L);
            d dVar = new d();
            dVar.k(f18547s, y0Var, null, j10, j11, j12, z10, z11, gVar, j13, j14, i10, i11, j15);
            dVar.f18561l = z12;
            return dVar;
        }

        private static String j(int i10) {
            return Integer.toString(i10, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Bundle l(boolean z10) {
            y0 y0Var;
            Bundle bundle = new Bundle();
            String j10 = j(1);
            if (z10) {
                y0Var = y0.f19331i;
            } else {
                y0Var = this.f18552c;
            }
            bundle.putBundle(j10, y0Var.toBundle());
            bundle.putLong(j(2), this.f18554e);
            bundle.putLong(j(3), this.f18555f);
            bundle.putLong(j(4), this.f18556g);
            bundle.putBoolean(j(5), this.f18557h);
            bundle.putBoolean(j(6), this.f18558i);
            y0.g gVar = this.f18560k;
            if (gVar != null) {
                bundle.putBundle(j(7), gVar.toBundle());
            }
            bundle.putBoolean(j(8), this.f18561l);
            bundle.putLong(j(9), this.f18562m);
            bundle.putLong(j(10), this.f18563n);
            bundle.putInt(j(11), this.f18564o);
            bundle.putInt(j(12), this.f18565p);
            bundle.putLong(j(13), this.f18566q);
            return bundle;
        }

        public long d() {
            return b7.s0.V(this.f18556g);
        }

        public long e() {
            return b7.s0.Q0(this.f18562m);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !d.class.equals(obj.getClass())) {
                return false;
            }
            d dVar = (d) obj;
            if (b7.s0.c(this.f18550a, dVar.f18550a) && b7.s0.c(this.f18552c, dVar.f18552c) && b7.s0.c(this.f18553d, dVar.f18553d) && b7.s0.c(this.f18560k, dVar.f18560k) && this.f18554e == dVar.f18554e && this.f18555f == dVar.f18555f && this.f18556g == dVar.f18556g && this.f18557h == dVar.f18557h && this.f18558i == dVar.f18558i && this.f18561l == dVar.f18561l && this.f18562m == dVar.f18562m && this.f18563n == dVar.f18563n && this.f18564o == dVar.f18564o && this.f18565p == dVar.f18565p && this.f18566q == dVar.f18566q) {
                return true;
            }
            return false;
        }

        public long f() {
            return this.f18562m;
        }

        public long g() {
            return b7.s0.Q0(this.f18563n);
        }

        public long h() {
            return this.f18566q;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = (((217 + this.f18550a.hashCode()) * 31) + this.f18552c.hashCode()) * 31;
            Object obj = this.f18553d;
            int i10 = 0;
            if (obj == null) {
                hashCode = 0;
            } else {
                hashCode = obj.hashCode();
            }
            int i11 = (hashCode2 + hashCode) * 31;
            y0.g gVar = this.f18560k;
            if (gVar != null) {
                i10 = gVar.hashCode();
            }
            long j10 = this.f18554e;
            long j11 = this.f18555f;
            long j12 = this.f18556g;
            long j13 = this.f18562m;
            long j14 = this.f18563n;
            long j15 = this.f18566q;
            return ((((((((((((((((((((((i11 + i10) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + ((int) (j12 ^ (j12 >>> 32)))) * 31) + (this.f18557h ? 1 : 0)) * 31) + (this.f18558i ? 1 : 0)) * 31) + (this.f18561l ? 1 : 0)) * 31) + ((int) (j13 ^ (j13 >>> 32)))) * 31) + ((int) (j14 ^ (j14 >>> 32)))) * 31) + this.f18564o) * 31) + this.f18565p) * 31) + ((int) (j15 ^ (j15 >>> 32)));
        }

        public boolean i() {
            boolean z10;
            boolean z11;
            boolean z12 = this.f18559j;
            if (this.f18560k != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z12 == z10) {
                z11 = true;
            } else {
                z11 = false;
            }
            b7.a.g(z11);
            if (this.f18560k == null) {
                return false;
            }
            return true;
        }

        public d k(Object obj, @Nullable y0 y0Var, @Nullable Object obj2, long j10, long j11, long j12, boolean z10, boolean z11, @Nullable y0.g gVar, long j13, long j14, int i10, int i11, long j15) {
            y0 y0Var2;
            Object obj3;
            boolean z12;
            y0.h hVar;
            this.f18550a = obj;
            if (y0Var != null) {
                y0Var2 = y0Var;
            } else {
                y0Var2 = f18548t;
            }
            this.f18552c = y0Var2;
            if (y0Var != null && (hVar = y0Var.f19334b) != null) {
                obj3 = hVar.f19404h;
            } else {
                obj3 = null;
            }
            this.f18551b = obj3;
            this.f18553d = obj2;
            this.f18554e = j10;
            this.f18555f = j11;
            this.f18556g = j12;
            this.f18557h = z10;
            this.f18558i = z11;
            if (gVar != null) {
                z12 = true;
            } else {
                z12 = false;
            }
            this.f18559j = z12;
            this.f18560k = gVar;
            this.f18562m = j13;
            this.f18563n = j14;
            this.f18564o = i10;
            this.f18565p = i11;
            this.f18566q = j15;
            this.f18561l = false;
            return this;
        }

        @Override // com.google.android.exoplayer2.g
        public Bundle toBundle() {
            return l(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static u1 b(Bundle bundle) {
        ImmutableList c10 = c(d.f18549u, b7.b.a(bundle, w(0)));
        ImmutableList c11 = c(b.f18534h, b7.b.a(bundle, w(1)));
        int[] intArray = bundle.getIntArray(w(2));
        if (intArray == null) {
            intArray = d(c10.size());
        }
        return new c(c10, c11, intArray);
    }

    private static <T extends g> ImmutableList<T> c(g.a<T> aVar, @Nullable IBinder iBinder) {
        if (iBinder == null) {
            return ImmutableList.A();
        }
        ImmutableList.a aVar2 = new ImmutableList.a();
        ImmutableList<Bundle> a10 = o5.k.a(iBinder);
        for (int i10 = 0; i10 < a10.size(); i10++) {
            aVar2.a(aVar.fromBundle(a10.get(i10)));
        }
        return aVar2.k();
    }

    private static int[] d(int i10) {
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            iArr[i11] = i11;
        }
        return iArr;
    }

    private static String w(int i10) {
        return Integer.toString(i10, 36);
    }

    public int e(boolean z10) {
        if (u()) {
            return -1;
        }
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        int g10;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u1)) {
            return false;
        }
        u1 u1Var = (u1) obj;
        if (u1Var.t() != t() || u1Var.m() != m()) {
            return false;
        }
        d dVar = new d();
        b bVar = new b();
        d dVar2 = new d();
        b bVar2 = new b();
        for (int i10 = 0; i10 < t(); i10++) {
            if (!r(i10, dVar).equals(u1Var.r(i10, dVar2))) {
                return false;
            }
        }
        for (int i11 = 0; i11 < m(); i11++) {
            if (!k(i11, bVar, true).equals(u1Var.k(i11, bVar2, true))) {
                return false;
            }
        }
        int e10 = e(true);
        if (e10 != u1Var.e(true) || (g10 = g(true)) != u1Var.g(true)) {
            return false;
        }
        while (e10 != g10) {
            int i12 = i(e10, 0, true);
            if (i12 != u1Var.i(e10, 0, true)) {
                return false;
            }
            e10 = i12;
        }
        return true;
    }

    public abstract int f(Object obj);

    public int g(boolean z10) {
        if (u()) {
            return -1;
        }
        return t() - 1;
    }

    public final int h(int i10, b bVar, d dVar, int i11, boolean z10) {
        int i12 = j(i10, bVar).f18537c;
        if (r(i12, dVar).f18565p == i10) {
            int i13 = i(i12, i11, z10);
            if (i13 == -1) {
                return -1;
            }
            return r(i13, dVar).f18564o;
        }
        return i10 + 1;
    }

    public int hashCode() {
        d dVar = new d();
        b bVar = new b();
        int t10 = 217 + t();
        for (int i10 = 0; i10 < t(); i10++) {
            t10 = (t10 * 31) + r(i10, dVar).hashCode();
        }
        int m10 = (t10 * 31) + m();
        for (int i11 = 0; i11 < m(); i11++) {
            m10 = (m10 * 31) + k(i11, bVar, true).hashCode();
        }
        int e10 = e(true);
        while (e10 != -1) {
            m10 = (m10 * 31) + e10;
            e10 = i(e10, 0, true);
        }
        return m10;
    }

    public int i(int i10, int i11, boolean z10) {
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 == 2) {
                    if (i10 == g(z10)) {
                        return e(z10);
                    }
                    return i10 + 1;
                }
                throw new IllegalStateException();
            }
            return i10;
        } else if (i10 == g(z10)) {
            return -1;
        } else {
            return i10 + 1;
        }
    }

    public final b j(int i10, b bVar) {
        return k(i10, bVar, false);
    }

    public abstract b k(int i10, b bVar, boolean z10);

    public b l(Object obj, b bVar) {
        return k(f(obj), bVar, true);
    }

    public abstract int m();

    public final Pair<Object, Long> n(d dVar, b bVar, int i10, long j10) {
        return (Pair) b7.a.e(o(dVar, bVar, i10, j10, 0L));
    }

    @Nullable
    public final Pair<Object, Long> o(d dVar, b bVar, int i10, long j10, long j11) {
        b7.a.c(i10, 0, t());
        s(i10, dVar, j11);
        if (j10 == -9223372036854775807L) {
            j10 = dVar.f();
            if (j10 == -9223372036854775807L) {
                return null;
            }
        }
        int i11 = dVar.f18564o;
        j(i11, bVar);
        while (i11 < dVar.f18565p && bVar.f18539e != j10) {
            int i12 = i11 + 1;
            if (j(i12, bVar).f18539e > j10) {
                break;
            }
            i11 = i12;
        }
        k(i11, bVar, true);
        long j12 = j10 - bVar.f18539e;
        long j13 = bVar.f18538d;
        if (j13 != -9223372036854775807L) {
            j12 = Math.min(j12, j13 - 1);
        }
        return Pair.create(b7.a.e(bVar.f18536b), Long.valueOf(Math.max(0L, j12)));
    }

    public int p(int i10, int i11, boolean z10) {
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 == 2) {
                    if (i10 == e(z10)) {
                        return g(z10);
                    }
                    return i10 - 1;
                }
                throw new IllegalStateException();
            }
            return i10;
        } else if (i10 == e(z10)) {
            return -1;
        } else {
            return i10 - 1;
        }
    }

    public abstract Object q(int i10);

    public final d r(int i10, d dVar) {
        return s(i10, dVar, 0L);
    }

    public abstract d s(int i10, d dVar, long j10);

    public abstract int t();

    @Override // com.google.android.exoplayer2.g
    public final Bundle toBundle() {
        return x(false);
    }

    public final boolean u() {
        if (t() == 0) {
            return true;
        }
        return false;
    }

    public final boolean v(int i10, b bVar, d dVar, int i11, boolean z10) {
        if (h(i10, bVar, dVar, i11, z10) == -1) {
            return true;
        }
        return false;
    }

    public final Bundle x(boolean z10) {
        ArrayList arrayList = new ArrayList();
        int t10 = t();
        d dVar = new d();
        for (int i10 = 0; i10 < t10; i10++) {
            arrayList.add(s(i10, dVar, 0L).l(z10));
        }
        ArrayList arrayList2 = new ArrayList();
        int m10 = m();
        b bVar = new b();
        for (int i11 = 0; i11 < m10; i11++) {
            arrayList2.add(k(i11, bVar, false).toBundle());
        }
        int[] iArr = new int[t10];
        if (t10 > 0) {
            iArr[0] = e(true);
        }
        for (int i12 = 1; i12 < t10; i12++) {
            iArr[i12] = i(iArr[i12 - 1], 0, true);
        }
        Bundle bundle = new Bundle();
        b7.b.c(bundle, w(0), new o5.k(arrayList));
        b7.b.c(bundle, w(1), new o5.k(arrayList2));
        bundle.putIntArray(w(2), iArr);
        return bundle;
    }
}
