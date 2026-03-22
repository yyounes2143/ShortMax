package com.jiuzhou.cdn.model;

import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.MBridgeConstans;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CdnInfo.kt */
@Metadata
/* loaded from: classes5.dex */
public final class CdnInfo {
    @SerializedName("cdn")
    @Nullable
    private String cdn;
    @SerializedName("cdnWeight")
    private float cdnWeight;
    @SerializedName("latency")
    @Nullable
    private Long latency;
    @SerializedName(MBridgeConstans.DYNAMIC_VIEW_WX_PATH)
    @Nullable
    private String path;
    @SerializedName("success")
    @Nullable
    private Boolean success;

    public CdnInfo() {
        this(null, null, 0.0f, null, null, 31, null);
    }

    public static /* synthetic */ CdnInfo copy$default(CdnInfo cdnInfo, String str, String str2, float f10, Long l10, Boolean bool, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = cdnInfo.cdn;
        }
        if ((i10 & 2) != 0) {
            str2 = cdnInfo.path;
        }
        String str3 = str2;
        if ((i10 & 4) != 0) {
            f10 = cdnInfo.cdnWeight;
        }
        float f11 = f10;
        if ((i10 & 8) != 0) {
            l10 = cdnInfo.latency;
        }
        Long l11 = l10;
        if ((i10 & 16) != 0) {
            bool = cdnInfo.success;
        }
        return cdnInfo.copy(str, str3, f11, l11, bool);
    }

    @Nullable
    public final String component1() {
        return this.cdn;
    }

    @Nullable
    public final String component2() {
        return this.path;
    }

    public final float component3() {
        return this.cdnWeight;
    }

    @Nullable
    public final Long component4() {
        return this.latency;
    }

    @Nullable
    public final Boolean component5() {
        return this.success;
    }

    @NotNull
    public final CdnInfo copy(@Nullable String str, @Nullable String str2, float f10, @Nullable Long l10, @Nullable Boolean bool) {
        return new CdnInfo(str, str2, f10, l10, bool);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CdnInfo)) {
            return false;
        }
        CdnInfo cdnInfo = (CdnInfo) obj;
        if (Intrinsics.areEqual(this.cdn, cdnInfo.cdn) && Intrinsics.areEqual(this.path, cdnInfo.path) && Float.compare(this.cdnWeight, cdnInfo.cdnWeight) == 0 && Intrinsics.areEqual(this.latency, cdnInfo.latency) && Intrinsics.areEqual(this.success, cdnInfo.success)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getCdn() {
        return this.cdn;
    }

    public final float getCdnWeight() {
        return this.cdnWeight;
    }

    @Nullable
    public final Long getLatency() {
        return this.latency;
    }

    @Nullable
    public final String getPath() {
        return this.path;
    }

    @Nullable
    public final Boolean getSuccess() {
        return this.success;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        String str = this.cdn;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        String str2 = this.path;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int hashCode4 = (((i11 + hashCode2) * 31) + Float.hashCode(this.cdnWeight)) * 31;
        Long l10 = this.latency;
        if (l10 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = l10.hashCode();
        }
        int i12 = (hashCode4 + hashCode3) * 31;
        Boolean bool = this.success;
        if (bool != null) {
            i10 = bool.hashCode();
        }
        return i12 + i10;
    }

    public final void setCdn(@Nullable String str) {
        this.cdn = str;
    }

    public final void setCdnWeight(float f10) {
        this.cdnWeight = f10;
    }

    public final void setLatency(@Nullable Long l10) {
        this.latency = l10;
    }

    public final void setPath(@Nullable String str) {
        this.path = str;
    }

    public final void setSuccess(@Nullable Boolean bool) {
        this.success = bool;
    }

    @NotNull
    public String toString() {
        return "CdnInfo(cdn=" + this.cdn + ", path=" + this.path + ", cdnWeight=" + this.cdnWeight + ", latency=" + this.latency + ", success=" + this.success + ')';
    }

    public CdnInfo(@Nullable String str, @Nullable String str2, float f10, @Nullable Long l10, @Nullable Boolean bool) {
        this.cdn = str;
        this.path = str2;
        this.cdnWeight = f10;
        this.latency = l10;
        this.success = bool;
    }

    public /* synthetic */ CdnInfo(String str, String str2, float f10, Long l10, Boolean bool, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? 1.0f : f10, (i10 & 8) != 0 ? null : l10, (i10 & 16) != 0 ? null : bool);
    }
}
