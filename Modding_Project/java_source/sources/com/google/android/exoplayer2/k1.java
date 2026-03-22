package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.CheckResult;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.g;
import com.google.android.exoplayer2.k1;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: PlaybackParameters.java */
/* loaded from: classes4.dex */
public final class k1 implements g {

    /* renamed from: d  reason: collision with root package name */
    public static final k1 f17819d = new k1(1.0f);

    /* renamed from: e  reason: collision with root package name */
    public static final g.a<k1> f17820e = new g.a() { // from class: o5.k0
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            k1 d10;
            d10 = k1.d(bundle);
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final float f17821a;

    /* renamed from: b  reason: collision with root package name */
    public final float f17822b;

    /* renamed from: c  reason: collision with root package name */
    private final int f17823c;

    public k1(float f10) {
        this(f10, 1.0f);
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k1 d(Bundle bundle) {
        return new k1(bundle.getFloat(c(0), 1.0f), bundle.getFloat(c(1), 1.0f));
    }

    public long b(long j10) {
        return j10 * this.f17823c;
    }

    @CheckResult
    public k1 e(@FloatRange(from = 0.0d, fromInclusive = false) float f10) {
        return new k1(f10, this.f17822b);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k1.class != obj.getClass()) {
            return false;
        }
        k1 k1Var = (k1) obj;
        if (this.f17821a == k1Var.f17821a && this.f17822b == k1Var.f17822b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + Float.floatToRawIntBits(this.f17821a)) * 31) + Float.floatToRawIntBits(this.f17822b);
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putFloat(c(0), this.f17821a);
        bundle.putFloat(c(1), this.f17822b);
        return bundle;
    }

    public String toString() {
        return b7.s0.z("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f17821a), Float.valueOf(this.f17822b));
    }

    public k1(@FloatRange(from = 0.0d, fromInclusive = false) float f10, @FloatRange(from = 0.0d, fromInclusive = false) float f11) {
        b7.a.a(f10 > 0.0f);
        b7.a.a(f11 > 0.0f);
        this.f17821a = f10;
        this.f17822b = f11;
        this.f17823c = Math.round(f10 * 1000.0f);
    }
}
