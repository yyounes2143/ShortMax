package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.g;
import com.google.android.exoplayer2.v1;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: Tracks.java */
/* loaded from: classes4.dex */
public final class v1 implements g {

    /* renamed from: b  reason: collision with root package name */
    public static final v1 f19198b = new v1(ImmutableList.A());

    /* renamed from: c  reason: collision with root package name */
    public static final g.a<v1> f19199c = new g.a() { // from class: o5.y0
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            v1 f10;
            f10 = v1.f(bundle);
            return f10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableList<a> f19200a;

    /* compiled from: Tracks.java */
    /* loaded from: classes4.dex */
    public static final class a implements g {

        /* renamed from: f  reason: collision with root package name */
        public static final g.a<a> f19201f = new g.a() { // from class: o5.z0
            @Override // com.google.android.exoplayer2.g.a
            public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
                v1.a k10;
                k10 = v1.a.k(bundle);
                return k10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final int f19202a;

        /* renamed from: b  reason: collision with root package name */
        private final n6.u f19203b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f19204c;

        /* renamed from: d  reason: collision with root package name */
        private final int[] f19205d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean[] f19206e;

        public a(n6.u uVar, boolean z10, int[] iArr, boolean[] zArr) {
            boolean z11;
            int i10 = uVar.f62833a;
            this.f19202a = i10;
            boolean z12 = false;
            if (i10 == iArr.length && i10 == zArr.length) {
                z11 = true;
            } else {
                z11 = false;
            }
            b7.a.a(z11);
            this.f19203b = uVar;
            if (z10 && i10 > 1) {
                z12 = true;
            }
            this.f19204c = z12;
            this.f19205d = (int[]) iArr.clone();
            this.f19206e = (boolean[]) zArr.clone();
        }

        private static String j(int i10) {
            return Integer.toString(i10, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ a k(Bundle bundle) {
            n6.u fromBundle = n6.u.f62832f.fromBundle((Bundle) b7.a.e(bundle.getBundle(j(0))));
            return new a(fromBundle, bundle.getBoolean(j(4), false), (int[]) h7.g.a(bundle.getIntArray(j(1)), new int[fromBundle.f62833a]), (boolean[]) h7.g.a(bundle.getBooleanArray(j(3)), new boolean[fromBundle.f62833a]));
        }

        public n6.u b() {
            return this.f19203b;
        }

        public v0 c(int i10) {
            return this.f19203b.c(i10);
        }

        public int d() {
            return this.f19203b.f62835c;
        }

        public boolean e() {
            return this.f19204c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f19204c == aVar.f19204c && this.f19203b.equals(aVar.f19203b) && Arrays.equals(this.f19205d, aVar.f19205d) && Arrays.equals(this.f19206e, aVar.f19206e)) {
                return true;
            }
            return false;
        }

        public boolean f() {
            return com.google.common.primitives.a.a(this.f19206e, true);
        }

        public boolean g(int i10) {
            return this.f19206e[i10];
        }

        public boolean h(int i10) {
            return i(i10, false);
        }

        public int hashCode() {
            return (((((this.f19203b.hashCode() * 31) + (this.f19204c ? 1 : 0)) * 31) + Arrays.hashCode(this.f19205d)) * 31) + Arrays.hashCode(this.f19206e);
        }

        public boolean i(int i10, boolean z10) {
            int i11 = this.f19205d[i10];
            if (i11 != 4 && (!z10 || i11 != 3)) {
                return false;
            }
            return true;
        }

        @Override // com.google.android.exoplayer2.g
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putBundle(j(0), this.f19203b.toBundle());
            bundle.putIntArray(j(1), this.f19205d);
            bundle.putBooleanArray(j(3), this.f19206e);
            bundle.putBoolean(j(4), this.f19204c);
            return bundle;
        }
    }

    public v1(List<a> list) {
        this.f19200a = ImmutableList.u(list);
    }

    private static String e(int i10) {
        return Integer.toString(i10, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ v1 f(Bundle bundle) {
        ImmutableList b10;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(e(0));
        if (parcelableArrayList == null) {
            b10 = ImmutableList.A();
        } else {
            b10 = b7.c.b(a.f19201f, parcelableArrayList);
        }
        return new v1(b10);
    }

    public ImmutableList<a> b() {
        return this.f19200a;
    }

    public boolean c() {
        return this.f19200a.isEmpty();
    }

    public boolean d(int i10) {
        for (int i11 = 0; i11 < this.f19200a.size(); i11++) {
            a aVar = this.f19200a.get(i11);
            if (aVar.f() && aVar.d() == i10) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && v1.class == obj.getClass()) {
            return this.f19200a.equals(((v1) obj).f19200a);
        }
        return false;
    }

    public int hashCode() {
        return this.f19200a.hashCode();
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(e(0), b7.c.d(this.f19200a));
        return bundle;
    }
}
