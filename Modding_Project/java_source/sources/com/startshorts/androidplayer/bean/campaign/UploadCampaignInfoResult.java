package com.startshorts.androidplayer.bean.campaign;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UploadCampaignInfoResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class UploadCampaignInfoResult {
    @Nullable
    private final Boolean adswitch;
    private final int delayedAttributedTime;
    @Nullable
    private final Boolean dlinkProcess;
    @Nullable
    private final Boolean matchResult;
    private final int shortPlayId;
    @Nullable
    private final String utmSource;

    public UploadCampaignInfoResult(int i10, @Nullable Boolean bool, @Nullable String str, @Nullable Boolean bool2, @Nullable Boolean bool3, int i11) {
        this.shortPlayId = i10;
        this.adswitch = bool;
        this.utmSource = str;
        this.matchResult = bool2;
        this.dlinkProcess = bool3;
        this.delayedAttributedTime = i11;
    }

    public static /* synthetic */ UploadCampaignInfoResult copy$default(UploadCampaignInfoResult uploadCampaignInfoResult, int i10, Boolean bool, String str, Boolean bool2, Boolean bool3, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = uploadCampaignInfoResult.shortPlayId;
        }
        if ((i12 & 2) != 0) {
            bool = uploadCampaignInfoResult.adswitch;
        }
        Boolean bool4 = bool;
        if ((i12 & 4) != 0) {
            str = uploadCampaignInfoResult.utmSource;
        }
        String str2 = str;
        if ((i12 & 8) != 0) {
            bool2 = uploadCampaignInfoResult.matchResult;
        }
        Boolean bool5 = bool2;
        if ((i12 & 16) != 0) {
            bool3 = uploadCampaignInfoResult.dlinkProcess;
        }
        Boolean bool6 = bool3;
        if ((i12 & 32) != 0) {
            i11 = uploadCampaignInfoResult.delayedAttributedTime;
        }
        return uploadCampaignInfoResult.copy(i10, bool4, str2, bool5, bool6, i11);
    }

    public final int component1() {
        return this.shortPlayId;
    }

    @Nullable
    public final Boolean component2() {
        return this.adswitch;
    }

    @Nullable
    public final String component3() {
        return this.utmSource;
    }

    @Nullable
    public final Boolean component4() {
        return this.matchResult;
    }

    @Nullable
    public final Boolean component5() {
        return this.dlinkProcess;
    }

    public final int component6() {
        return this.delayedAttributedTime;
    }

    @NotNull
    public final UploadCampaignInfoResult copy(int i10, @Nullable Boolean bool, @Nullable String str, @Nullable Boolean bool2, @Nullable Boolean bool3, int i11) {
        return new UploadCampaignInfoResult(i10, bool, str, bool2, bool3, i11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UploadCampaignInfoResult)) {
            return false;
        }
        UploadCampaignInfoResult uploadCampaignInfoResult = (UploadCampaignInfoResult) obj;
        if (this.shortPlayId == uploadCampaignInfoResult.shortPlayId && Intrinsics.areEqual(this.adswitch, uploadCampaignInfoResult.adswitch) && Intrinsics.areEqual(this.utmSource, uploadCampaignInfoResult.utmSource) && Intrinsics.areEqual(this.matchResult, uploadCampaignInfoResult.matchResult) && Intrinsics.areEqual(this.dlinkProcess, uploadCampaignInfoResult.dlinkProcess) && this.delayedAttributedTime == uploadCampaignInfoResult.delayedAttributedTime) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Boolean getAdswitch() {
        return this.adswitch;
    }

    public final int getDelayedAttributedTime() {
        return this.delayedAttributedTime;
    }

    @Nullable
    public final Boolean getDlinkProcess() {
        return this.dlinkProcess;
    }

    @Nullable
    public final Boolean getMatchResult() {
        return this.matchResult;
    }

    public final int getShortPlayId() {
        return this.shortPlayId;
    }

    @Nullable
    public final String getUtmSource() {
        return this.utmSource;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4 = Integer.hashCode(this.shortPlayId) * 31;
        Boolean bool = this.adswitch;
        int i10 = 0;
        if (bool == null) {
            hashCode = 0;
        } else {
            hashCode = bool.hashCode();
        }
        int i11 = (hashCode4 + hashCode) * 31;
        String str = this.utmSource;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        Boolean bool2 = this.matchResult;
        if (bool2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = bool2.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        Boolean bool3 = this.dlinkProcess;
        if (bool3 != null) {
            i10 = bool3.hashCode();
        }
        return ((i13 + i10) * 31) + Integer.hashCode(this.delayedAttributedTime);
    }

    @NotNull
    public String toString() {
        return "UploadCampaignInfoResult(shortPlayId=" + this.shortPlayId + ", adswitch=" + this.adswitch + ", utmSource=" + this.utmSource + ", matchResult=" + this.matchResult + ", dlinkProcess=" + this.dlinkProcess + ", delayedAttributedTime=" + this.delayedAttributedTime + ')';
    }
}
