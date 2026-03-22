package com.vungle.ads.internal.util;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Logger.kt */
@Metadata
/* loaded from: classes7.dex */
public final class LogEntry {
    @Nullable
    private String adSource;
    @Nullable
    private String creativeId;
    @Nullable
    private String eventId;
    @Nullable
    private String mediationName;
    @Nullable
    private String placementRefId;
    @Nullable
    private String vmVersion;

    public boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(LogEntry.class, cls)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.vungle.ads.internal.util.LogEntry");
        LogEntry logEntry = (LogEntry) obj;
        if (Intrinsics.areEqual(this.placementRefId, logEntry.placementRefId) && Intrinsics.areEqual(this.creativeId, logEntry.creativeId) && Intrinsics.areEqual(this.eventId, logEntry.eventId) && Intrinsics.areEqual(this.adSource, logEntry.adSource) && Intrinsics.areEqual(this.mediationName, logEntry.mediationName) && Intrinsics.areEqual(this.vmVersion, logEntry.vmVersion)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getAdSource$vungle_ads_release() {
        return this.adSource;
    }

    @Nullable
    public final String getCreativeId$vungle_ads_release() {
        return this.creativeId;
    }

    @Nullable
    public final String getEventId$vungle_ads_release() {
        return this.eventId;
    }

    @Nullable
    public final String getMediationName$vungle_ads_release() {
        return this.mediationName;
    }

    @Nullable
    public final String getPlacementRefId$vungle_ads_release() {
        return this.placementRefId;
    }

    @Nullable
    public final String getVmVersion$vungle_ads_release() {
        return this.vmVersion;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        String str = this.placementRefId;
        int i15 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i16 = i10 * 31;
        String str2 = this.creativeId;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i17 = (i16 + i11) * 31;
        String str3 = this.eventId;
        if (str3 != null) {
            i12 = str3.hashCode();
        } else {
            i12 = 0;
        }
        int i18 = (i17 + i12) * 31;
        String str4 = this.adSource;
        if (str4 != null) {
            i13 = str4.hashCode();
        } else {
            i13 = 0;
        }
        int i19 = (i18 + i13) * 31;
        String str5 = this.mediationName;
        if (str5 != null) {
            i14 = str5.hashCode();
        } else {
            i14 = 0;
        }
        int i20 = (i19 + i14) * 31;
        String str6 = this.vmVersion;
        if (str6 != null) {
            i15 = str6.hashCode();
        }
        return i20 + i15;
    }

    public final void setAdSource$vungle_ads_release(@Nullable String str) {
        this.adSource = str;
    }

    public final void setCreativeId$vungle_ads_release(@Nullable String str) {
        this.creativeId = str;
    }

    public final void setEventId$vungle_ads_release(@Nullable String str) {
        this.eventId = str;
    }

    public final void setMediationName$vungle_ads_release(@Nullable String str) {
        this.mediationName = str;
    }

    public final void setPlacementRefId$vungle_ads_release(@Nullable String str) {
        this.placementRefId = str;
    }

    public final void setVmVersion$vungle_ads_release(@Nullable String str) {
        this.vmVersion = str;
    }

    @NotNull
    public String toString() {
        return "LogEntry(placementRefId=" + this.placementRefId + ", creativeId=" + this.creativeId + ", eventId=" + this.eventId + ", adSource=" + this.adSource + ", mediationName=" + this.mediationName + ", vmVersion=" + this.vmVersion + ')';
    }
}
