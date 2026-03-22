package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.y5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3253y5 {

    /* renamed from: a  reason: collision with root package name */
    public final EnumC2868a7 f25450a;

    /* renamed from: b  reason: collision with root package name */
    public final double f25451b;

    public C3253y5(EnumC2868a7 logLevel, double d10) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        this.f25450a = logLevel;
        this.f25451b = d10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3253y5)) {
            return false;
        }
        C3253y5 c3253y5 = (C3253y5) obj;
        if (this.f25450a == c3253y5.f25450a && Double.compare(this.f25451b, c3253y5.f25451b) == 0) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Double.hashCode(this.f25451b) + (this.f25450a.hashCode() * 31);
    }

    public final String toString() {
        return "LoggerConfiguration(logLevel=" + this.f25450a + ", samplingFactor=" + this.f25451b + ')';
    }
}
