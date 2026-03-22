package com.startshorts.androidplayer.bean.campaign;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AttributionSdkResponse.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AttributionSdkResponse {
    @NotNull
    private final String campaignInfo;
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final String f38111id;
    @NotNull
    private final String source;

    public AttributionSdkResponse(@NotNull String id2, @NotNull String source, @NotNull String campaignInfo) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(campaignInfo, "campaignInfo");
        this.f38111id = id2;
        this.source = source;
        this.campaignInfo = campaignInfo;
    }

    public static /* synthetic */ AttributionSdkResponse copy$default(AttributionSdkResponse attributionSdkResponse, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = attributionSdkResponse.f38111id;
        }
        if ((i10 & 2) != 0) {
            str2 = attributionSdkResponse.source;
        }
        if ((i10 & 4) != 0) {
            str3 = attributionSdkResponse.campaignInfo;
        }
        return attributionSdkResponse.copy(str, str2, str3);
    }

    @NotNull
    public final String component1() {
        return this.f38111id;
    }

    @NotNull
    public final String component2() {
        return this.source;
    }

    @NotNull
    public final String component3() {
        return this.campaignInfo;
    }

    @NotNull
    public final AttributionSdkResponse copy(@NotNull String id2, @NotNull String source, @NotNull String campaignInfo) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(campaignInfo, "campaignInfo");
        return new AttributionSdkResponse(id2, source, campaignInfo);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AttributionSdkResponse)) {
            return false;
        }
        AttributionSdkResponse attributionSdkResponse = (AttributionSdkResponse) obj;
        if (Intrinsics.areEqual(this.f38111id, attributionSdkResponse.f38111id) && Intrinsics.areEqual(this.source, attributionSdkResponse.source) && Intrinsics.areEqual(this.campaignInfo, attributionSdkResponse.campaignInfo)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getCampaignInfo() {
        return this.campaignInfo;
    }

    @NotNull
    public final String getId() {
        return this.f38111id;
    }

    @NotNull
    public final String getSource() {
        return this.source;
    }

    public int hashCode() {
        return (((this.f38111id.hashCode() * 31) + this.source.hashCode()) * 31) + this.campaignInfo.hashCode();
    }

    @NotNull
    public String toString() {
        return "AttributionSdkResponse(id=" + this.f38111id + ", source=" + this.source + ", campaignInfo=" + this.campaignInfo + ')';
    }
}
