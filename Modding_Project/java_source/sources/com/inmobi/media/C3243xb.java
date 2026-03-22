package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.xb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3243xb {

    /* renamed from: a  reason: collision with root package name */
    public final byte f25433a;

    /* renamed from: b  reason: collision with root package name */
    public final String f25434b;

    public C3243xb(byte b10, String assetUrl) {
        Intrinsics.checkNotNullParameter(assetUrl, "assetUrl");
        this.f25433a = b10;
        this.f25434b = assetUrl;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3243xb)) {
            return false;
        }
        C3243xb c3243xb = (C3243xb) obj;
        if (this.f25433a == c3243xb.f25433a && Intrinsics.areEqual(this.f25434b, c3243xb.f25434b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f25434b.hashCode() + (Byte.hashCode(this.f25433a) * 31);
    }

    public final String toString() {
        return "RawAsset(mRawAssetType=" + ((int) this.f25433a) + ", assetUrl=" + this.f25434b + ')';
    }
}
