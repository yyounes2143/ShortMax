package com.unity3d.ads.core.domain.scar;

import com.unity3d.scar.adapter.common.GMAEvent;
import com.unity3d.services.banners.bridge.BannerBridge;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GmaEventData.kt */
@Metadata
/* loaded from: classes7.dex */
public final class GmaEventData {
    @Nullable
    private final BannerBridge.BannerEvent bannerEvent;
    @Nullable
    private final Integer errorCode;
    @Nullable
    private final String errorMessage;
    @NotNull
    private final GMAEvent gmaEvent;
    @Nullable
    private final String opportunityId;
    @Nullable
    private final String placementId;
    @Nullable
    private final String queryId;

    public GmaEventData(@NotNull GMAEvent gmaEvent, @Nullable BannerBridge.BannerEvent bannerEvent, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(gmaEvent, "gmaEvent");
        this.gmaEvent = gmaEvent;
        this.bannerEvent = bannerEvent;
        this.opportunityId = str;
        this.placementId = str2;
        this.queryId = str3;
        this.errorMessage = str4;
        this.errorCode = num;
    }

    public static /* synthetic */ GmaEventData copy$default(GmaEventData gmaEventData, GMAEvent gMAEvent, BannerBridge.BannerEvent bannerEvent, String str, String str2, String str3, String str4, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            gMAEvent = gmaEventData.gmaEvent;
        }
        if ((i10 & 2) != 0) {
            bannerEvent = gmaEventData.bannerEvent;
        }
        BannerBridge.BannerEvent bannerEvent2 = bannerEvent;
        if ((i10 & 4) != 0) {
            str = gmaEventData.opportunityId;
        }
        String str5 = str;
        if ((i10 & 8) != 0) {
            str2 = gmaEventData.placementId;
        }
        String str6 = str2;
        if ((i10 & 16) != 0) {
            str3 = gmaEventData.queryId;
        }
        String str7 = str3;
        if ((i10 & 32) != 0) {
            str4 = gmaEventData.errorMessage;
        }
        String str8 = str4;
        if ((i10 & 64) != 0) {
            num = gmaEventData.errorCode;
        }
        return gmaEventData.copy(gMAEvent, bannerEvent2, str5, str6, str7, str8, num);
    }

    @NotNull
    public final GMAEvent component1() {
        return this.gmaEvent;
    }

    @Nullable
    public final BannerBridge.BannerEvent component2() {
        return this.bannerEvent;
    }

    @Nullable
    public final String component3() {
        return this.opportunityId;
    }

    @Nullable
    public final String component4() {
        return this.placementId;
    }

    @Nullable
    public final String component5() {
        return this.queryId;
    }

    @Nullable
    public final String component6() {
        return this.errorMessage;
    }

    @Nullable
    public final Integer component7() {
        return this.errorCode;
    }

    @NotNull
    public final GmaEventData copy(@NotNull GMAEvent gmaEvent, @Nullable BannerBridge.BannerEvent bannerEvent, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(gmaEvent, "gmaEvent");
        return new GmaEventData(gmaEvent, bannerEvent, str, str2, str3, str4, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GmaEventData)) {
            return false;
        }
        GmaEventData gmaEventData = (GmaEventData) obj;
        if (this.gmaEvent == gmaEventData.gmaEvent && this.bannerEvent == gmaEventData.bannerEvent && Intrinsics.areEqual(this.opportunityId, gmaEventData.opportunityId) && Intrinsics.areEqual(this.placementId, gmaEventData.placementId) && Intrinsics.areEqual(this.queryId, gmaEventData.queryId) && Intrinsics.areEqual(this.errorMessage, gmaEventData.errorMessage) && Intrinsics.areEqual(this.errorCode, gmaEventData.errorCode)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final BannerBridge.BannerEvent getBannerEvent() {
        return this.bannerEvent;
    }

    @Nullable
    public final Integer getErrorCode() {
        return this.errorCode;
    }

    @Nullable
    public final String getErrorMessage() {
        return this.errorMessage;
    }

    @NotNull
    public final GMAEvent getGmaEvent() {
        return this.gmaEvent;
    }

    @Nullable
    public final String getOpportunityId() {
        return this.opportunityId;
    }

    @Nullable
    public final String getPlacementId() {
        return this.placementId;
    }

    @Nullable
    public final String getQueryId() {
        return this.queryId;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6 = this.gmaEvent.hashCode() * 31;
        BannerBridge.BannerEvent bannerEvent = this.bannerEvent;
        int i10 = 0;
        if (bannerEvent == null) {
            hashCode = 0;
        } else {
            hashCode = bannerEvent.hashCode();
        }
        int i11 = (hashCode6 + hashCode) * 31;
        String str = this.opportunityId;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str2 = this.placementId;
        if (str2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str2.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        String str3 = this.queryId;
        if (str3 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str3.hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        String str4 = this.errorMessage;
        if (str4 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = str4.hashCode();
        }
        int i15 = (i14 + hashCode5) * 31;
        Integer num = this.errorCode;
        if (num != null) {
            i10 = num.hashCode();
        }
        return i15 + i10;
    }

    @NotNull
    public String toString() {
        return "GmaEventData(gmaEvent=" + this.gmaEvent + ", bannerEvent=" + this.bannerEvent + ", opportunityId=" + this.opportunityId + ", placementId=" + this.placementId + ", queryId=" + this.queryId + ", errorMessage=" + this.errorMessage + ", errorCode=" + this.errorCode + ')';
    }

    public /* synthetic */ GmaEventData(GMAEvent gMAEvent, BannerBridge.BannerEvent bannerEvent, String str, String str2, String str3, String str4, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(gMAEvent, (i10 & 2) != 0 ? null : bannerEvent, (i10 & 4) != 0 ? null : str, (i10 & 8) != 0 ? null : str2, (i10 & 16) != 0 ? null : str3, (i10 & 32) != 0 ? null : str4, (i10 & 64) == 0 ? num : null);
    }
}
