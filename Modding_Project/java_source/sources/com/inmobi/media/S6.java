package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class S6 {

    /* renamed from: a  reason: collision with root package name */
    public final long f24136a;

    /* renamed from: b  reason: collision with root package name */
    public final String f24137b;

    /* renamed from: c  reason: collision with root package name */
    public final String f24138c;

    /* renamed from: d  reason: collision with root package name */
    public final String f24139d;

    /* renamed from: e  reason: collision with root package name */
    public final String f24140e;

    /* renamed from: f  reason: collision with root package name */
    public final String f24141f;

    /* renamed from: g  reason: collision with root package name */
    public final String f24142g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f24143h;

    /* renamed from: i  reason: collision with root package name */
    public final String f24144i;

    public S6(long j10, String impressionId, String placementType, String adType, String markupType, String creativeType, String metaDataBlob, boolean z10, String landingScheme) {
        Intrinsics.checkNotNullParameter(impressionId, "impressionId");
        Intrinsics.checkNotNullParameter(placementType, "placementType");
        Intrinsics.checkNotNullParameter(adType, "adType");
        Intrinsics.checkNotNullParameter(markupType, "markupType");
        Intrinsics.checkNotNullParameter(creativeType, "creativeType");
        Intrinsics.checkNotNullParameter(metaDataBlob, "metaDataBlob");
        Intrinsics.checkNotNullParameter(landingScheme, "landingScheme");
        this.f24136a = j10;
        this.f24137b = impressionId;
        this.f24138c = placementType;
        this.f24139d = adType;
        this.f24140e = markupType;
        this.f24141f = creativeType;
        this.f24142g = metaDataBlob;
        this.f24143h = z10;
        this.f24144i = landingScheme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof S6)) {
            return false;
        }
        S6 s62 = (S6) obj;
        if (this.f24136a == s62.f24136a && Intrinsics.areEqual(this.f24137b, s62.f24137b) && Intrinsics.areEqual(this.f24138c, s62.f24138c) && Intrinsics.areEqual(this.f24139d, s62.f24139d) && Intrinsics.areEqual(this.f24140e, s62.f24140e) && Intrinsics.areEqual(this.f24141f, s62.f24141f) && Intrinsics.areEqual(this.f24142g, s62.f24142g) && this.f24143h == s62.f24143h && Intrinsics.areEqual(this.f24144i, s62.f24144i)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode = this.f24137b.hashCode();
        int hashCode2 = this.f24138c.hashCode();
        int hashCode3 = this.f24139d.hashCode();
        int hashCode4 = this.f24140e.hashCode();
        int hashCode5 = this.f24141f.hashCode();
        int hashCode6 = (this.f24142g.hashCode() + ((hashCode5 + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + (Long.hashCode(this.f24136a) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        boolean z10 = this.f24143h;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        return this.f24144i.hashCode() + ((hashCode6 + i10) * 31);
    }

    public final String toString() {
        return "LandingPageTelemetryMetaData(placementId=" + this.f24136a + ", impressionId=" + this.f24137b + ", placementType=" + this.f24138c + ", adType=" + this.f24139d + ", markupType=" + this.f24140e + ", creativeType=" + this.f24141f + ", metaDataBlob=" + this.f24142g + ", isRewarded=" + this.f24143h + ", landingScheme=" + this.f24144i + ')';
    }
}
