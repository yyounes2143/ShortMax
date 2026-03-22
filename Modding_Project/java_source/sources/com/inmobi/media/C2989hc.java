package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.hc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2989hc {

    /* renamed from: a  reason: collision with root package name */
    public final Z f24816a;

    /* renamed from: b  reason: collision with root package name */
    public final String f24817b;

    /* renamed from: c  reason: collision with root package name */
    public final String f24818c;

    /* renamed from: d  reason: collision with root package name */
    public final int f24819d;

    /* renamed from: e  reason: collision with root package name */
    public final String f24820e;

    /* renamed from: f  reason: collision with root package name */
    public final String f24821f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f24822g;

    /* renamed from: h  reason: collision with root package name */
    public final int f24823h;

    /* renamed from: i  reason: collision with root package name */
    public final T0 f24824i;

    /* renamed from: j  reason: collision with root package name */
    public final C3069mc f24825j;

    /* renamed from: k  reason: collision with root package name */
    public final String f24826k;

    public C2989hc(Z placement, String markupType, String telemetryMetadataBlob, int i10, String creativeType, String creativeId, boolean z10, int i11, T0 t02, C3069mc c3069mc, String str) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(markupType, "markupType");
        Intrinsics.checkNotNullParameter(telemetryMetadataBlob, "telemetryMetadataBlob");
        Intrinsics.checkNotNullParameter(creativeType, "creativeType");
        Intrinsics.checkNotNullParameter(creativeId, "creativeId");
        this.f24816a = placement;
        this.f24817b = markupType;
        this.f24818c = telemetryMetadataBlob;
        this.f24819d = i10;
        this.f24820e = creativeType;
        this.f24821f = creativeId;
        this.f24822g = z10;
        this.f24823h = i11;
        this.f24824i = t02;
        this.f24825j = c3069mc;
        this.f24826k = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2989hc)) {
            return false;
        }
        C2989hc c2989hc = (C2989hc) obj;
        if (Intrinsics.areEqual(this.f24816a, c2989hc.f24816a) && Intrinsics.areEqual(this.f24817b, c2989hc.f24817b) && Intrinsics.areEqual(this.f24818c, c2989hc.f24818c) && this.f24819d == c2989hc.f24819d && Intrinsics.areEqual(this.f24820e, c2989hc.f24820e) && Intrinsics.areEqual(this.f24821f, c2989hc.f24821f) && this.f24822g == c2989hc.f24822g && this.f24823h == c2989hc.f24823h && Intrinsics.areEqual(this.f24824i, c2989hc.f24824i) && Intrinsics.areEqual(this.f24825j, c2989hc.f24825j) && Intrinsics.areEqual(this.f24826k, c2989hc.f24826k)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = this.f24817b.hashCode();
        int hashCode4 = this.f24818c.hashCode();
        int hashCode5 = Integer.hashCode(this.f24819d);
        int hashCode6 = (this.f24821f.hashCode() + ((this.f24820e.hashCode() + ((hashCode5 + ((hashCode4 + ((hashCode3 + (this.f24816a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        boolean z10 = this.f24822g;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        int hashCode7 = (Integer.hashCode(this.f24823h) + ((hashCode6 + i10) * 31)) * 31;
        T0 t02 = this.f24824i;
        int i11 = 0;
        if (t02 == null) {
            hashCode = 0;
        } else {
            hashCode = t02.hashCode();
        }
        int i12 = (hashCode7 + hashCode) * 31;
        C3069mc c3069mc = this.f24825j;
        if (c3069mc == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = Integer.hashCode(c3069mc.f25044a);
        }
        int i13 = (i12 + hashCode2) * 31;
        String str = this.f24826k;
        if (str != null) {
            i11 = str.hashCode();
        }
        return i13 + i11;
    }

    public final String toString() {
        return "RenderViewMetaData(placement=" + this.f24816a + ", markupType=" + this.f24817b + ", telemetryMetadataBlob=" + this.f24818c + ", internetAvailabilityAdRetryCount=" + this.f24819d + ", creativeType=" + this.f24820e + ", creativeId=" + this.f24821f + ", isRewarded=" + this.f24822g + ", adIndex=" + this.f24823h + ", adUnitTelemetryData=" + this.f24824i + ", renderViewTelemetryData=" + this.f24825j + ", renderViewId=" + this.f24826k + ')';
    }
}
