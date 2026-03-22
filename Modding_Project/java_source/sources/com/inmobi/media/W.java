package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class W {

    /* renamed from: a  reason: collision with root package name */
    public final U0 f24319a;

    /* renamed from: b  reason: collision with root package name */
    public final String f24320b;

    /* renamed from: c  reason: collision with root package name */
    public final Boolean f24321c;

    /* renamed from: d  reason: collision with root package name */
    public final String f24322d;

    /* renamed from: e  reason: collision with root package name */
    public final byte f24323e;

    public W(U0 adUnitTelemetry, String str, Boolean bool, String str2, byte b10) {
        Intrinsics.checkNotNullParameter(adUnitTelemetry, "adUnitTelemetry");
        this.f24319a = adUnitTelemetry;
        this.f24320b = str;
        this.f24321c = bool;
        this.f24322d = str2;
        this.f24323e = b10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof W)) {
            return false;
        }
        W w10 = (W) obj;
        if (Intrinsics.areEqual(this.f24319a, w10.f24319a) && Intrinsics.areEqual(this.f24320b, w10.f24320b) && Intrinsics.areEqual(this.f24321c, w10.f24321c) && Intrinsics.areEqual(this.f24322d, w10.f24322d) && this.f24323e == w10.f24323e) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = this.f24319a.hashCode() * 31;
        String str = this.f24320b;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode3 + hashCode) * 31;
        Boolean bool = this.f24321c;
        if (bool == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = bool.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str2 = this.f24322d;
        if (str2 != null) {
            i10 = str2.hashCode();
        }
        return Byte.hashCode(this.f24323e) + ((i12 + i10) * 31);
    }

    public final String toString() {
        return "AdNotReadyMetadata(adUnitTelemetry=" + this.f24319a + ", creativeType=" + this.f24320b + ", isRewarded=" + this.f24321c + ", markupType=" + this.f24322d + ", adState=" + ((int) this.f24323e) + ')';
    }
}
