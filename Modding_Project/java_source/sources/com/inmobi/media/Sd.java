package com.inmobi.media;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Sd {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f24154a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f24155b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f24156c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f24157d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f24158e;

    /* renamed from: f  reason: collision with root package name */
    public final List f24159f;

    /* renamed from: g  reason: collision with root package name */
    public final double f24160g;

    public Sd(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, List priorityEventsList, double d10) {
        Intrinsics.checkNotNullParameter(priorityEventsList, "priorityEventsList");
        this.f24154a = z10;
        this.f24155b = z11;
        this.f24156c = z12;
        this.f24157d = z13;
        this.f24158e = z14;
        this.f24159f = priorityEventsList;
        this.f24160g = d10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Sd)) {
            return false;
        }
        Sd sd2 = (Sd) obj;
        if (this.f24154a == sd2.f24154a && this.f24155b == sd2.f24155b && this.f24156c == sd2.f24156c && this.f24157d == sd2.f24157d && this.f24158e == sd2.f24158e && Intrinsics.areEqual(this.f24159f, sd2.f24159f) && Double.compare(this.f24160g, sd2.f24160g) == 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean] */
    public final int hashCode() {
        boolean z10 = this.f24154a;
        int i10 = 1;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int i11 = r02 * 31;
        ?? r22 = this.f24155b;
        int i12 = r22;
        if (r22 != 0) {
            i12 = 1;
        }
        int i13 = (i11 + i12) * 31;
        ?? r23 = this.f24156c;
        int i14 = r23;
        if (r23 != 0) {
            i14 = 1;
        }
        int i15 = (i13 + i14) * 31;
        ?? r24 = this.f24157d;
        int i16 = r24;
        if (r24 != 0) {
            i16 = 1;
        }
        int i17 = (i15 + i16) * 31;
        boolean z11 = this.f24158e;
        if (!z11) {
            i10 = z11 ? 1 : 0;
        }
        return Double.hashCode(this.f24160g) + ((this.f24159f.hashCode() + ((i17 + i10) * 31)) * 31);
    }

    public final String toString() {
        return "TelemetryConfigMetaData(isTelemetryEnabled=" + this.f24154a + ", isImageEnabled=" + this.f24155b + ", isGIFEnabled=" + this.f24156c + ", isVideoEnabled=" + this.f24157d + ", isGeneralEventsDisabled=" + this.f24158e + ", priorityEventsList=" + this.f24159f + ", samplingFactor=" + this.f24160g + ')';
    }
}
