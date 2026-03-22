package com.google.firebase.sessions;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.DurationUnit;
import kotlin.time.b;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import vt.c2;
import vt.r2;
/* compiled from: TimeProvider.kt */
@st.k
@Metadata
/* loaded from: classes5.dex */
public final class k {
    @NotNull
    public static final k$$b Companion = new k$$b(null);

    /* renamed from: a  reason: collision with root package name */
    private final long f21627a;

    /* renamed from: b  reason: collision with root package name */
    private final long f21628b;

    /* renamed from: c  reason: collision with root package name */
    private final long f21629c;

    public /* synthetic */ k(int i10, long j10, long j11, long j12, r2 r2Var) {
        if (1 != (i10 & 1)) {
            c2.a(i10, 1, k$$a.f21630a.getDescriptor());
        }
        this.f21627a = j10;
        this.f21628b = (i10 & 2) == 0 ? 1000 * j10 : j11;
        if ((i10 & 4) == 0) {
            this.f21629c = j10 / 1000;
        } else {
            this.f21629c = j12;
        }
    }

    public static final /* synthetic */ void d(k kVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        dVar.encodeLongElement(serialDescriptor, 0, kVar.f21627a);
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 1) || kVar.f21628b != kVar.f21627a * 1000) {
            dVar.encodeLongElement(serialDescriptor, 1, kVar.f21628b);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 2) || kVar.f21629c != kVar.f21627a / 1000) {
            dVar.encodeLongElement(serialDescriptor, 2, kVar.f21629c);
        }
    }

    public final long a() {
        return this.f21629c;
    }

    public final long b() {
        return this.f21628b;
    }

    public final long c(@NotNull k time) {
        Intrinsics.checkNotNullParameter(time, "time");
        b.a aVar = kotlin.time.b.f61250b;
        return kotlin.time.c.t(this.f21627a - time.f21627a, DurationUnit.MILLISECONDS);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof k) && this.f21627a == ((k) obj).f21627a) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Long.hashCode(this.f21627a);
    }

    @NotNull
    public String toString() {
        return "Time(ms=" + this.f21627a + ')';
    }

    public k(long j10) {
        this.f21627a = j10;
        long j11 = 1000;
        this.f21628b = j10 * j11;
        this.f21629c = j10 / j11;
    }
}
