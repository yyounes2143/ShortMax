package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.g;
import com.google.android.exoplayer2.h1;
/* compiled from: PercentageRating.java */
/* loaded from: classes4.dex */
public final class h1 extends o1 {

    /* renamed from: c  reason: collision with root package name */
    public static final g.a<h1> f17703c = new g.a() { // from class: o5.j0
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            h1 e10;
            e10 = h1.e(bundle);
            return e10;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final float f17704b;

    public h1() {
        this.f17704b = -1.0f;
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static h1 e(Bundle bundle) {
        boolean z10 = false;
        if (bundle.getInt(c(0), -1) == 1) {
            z10 = true;
        }
        b7.a.a(z10);
        float f10 = bundle.getFloat(c(1), -1.0f);
        if (f10 == -1.0f) {
            return new h1();
        }
        return new h1(f10);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof h1) || this.f17704b != ((h1) obj).f17704b) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return h7.h.b(Float.valueOf(this.f17704b));
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 1);
        bundle.putFloat(c(1), this.f17704b);
        return bundle;
    }

    public h1(@FloatRange(from = 0.0d, to = 100.0d) float f10) {
        b7.a.b(f10 >= 0.0f && f10 <= 100.0f, "percent must be in the range of [0, 100]");
        this.f17704b = f10;
    }
}
