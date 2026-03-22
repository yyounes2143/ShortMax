package com.startshorts.androidplayer.bean.act;

import com.startshorts.androidplayer.bean.shorts.EpisodeVideo;
import jk.l;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActResourceExtraInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ActResourceExtraInfo {
    public static final int BRAND_AD_PIC = 1;
    public static final int BRAND_AD_VIDEO = 2;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final long PRELOAD_AD_VIDEO_SIZE = 204800;
    @Nullable
    private String adsContent;
    @Nullable
    private String adsPicFlag;
    @Nullable
    private String adsText;
    @Nullable
    private String adsTitle;
    @Nullable
    private EpisodeVideo adsVideo;
    @Nullable
    private String adsVideoUrl;
    @Nullable
    private String campaignId;
    @Nullable
    private String campaignName;
    @Nullable
    private String campaignType;
    private int adsType = -1;
    private float aspectRatio = 0.5625f;

    /* compiled from: ActResourceExtraInfo.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Nullable
    public final String getAdsContent() {
        return this.adsContent;
    }

    @Nullable
    public final String getAdsPicFlag() {
        return this.adsPicFlag;
    }

    @Nullable
    public final String getAdsText() {
        return this.adsText;
    }

    @Nullable
    public final String getAdsTitle() {
        return this.adsTitle;
    }

    public final int getAdsType() {
        return this.adsType;
    }

    @Nullable
    public final String getAdsVideoUrl() {
        return this.adsVideoUrl;
    }

    public final float getAspectRatio() {
        return this.aspectRatio;
    }

    @Nullable
    public final String getCampaignId() {
        return this.campaignId;
    }

    @Nullable
    public final String getCampaignName() {
        return this.campaignName;
    }

    @Nullable
    public final String getCampaignType() {
        return this.campaignType;
    }

    @Nullable
    public final synchronized String getFormatAdsVideoUrl() {
        String str;
        String str2;
        String str3;
        EpisodeVideo episodeVideo;
        try {
            String str4 = null;
            if (this.adsVideo == null) {
                String str5 = this.adsVideoUrl;
                if (str5 != null) {
                    episodeVideo = (EpisodeVideo) l.b(str5, EpisodeVideo.class);
                } else {
                    episodeVideo = null;
                }
                this.adsVideo = episodeVideo;
            }
            EpisodeVideo episodeVideo2 = this.adsVideo;
            if (episodeVideo2 != null) {
                str = episodeVideo2.getVideo_720();
            } else {
                str = null;
            }
            if (str != null && str.length() != 0) {
                EpisodeVideo episodeVideo3 = this.adsVideo;
                if (episodeVideo3 != null) {
                    str4 = episodeVideo3.getVideo_720();
                }
                return str4;
            }
            EpisodeVideo episodeVideo4 = this.adsVideo;
            if (episodeVideo4 != null) {
                str2 = episodeVideo4.getVideo_1080();
            } else {
                str2 = null;
            }
            if (str2 != null && str2.length() != 0) {
                EpisodeVideo episodeVideo5 = this.adsVideo;
                if (episodeVideo5 != null) {
                    str4 = episodeVideo5.getVideo_1080();
                }
                return str4;
            }
            EpisodeVideo episodeVideo6 = this.adsVideo;
            if (episodeVideo6 != null) {
                str3 = episodeVideo6.getVideo_480();
            } else {
                str3 = null;
            }
            if (str3 != null && str3.length() != 0) {
                EpisodeVideo episodeVideo7 = this.adsVideo;
                if (episodeVideo7 != null) {
                    str4 = episodeVideo7.getVideo_480();
                }
                return str4;
            }
            return "";
        } finally {
        }
    }

    public final void setAdsContent(@Nullable String str) {
        this.adsContent = str;
    }

    public final void setAdsPicFlag(@Nullable String str) {
        this.adsPicFlag = str;
    }

    public final void setAdsText(@Nullable String str) {
        this.adsText = str;
    }

    public final void setAdsTitle(@Nullable String str) {
        this.adsTitle = str;
    }

    public final void setAdsType(int i10) {
        this.adsType = i10;
    }

    public final void setAdsVideoUrl(@Nullable String str) {
        this.adsVideoUrl = str;
    }

    public final void setAspectRatio(float f10) {
        this.aspectRatio = f10;
    }

    public final void setCampaignId(@Nullable String str) {
        this.campaignId = str;
    }

    public final void setCampaignName(@Nullable String str) {
        this.campaignName = str;
    }

    public final void setCampaignType(@Nullable String str) {
        this.campaignType = str;
    }

    @NotNull
    public String toString() {
        return "ActResourceExtraInfo(campaignId=" + this.campaignId + ", campaignName=" + this.campaignName + ",campaignType=" + this.campaignType + ", adsType=" + this.adsType + ", adsTitle=" + this.adsTitle + ", adsText=" + this.adsText + ", adsPicFlag=" + this.adsPicFlag + ", adsVideoUrl=" + this.adsVideoUrl + ", adsContent=" + this.adsContent + ", aspectRatio=" + this.aspectRatio + ", adsVideo=" + this.adsVideo + ')';
    }
}
