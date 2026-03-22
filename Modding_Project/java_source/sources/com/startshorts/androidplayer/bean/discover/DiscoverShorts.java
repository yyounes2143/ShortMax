package com.startshorts.androidplayer.bean.discover;

import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import com.startshorts.androidplayer.bean.shorts.EpisodeVideo;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.utils.ResourceHandler;
import java.util.List;
import jk.l;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverShorts.kt */
@Metadata
/* loaded from: classes6.dex */
public class DiscoverShorts extends BaseShorts {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int LABEL_STYLE_AI_FOLLOWING = 8;
    public static final int LABEL_STYLE_EXCLUSIVE = 2;
    public static final int LABEL_STYLE_FREE = 7;
    public static final int LABEL_STYLE_HOT = 3;
    public static final int LABEL_STYLE_MEMBER_ONLY = 6;
    public static final int LABEL_STYLE_NEW = 5;
    @Nullable
    private DiscoverResource bannerContent;
    private long collectNum;
    @Nullable
    private String horizontalCoverId;
    private boolean isReservation;
    @Nullable
    private List<ShortsLabel> labelResponseList;
    @Nullable
    private String level1CategoryName;
    @Nullable
    private String moduleId;
    @Nullable
    private String moduleName;
    private boolean needDecrypt;
    @Nullable
    private EpisodeVideo parsedVideo;
    @Nullable
    private Integer recommendId;
    @Nullable
    private String releaseTime;
    @Nullable
    private String shortPlaySubscript;
    private int trailerId;
    @Nullable
    private String videoUrl;
    private int watchedMaxEpisodeNum;
    private boolean canShowDiscountTag = true;
    @NotNull
    private final Object parseVideoUrlLock = new Object();

    /* compiled from: DiscoverShorts.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public static /* synthetic */ String parseVideoUrl$default(DiscoverShorts discoverShorts, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 1) != 0) {
                i10 = 720;
            }
            return discoverShorts.parseVideoUrl(i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: parseVideoUrl");
    }

    @NotNull
    public final String formatTitleForEvent() {
        return "discover_" + this.moduleId + '_' + this.moduleName;
    }

    @Nullable
    public final DiscoverResource getBannerContent() {
        return this.bannerContent;
    }

    public final boolean getCanShowDiscountTag() {
        return this.canShowDiscountTag;
    }

    public final long getCollectNum() {
        return this.collectNum;
    }

    @Nullable
    public final String getHorizontalCoverId() {
        return this.horizontalCoverId;
    }

    @Nullable
    public final List<ShortsLabel> getLabelResponseList() {
        return this.labelResponseList;
    }

    @Nullable
    public final String getLevel1CategoryName() {
        return this.level1CategoryName;
    }

    @Nullable
    public final String getModuleId() {
        return this.moduleId;
    }

    @Nullable
    public final String getModuleName() {
        return this.moduleName;
    }

    public final boolean getNeedDecrypt() {
        return this.needDecrypt;
    }

    @Nullable
    public final Integer getRecommendId() {
        return this.recommendId;
    }

    @Nullable
    public final String getReleaseTime() {
        return this.releaseTime;
    }

    @Nullable
    public final String getShortPlaySubscript() {
        return this.shortPlaySubscript;
    }

    public final int getTrailerId() {
        return this.trailerId;
    }

    @Nullable
    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public final int getWatchedMaxEpisodeNum() {
        return this.watchedMaxEpisodeNum;
    }

    public final boolean isReservation() {
        return this.isReservation;
    }

    @Nullable
    public final String parseVideoUrl(int i10) {
        String str;
        EpisodeVideo episodeVideo;
        synchronized (this.parseVideoUrlLock) {
            try {
                String str2 = this.videoUrl;
                if (str2 != null && str2.length() != 0) {
                    if (this.parsedVideo == null) {
                        String str3 = this.videoUrl;
                        if (str3 != null) {
                            episodeVideo = (EpisodeVideo) l.b(str3, EpisodeVideo.class);
                        } else {
                            episodeVideo = null;
                        }
                        this.parsedVideo = episodeVideo;
                    }
                    EpisodeVideo episodeVideo2 = this.parsedVideo;
                    if (episodeVideo2 == null) {
                        return null;
                    }
                    if (episodeVideo2 != null) {
                        str = episodeVideo2.targetUrl(i10);
                    } else {
                        str = null;
                    }
                    if (str != null && str.length() != 0) {
                        return ResourceHandler.f48167a.o(str);
                    }
                    return null;
                }
                return null;
            } finally {
            }
        }
    }

    public final void setBannerContent(@Nullable DiscoverResource discoverResource) {
        this.bannerContent = discoverResource;
    }

    public final void setCanShowDiscountTag(boolean z10) {
        this.canShowDiscountTag = z10;
    }

    public final void setCollectNum(long j10) {
        this.collectNum = j10;
    }

    public final void setHorizontalCoverId(@Nullable String str) {
        this.horizontalCoverId = str;
    }

    public final void setLabelResponseList(@Nullable List<ShortsLabel> list) {
        this.labelResponseList = list;
    }

    public final void setLevel1CategoryName(@Nullable String str) {
        this.level1CategoryName = str;
    }

    public final void setModuleId(@Nullable String str) {
        this.moduleId = str;
    }

    public final void setModuleName(@Nullable String str) {
        this.moduleName = str;
    }

    public final void setNeedDecrypt(boolean z10) {
        this.needDecrypt = z10;
    }

    public final void setRecommendId(@Nullable Integer num) {
        this.recommendId = num;
    }

    public final void setReleaseTime(@Nullable String str) {
        this.releaseTime = str;
    }

    public final void setReservation(boolean z10) {
        this.isReservation = z10;
    }

    public final void setShortPlaySubscript(@Nullable String str) {
        this.shortPlaySubscript = str;
    }

    public final void setTrailerId(int i10) {
        this.trailerId = i10;
    }

    public final void setVideoUrl(@Nullable String str) {
        this.videoUrl = str;
    }

    public final void setWatchedMaxEpisodeNum(int i10) {
        this.watchedMaxEpisodeNum = i10;
    }
}
