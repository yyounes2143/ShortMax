package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.g;
import com.google.android.exoplayer2.t1;
/* compiled from: ThumbRating.java */
/* loaded from: classes4.dex */
public final class t1 extends o1 {

    /* renamed from: d  reason: collision with root package name */
    public static final g.a<t1> f18473d = new g.a() { // from class: o5.u0
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            t1 e10;
            e10 = t1.e(bundle);
            return e10;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final boolean f18474b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f18475c;

    public t1() {
        this.f18474b = false;
        this.f18475c = false;
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static t1 e(Bundle bundle) {
        boolean z10;
        if (bundle.getInt(c(0), -1) == 3) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        if (bundle.getBoolean(c(1), false)) {
            return new t1(bundle.getBoolean(c(2), false));
        }
        return new t1();
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof t1)) {
            return false;
        }
        t1 t1Var = (t1) obj;
        if (this.f18475c != t1Var.f18475c || this.f18474b != t1Var.f18474b) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return h7.h.b(Boolean.valueOf(this.f18474b), Boolean.valueOf(this.f18475c));
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 3);
        bundle.putBoolean(c(1), this.f18474b);
        bundle.putBoolean(c(2), this.f18475c);
        return bundle;
    }

    public t1(boolean z10) {
        this.f18474b = true;
        this.f18475c = z10;
    }
}
