package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.g;
import com.google.android.exoplayer2.q1;
/* compiled from: StarRating.java */
/* loaded from: classes4.dex */
public final class q1 extends o1 {

    /* renamed from: d  reason: collision with root package name */
    public static final g.a<q1> f18163d = new g.a() { // from class: o5.s0
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            q1 e10;
            e10 = q1.e(bundle);
            return e10;
        }
    };
    @IntRange(from = 1)

    /* renamed from: b  reason: collision with root package name */
    private final int f18164b;

    /* renamed from: c  reason: collision with root package name */
    private final float f18165c;

    public q1(@IntRange(from = 1) int i10) {
        b7.a.b(i10 > 0, "maxStars must be a positive integer");
        this.f18164b = i10;
        this.f18165c = -1.0f;
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static q1 e(Bundle bundle) {
        boolean z10 = false;
        if (bundle.getInt(c(0), -1) == 2) {
            z10 = true;
        }
        b7.a.a(z10);
        int i10 = bundle.getInt(c(1), 5);
        float f10 = bundle.getFloat(c(2), -1.0f);
        if (f10 == -1.0f) {
            return new q1(i10);
        }
        return new q1(i10, f10);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof q1)) {
            return false;
        }
        q1 q1Var = (q1) obj;
        if (this.f18164b != q1Var.f18164b || this.f18165c != q1Var.f18165c) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return h7.h.b(Integer.valueOf(this.f18164b), Float.valueOf(this.f18165c));
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 2);
        bundle.putInt(c(1), this.f18164b);
        bundle.putFloat(c(2), this.f18165c);
        return bundle;
    }

    public q1(@IntRange(from = 1) int i10, @FloatRange(from = 0.0d) float f10) {
        boolean z10 = false;
        b7.a.b(i10 > 0, "maxStars must be a positive integer");
        if (f10 >= 0.0f && f10 <= i10) {
            z10 = true;
        }
        b7.a.b(z10, "starRating is out of range [0, maxStars]");
        this.f18164b = i10;
        this.f18165c = f10;
    }
}
