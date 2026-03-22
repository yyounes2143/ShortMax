package com.startshorts.androidplayer.bean.campaign;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CampaignInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class CampaignInfo {
    @NotNull
    private String campaign;
    @NotNull
    private final String clipUUid;
    private final int dramaId;
    private final int shortPlayId;
    @NotNull
    private final String shortPlayName;

    public CampaignInfo(@NotNull String campaign, @NotNull String clipUUid, int i10, @NotNull String shortPlayName, int i11) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        Intrinsics.checkNotNullParameter(clipUUid, "clipUUid");
        Intrinsics.checkNotNullParameter(shortPlayName, "shortPlayName");
        this.campaign = campaign;
        this.clipUUid = clipUUid;
        this.dramaId = i10;
        this.shortPlayName = shortPlayName;
        this.shortPlayId = i11;
    }

    public static /* synthetic */ CampaignInfo copy$default(CampaignInfo campaignInfo, String str, String str2, int i10, String str3, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = campaignInfo.campaign;
        }
        if ((i12 & 2) != 0) {
            str2 = campaignInfo.clipUUid;
        }
        String str4 = str2;
        if ((i12 & 4) != 0) {
            i10 = campaignInfo.dramaId;
        }
        int i13 = i10;
        if ((i12 & 8) != 0) {
            str3 = campaignInfo.shortPlayName;
        }
        String str5 = str3;
        if ((i12 & 16) != 0) {
            i11 = campaignInfo.shortPlayId;
        }
        return campaignInfo.copy(str, str4, i13, str5, i11);
    }

    @NotNull
    public final String component1() {
        return this.campaign;
    }

    @NotNull
    public final String component2() {
        return this.clipUUid;
    }

    public final int component3() {
        return this.dramaId;
    }

    @NotNull
    public final String component4() {
        return this.shortPlayName;
    }

    public final int component5() {
        return this.shortPlayId;
    }

    @NotNull
    public final CampaignInfo copy(@NotNull String campaign, @NotNull String clipUUid, int i10, @NotNull String shortPlayName, int i11) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        Intrinsics.checkNotNullParameter(clipUUid, "clipUUid");
        Intrinsics.checkNotNullParameter(shortPlayName, "shortPlayName");
        return new CampaignInfo(campaign, clipUUid, i10, shortPlayName, i11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CampaignInfo)) {
            return false;
        }
        CampaignInfo campaignInfo = (CampaignInfo) obj;
        if (Intrinsics.areEqual(this.campaign, campaignInfo.campaign) && Intrinsics.areEqual(this.clipUUid, campaignInfo.clipUUid) && this.dramaId == campaignInfo.dramaId && Intrinsics.areEqual(this.shortPlayName, campaignInfo.shortPlayName) && this.shortPlayId == campaignInfo.shortPlayId) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getCampaign() {
        return this.campaign;
    }

    @NotNull
    public final String getClipUUid() {
        return this.clipUUid;
    }

    public final int getDramaId() {
        return this.dramaId;
    }

    public final int getShortPlayId() {
        return this.shortPlayId;
    }

    @NotNull
    public final String getShortPlayName() {
        return this.shortPlayName;
    }

    public int hashCode() {
        return (((((((this.campaign.hashCode() * 31) + this.clipUUid.hashCode()) * 31) + Integer.hashCode(this.dramaId)) * 31) + this.shortPlayName.hashCode()) * 31) + Integer.hashCode(this.shortPlayId);
    }

    public final void setCampaign(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.campaign = str;
    }

    @NotNull
    public String toString() {
        return "CampaignInfo(campaign=" + this.campaign + ", clipUUid=" + this.clipUUid + ", dramaId=" + this.dramaId + ", shortPlayName=" + this.shortPlayName + ", shortPlayId=" + this.shortPlayId + ')';
    }
}
