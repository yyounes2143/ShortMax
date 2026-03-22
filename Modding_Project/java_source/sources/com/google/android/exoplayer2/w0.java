package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.g;
/* compiled from: HeartRating.java */
/* loaded from: classes4.dex */
public final class w0 extends o1 {

    /* renamed from: d  reason: collision with root package name */
    public static final g.a<w0> f19318d = new g.a() { // from class: o5.c0
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            com.google.android.exoplayer2.w0 e10;
            e10 = com.google.android.exoplayer2.w0.e(bundle);
            return e10;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final boolean f19319b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f19320c;

    public w0() {
        this.f19319b = false;
        this.f19320c = false;
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static w0 e(Bundle bundle) {
        boolean z10;
        if (bundle.getInt(c(0), -1) == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        if (bundle.getBoolean(c(1), false)) {
            return new w0(bundle.getBoolean(c(2), false));
        }
        return new w0();
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof w0)) {
            return false;
        }
        w0 w0Var = (w0) obj;
        if (this.f19320c != w0Var.f19320c || this.f19319b != w0Var.f19319b) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return h7.h.b(Boolean.valueOf(this.f19319b), Boolean.valueOf(this.f19320c));
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 0);
        bundle.putBoolean(c(1), this.f19319b);
        bundle.putBoolean(c(2), this.f19320c);
        return bundle;
    }

    public w0(boolean z10) {
        this.f19319b = true;
        this.f19320c = z10;
    }
}
