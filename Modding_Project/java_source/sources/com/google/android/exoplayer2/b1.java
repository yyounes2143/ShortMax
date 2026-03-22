package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.o;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: MediaPeriodInfo.java */
/* loaded from: classes4.dex */
final class b1 {

    /* renamed from: a  reason: collision with root package name */
    public final o.b f17431a;

    /* renamed from: b  reason: collision with root package name */
    public final long f17432b;

    /* renamed from: c  reason: collision with root package name */
    public final long f17433c;

    /* renamed from: d  reason: collision with root package name */
    public final long f17434d;

    /* renamed from: e  reason: collision with root package name */
    public final long f17435e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f17436f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f17437g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f17438h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f17439i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b1(o.b bVar, long j10, long j11, long j12, long j13, boolean z10, boolean z11, boolean z12, boolean z13) {
        boolean z14;
        boolean z15;
        boolean z16 = true;
        if (z13 && !z11) {
            z14 = false;
        } else {
            z14 = true;
        }
        b7.a.a(z14);
        if (z12 && !z11) {
            z15 = false;
        } else {
            z15 = true;
        }
        b7.a.a(z15);
        if (z10 && (z11 || z12 || z13)) {
            z16 = false;
        }
        b7.a.a(z16);
        this.f17431a = bVar;
        this.f17432b = j10;
        this.f17433c = j11;
        this.f17434d = j12;
        this.f17435e = j13;
        this.f17436f = z10;
        this.f17437g = z11;
        this.f17438h = z12;
        this.f17439i = z13;
    }

    public b1 a(long j10) {
        if (j10 == this.f17433c) {
            return this;
        }
        return new b1(this.f17431a, this.f17432b, j10, this.f17434d, this.f17435e, this.f17436f, this.f17437g, this.f17438h, this.f17439i);
    }

    public b1 b(long j10) {
        if (j10 == this.f17432b) {
            return this;
        }
        return new b1(this.f17431a, j10, this.f17433c, this.f17434d, this.f17435e, this.f17436f, this.f17437g, this.f17438h, this.f17439i);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b1.class != obj.getClass()) {
            return false;
        }
        b1 b1Var = (b1) obj;
        if (this.f17432b == b1Var.f17432b && this.f17433c == b1Var.f17433c && this.f17434d == b1Var.f17434d && this.f17435e == b1Var.f17435e && this.f17436f == b1Var.f17436f && this.f17437g == b1Var.f17437g && this.f17438h == b1Var.f17438h && this.f17439i == b1Var.f17439i && b7.s0.c(this.f17431a, b1Var.f17431a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f17431a.hashCode()) * 31) + ((int) this.f17432b)) * 31) + ((int) this.f17433c)) * 31) + ((int) this.f17434d)) * 31) + ((int) this.f17435e)) * 31) + (this.f17436f ? 1 : 0)) * 31) + (this.f17437g ? 1 : 0)) * 31) + (this.f17438h ? 1 : 0)) * 31) + (this.f17439i ? 1 : 0);
    }
}
