package io.bidmachine.media3.exoplayer;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import io.bidmachine.media3.exoplayer.source.r;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MediaPeriodInfo.java */
/* loaded from: classes8.dex */
public final class m1 {

    /* renamed from: a  reason: collision with root package name */
    public final r.b f56452a;

    /* renamed from: b  reason: collision with root package name */
    public final long f56453b;

    /* renamed from: c  reason: collision with root package name */
    public final long f56454c;

    /* renamed from: d  reason: collision with root package name */
    public final long f56455d;

    /* renamed from: e  reason: collision with root package name */
    public final long f56456e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f56457f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f56458g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f56459h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f56460i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f56461j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m1(r.b bVar, long j10, long j11, long j12, long j13, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        boolean z15;
        boolean z16;
        boolean z17 = true;
        if (z14 && !z12) {
            z15 = false;
        } else {
            z15 = true;
        }
        cn.a.a(z15);
        if (z13 && !z12) {
            z16 = false;
        } else {
            z16 = true;
        }
        cn.a.a(z16);
        if (z11 && (z12 || z13 || z14)) {
            z17 = false;
        }
        cn.a.a(z17);
        this.f56452a = bVar;
        this.f56453b = j10;
        this.f56454c = j11;
        this.f56455d = j12;
        this.f56456e = j13;
        this.f56457f = z10;
        this.f56458g = z11;
        this.f56459h = z12;
        this.f56460i = z13;
        this.f56461j = z14;
    }

    public m1 a(long j10) {
        if (j10 == this.f56454c) {
            return this;
        }
        return new m1(this.f56452a, this.f56453b, j10, this.f56455d, this.f56456e, this.f56457f, this.f56458g, this.f56459h, this.f56460i, this.f56461j);
    }

    public m1 b(long j10) {
        if (j10 == this.f56453b) {
            return this;
        }
        return new m1(this.f56452a, j10, this.f56454c, this.f56455d, this.f56456e, this.f56457f, this.f56458g, this.f56459h, this.f56460i, this.f56461j);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m1.class != obj.getClass()) {
            return false;
        }
        m1 m1Var = (m1) obj;
        if (this.f56453b == m1Var.f56453b && this.f56454c == m1Var.f56454c && this.f56455d == m1Var.f56455d && this.f56456e == m1Var.f56456e && this.f56457f == m1Var.f56457f && this.f56458g == m1Var.f56458g && this.f56459h == m1Var.f56459h && this.f56460i == m1Var.f56460i && this.f56461j == m1Var.f56461j && Objects.equals(this.f56452a, m1Var.f56452a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f56452a.hashCode()) * 31) + ((int) this.f56453b)) * 31) + ((int) this.f56454c)) * 31) + ((int) this.f56455d)) * 31) + ((int) this.f56456e)) * 31) + (this.f56457f ? 1 : 0)) * 31) + (this.f56458g ? 1 : 0)) * 31) + (this.f56459h ? 1 : 0)) * 31) + (this.f56460i ? 1 : 0)) * 31) + (this.f56461j ? 1 : 0);
    }
}
