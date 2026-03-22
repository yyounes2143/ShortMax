package com.startshorts.androidplayer.bean.shorts;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseShorts.kt */
@Metadata
/* loaded from: classes6.dex */
public class BaseShorts {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int STATUS_COMPLETE = 2;
    public static final int STATUS_FOLLOWING = 1;
    private int cornerLabelStyle;
    @Nullable
    private String cornerLabelText;
    private int episodeNum;
    @Nullable
    private String hotScore;

    /* renamed from: id  reason: collision with root package name */
    private int f38126id;
    private int itemType;
    @Nullable
    private List<ShortsLabel> labelList;
    @Nullable
    private String picUrl;
    @Nullable
    private Long playNum;
    @Nullable
    private String recommendContent;
    @Nullable
    private String shortPlayCode;
    @Nullable
    private String shortPlayName;
    @Nullable
    private String summary;
    private int totalEpisodes;
    @NotNull
    private String upack = "";
    private int updateEpisode;

    /* compiled from: BaseShorts.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final int getCornerLabelStyle() {
        return this.cornerLabelStyle;
    }

    @Nullable
    public final String getCornerLabelText() {
        return this.cornerLabelText;
    }

    public final int getEpisodeNum() {
        return this.episodeNum;
    }

    @Nullable
    public final String getHotScore() {
        return this.hotScore;
    }

    public final int getId() {
        return this.f38126id;
    }

    public final int getItemType() {
        return this.itemType;
    }

    @Nullable
    public final List<ShortsLabel> getLabelList() {
        return this.labelList;
    }

    @Nullable
    public final String getPicUrl() {
        return this.picUrl;
    }

    @Nullable
    public final Long getPlayNum() {
        return this.playNum;
    }

    @Nullable
    public final String getRecommendContent() {
        return this.recommendContent;
    }

    @Nullable
    public final String getShortPlayCode() {
        return this.shortPlayCode;
    }

    @Nullable
    public final String getShortPlayName() {
        return this.shortPlayName;
    }

    @Nullable
    public final String getSummary() {
        return this.summary;
    }

    public final int getTotalEpisodes() {
        return this.totalEpisodes;
    }

    @NotNull
    public final String getUpack() {
        return this.upack;
    }

    public final int getUpdateEpisode() {
        return this.updateEpisode;
    }

    public final void setCornerLabelStyle(int i10) {
        this.cornerLabelStyle = i10;
    }

    public final void setCornerLabelText(@Nullable String str) {
        this.cornerLabelText = str;
    }

    public final void setEpisodeNum(int i10) {
        this.episodeNum = i10;
    }

    public final void setHotScore(@Nullable String str) {
        this.hotScore = str;
    }

    public final void setId(int i10) {
        this.f38126id = i10;
    }

    public final void setItemType(int i10) {
        this.itemType = i10;
    }

    public final void setLabelList(@Nullable List<ShortsLabel> list) {
        this.labelList = list;
    }

    public final void setPicUrl(@Nullable String str) {
        this.picUrl = str;
    }

    public final void setPlayNum(@Nullable Long l10) {
        this.playNum = l10;
    }

    public final void setRecommendContent(@Nullable String str) {
        this.recommendContent = str;
    }

    public final void setShortPlayCode(@Nullable String str) {
        this.shortPlayCode = str;
    }

    public final void setShortPlayName(@Nullable String str) {
        this.shortPlayName = str;
    }

    public final void setSummary(@Nullable String str) {
        this.summary = str;
    }

    public final void setTotalEpisodes(int i10) {
        this.totalEpisodes = i10;
    }

    public final void setUpack(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.upack = str;
    }

    public final void setUpdateEpisode(int i10) {
        this.updateEpisode = i10;
    }

    @NotNull
    public String toString() {
        return "BaseShorts(id=" + this.f38126id + ", shortPlayName=" + this.shortPlayName + ", shortPlayCode=" + this.shortPlayCode + ", episodeNum=" + this.episodeNum + ", totalEpisodes=" + this.totalEpisodes + ", updateEpisode=" + this.updateEpisode + ", picUrl=" + this.picUrl + ", summary=" + this.summary + ", recommendContent=" + this.recommendContent + ')';
    }
}
