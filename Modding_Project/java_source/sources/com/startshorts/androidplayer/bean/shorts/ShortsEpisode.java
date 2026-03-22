package com.startshorts.androidplayer.bean.shorts;

import com.startshorts.androidplayer.bean.act.ActResource;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsEpisode.kt */
@Metadata
/* loaded from: classes6.dex */
public class ShortsEpisode extends BaseEpisode {
    public static final int COLD_BOOT = 1;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int FROM_RECOMMEND_POOL = 1;
    public static final int NOT_COLD_BOOT = 2;
    public static final int NOT_FROM_RECOMMEND_POOL = 2;
    public static final int TYPE_BRAND_AD = 3;
    public static final int TYPE_PROGRAMMATIC_AD = 2;
    public static final int TYPE_SHORTS = 1;
    @Nullable
    private ActResource extraAdInfo;
    @Nullable
    private Integer finalDramId;
    private int isRecommendPool;
    @Nullable
    private Boolean isRelease;
    @Nullable
    private Boolean isReservation;
    private int type = 1;
    private int round = -1;
    private int pageNumber = -1;
    private int index = -1;

    /* compiled from: ShortsEpisode.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ShortsEpisode() {
        Boolean bool = Boolean.FALSE;
        this.isRelease = bool;
        this.isReservation = bool;
    }

    public final boolean fromRecommendPool() {
        if ((this.isRecommendPool == 1 || isTrailer()) && this.type == 1) {
            return true;
        }
        return false;
    }

    @Nullable
    public final ActResource getExtraAdInfo() {
        return this.extraAdInfo;
    }

    @Nullable
    public final Integer getFinalDramId() {
        return this.finalDramId;
    }

    public final int getIndex() {
        return this.index;
    }

    public final int getPageNumber() {
        return this.pageNumber;
    }

    public final int getRound() {
        return this.round;
    }

    public final int getType() {
        return this.type;
    }

    public final boolean isAd() {
        if (!isProgrammaticAd() && !isBrandAd()) {
            return false;
        }
        return true;
    }

    public final boolean isBrandAd() {
        if (this.type == 3) {
            return true;
        }
        return false;
    }

    public final boolean isBrandPicAd() {
        ActResource actResource = this.extraAdInfo;
        if (actResource != null) {
            return actResource.isBrandAdPicture();
        }
        return false;
    }

    public final boolean isBrandVideoAd() {
        ActResource actResource = this.extraAdInfo;
        if (actResource != null) {
            return actResource.isBrandAdVideo();
        }
        return false;
    }

    public final boolean isProgrammaticAd() {
        if (this.type == 2) {
            return true;
        }
        return false;
    }

    public final int isRecommendPool() {
        return this.isRecommendPool;
    }

    @Nullable
    public final Boolean isRelease() {
        return this.isRelease;
    }

    @Nullable
    public final Boolean isReservation() {
        return this.isReservation;
    }

    public final void setExtraAdInfo(@Nullable ActResource actResource) {
        this.extraAdInfo = actResource;
    }

    public final void setFinalDramId(@Nullable Integer num) {
        this.finalDramId = num;
    }

    public final void setIndex(int i10) {
        this.index = i10;
    }

    public final void setPageNumber(int i10) {
        this.pageNumber = i10;
    }

    public final void setRecommendPool(int i10) {
        this.isRecommendPool = i10;
    }

    public final void setRelease(@Nullable Boolean bool) {
        this.isRelease = bool;
    }

    public final void setReservation(@Nullable Boolean bool) {
        this.isReservation = bool;
    }

    public final void setRound(int i10) {
        this.round = i10;
    }

    public final void setType(int i10) {
        this.type = i10;
    }

    @Override // com.startshorts.androidplayer.bean.shorts.BaseEpisode
    @NotNull
    public String toString() {
        return "ShortsEpisode(type=" + this.type + ", isRecommendPool=" + this.isRecommendPool + ", round=" + this.round + ", pageNumber=" + this.pageNumber + ", index=" + this.index + ", extraAdInfo=" + this.extraAdInfo + ')';
    }
}
