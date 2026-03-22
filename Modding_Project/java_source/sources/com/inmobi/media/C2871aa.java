package com.inmobi.media;

import com.inmobi.commons.core.configs.SignalsConfig;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.aa  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2871aa {

    /* renamed from: a  reason: collision with root package name */
    public final String f24488a;

    /* renamed from: b  reason: collision with root package name */
    public final String f24489b;

    /* renamed from: c  reason: collision with root package name */
    public final SignalsConfig.NovatiqConfig f24490c;

    public C2871aa(String hyperId, String spHost, SignalsConfig.NovatiqConfig novatiqConfig) {
        Intrinsics.checkNotNullParameter(hyperId, "hyperId");
        Intrinsics.checkNotNullParameter("i6i", "sspId");
        Intrinsics.checkNotNullParameter(spHost, "spHost");
        Intrinsics.checkNotNullParameter("inmobi", "pubId");
        Intrinsics.checkNotNullParameter(novatiqConfig, "novatiqConfig");
        this.f24488a = hyperId;
        this.f24489b = spHost;
        this.f24490c = novatiqConfig;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2871aa)) {
            return false;
        }
        C2871aa c2871aa = (C2871aa) obj;
        if (Intrinsics.areEqual(this.f24488a, c2871aa.f24488a) && Intrinsics.areEqual("i6i", "i6i") && Intrinsics.areEqual(this.f24489b, c2871aa.f24489b) && Intrinsics.areEqual("inmobi", "inmobi") && Intrinsics.areEqual(this.f24490c, c2871aa.f24490c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f24489b.hashCode();
        return this.f24490c.hashCode() + ((((hashCode + (((this.f24488a.hashCode() * 31) + 102684) * 31)) * 31) - 1183962098) * 31);
    }

    public final String toString() {
        return "NovatiqData(hyperId=" + this.f24488a + ", sspId=i6i, spHost=" + this.f24489b + ", pubId=inmobi, novatiqConfig=" + this.f24490c + ')';
    }
}
