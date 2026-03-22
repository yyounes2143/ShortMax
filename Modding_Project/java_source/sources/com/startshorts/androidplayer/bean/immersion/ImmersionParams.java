package com.startshorts.androidplayer.bean.immersion;

import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import com.startshorts.androidplayer.bean.search.RedeemCode;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qe.a;
/* compiled from: ImmersionParams.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ImmersionParams {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int TYPE_CUR_EPISODE_ID = 4;
    public static final int TYPE_CUR_EPISODE_NUM = 1;
    public static final int TYPE_CUR_EPISODE_NUM_DOWNLOAD = 6;
    public static final int TYPE_EPISODE_LIST = 2;
    public static final int TYPE_FIRST_EPISODE = 7;
    public static final int TYPE_PREV_EPISODE_ID = 5;
    public static final int TYPE_SHORTS_ID = 3;
    public static final int TYPE_TRAILER_EPISODE = 8;
    @Nullable
    private ActResource actResource;
    @Nullable
    private List<BaseEpisode> episodeList;
    private int episodeListStartPosition;
    @Nullable
    private String from;
    private boolean lastEpisode;
    @Nullable
    private ModuleInfo moduleInfo;
    @Nullable
    private String pushId;
    @Nullable
    private RedeemCode redeemCode;
    @Nullable
    private String searchString;
    public ImmersionShortsInfo shortsInfo;
    private boolean showEpisodeListDialog;
    private int type = -1;
    private int episodeNum = -1;
    private int episodeId = -1;
    private boolean enableLoadMore = true;
    private boolean enableRefreshLayout = a.f65321a.value().getImmersionRefreshLayoutEnable();
    private float playSpeed = 1.0f;
    private boolean logEnterImmersion = true;

    /* compiled from: ImmersionParams.kt */
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
    public final ActResource getActResource() {
        return this.actResource;
    }

    public final boolean getEnableLoadMore() {
        return this.enableLoadMore;
    }

    public final boolean getEnableRefreshLayout() {
        return this.enableRefreshLayout;
    }

    public final int getEpisodeId() {
        return this.episodeId;
    }

    @Nullable
    public final List<BaseEpisode> getEpisodeList() {
        return this.episodeList;
    }

    public final int getEpisodeListStartPosition() {
        return this.episodeListStartPosition;
    }

    public final int getEpisodeNum() {
        return this.episodeNum;
    }

    @Nullable
    public final String getFrom() {
        return this.from;
    }

    public final boolean getLastEpisode() {
        return this.lastEpisode;
    }

    public final boolean getLogEnterImmersion() {
        return this.logEnterImmersion;
    }

    @Nullable
    public final ModuleInfo getModuleInfo() {
        return this.moduleInfo;
    }

    public final float getPlaySpeed() {
        return this.playSpeed;
    }

    @Nullable
    public final String getPushId() {
        return this.pushId;
    }

    @Nullable
    public final RedeemCode getRedeemCode() {
        return this.redeemCode;
    }

    @Nullable
    public final String getSearchString() {
        return this.searchString;
    }

    @NotNull
    public final ImmersionShortsInfo getShortsInfo() {
        ImmersionShortsInfo immersionShortsInfo = this.shortsInfo;
        if (immersionShortsInfo != null) {
            return immersionShortsInfo;
        }
        Intrinsics.throwUninitializedPropertyAccessException("shortsInfo");
        return null;
    }

    public final boolean getShowEpisodeListDialog() {
        return this.showEpisodeListDialog;
    }

    public final int getType() {
        return this.type;
    }

    public final boolean isFromOfflineDownload() {
        if (this.type == 6) {
            return true;
        }
        return false;
    }

    public final void setActResource(@Nullable ActResource actResource) {
        this.actResource = actResource;
    }

    public final void setEnableLoadMore(boolean z10) {
        this.enableLoadMore = z10;
    }

    public final void setEnableRefreshLayout(boolean z10) {
        this.enableRefreshLayout = z10;
    }

    public final void setEpisodeId(int i10) {
        this.episodeId = i10;
    }

    public final void setEpisodeList(@Nullable List<BaseEpisode> list) {
        this.episodeList = list;
    }

    public final void setEpisodeListStartPosition(int i10) {
        this.episodeListStartPosition = i10;
    }

    public final void setEpisodeNum(int i10) {
        this.episodeNum = i10;
    }

    public final void setFrom(@Nullable String str) {
        this.from = str;
    }

    public final void setLastEpisode(boolean z10) {
        this.lastEpisode = z10;
    }

    public final void setLogEnterImmersion(boolean z10) {
        this.logEnterImmersion = z10;
    }

    public final void setModuleInfo(@Nullable ModuleInfo moduleInfo) {
        this.moduleInfo = moduleInfo;
    }

    public final void setPlaySpeed(float f10) {
        this.playSpeed = f10;
    }

    public final void setPushId(@Nullable String str) {
        this.pushId = str;
    }

    public final void setRedeemCode(@Nullable RedeemCode redeemCode) {
        this.redeemCode = redeemCode;
    }

    public final void setSearchString(@Nullable String str) {
        this.searchString = str;
    }

    public final void setShortsInfo(@NotNull ImmersionShortsInfo immersionShortsInfo) {
        Intrinsics.checkNotNullParameter(immersionShortsInfo, "<set-?>");
        this.shortsInfo = immersionShortsInfo;
    }

    public final void setShowEpisodeListDialog(boolean z10) {
        this.showEpisodeListDialog = z10;
    }

    public final void setType(int i10) {
        this.type = i10;
    }

    @NotNull
    public String toString() {
        return "ImmersionParams(type=" + this.type + ", shortsInfo=" + getShortsInfo() + ", episodeNum=" + this.episodeNum + ", episodeId=" + this.episodeId + ", lastEpisode=" + this.lastEpisode + ", episodeList=" + this.episodeList + ", episodeListStartPosition=" + this.episodeListStartPosition + ", enableLoadMore=" + this.enableLoadMore + ", enableRefreshLayout=" + this.enableRefreshLayout + ", showEpisodeListDialog=" + this.showEpisodeListDialog + ", from=" + this.from + ", moduleInfo=" + this.moduleInfo + ", pushId=" + this.pushId + ", redeemCode=" + this.redeemCode + ", playSpeed=" + this.playSpeed + ", actResource=" + this.actResource + ", searchString=" + this.searchString + ", logEnterImmersion=" + this.logEnterImmersion + ')';
    }
}
