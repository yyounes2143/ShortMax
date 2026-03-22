package com.startshorts.androidplayer.bean.shorts;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlayContinue.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PlayContinue implements Serializable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int SHOW_TYPE_BANNER = 1;
    public static final int SHOW_TYPE_COVER = 0;
    @Nullable
    private String coverId;
    private int episodeNum;

    /* renamed from: id  reason: collision with root package name */
    private int f38130id;
    @Nullable
    private String shortPlayCode;
    private int shortPlayId;
    @Nullable
    private String shortPlayName;
    private int totalEpisodes;
    @NotNull
    private String from = "continue_watch";
    private int showType = 1;
    @NotNull
    private String upack = "";

    /* compiled from: PlayContinue.kt */
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
    public final String getCoverId() {
        return this.coverId;
    }

    public final int getEpisodeNum() {
        return this.episodeNum;
    }

    @NotNull
    public final String getFrom() {
        return this.from;
    }

    public final int getId() {
        return this.f38130id;
    }

    @Nullable
    public final String getShortPlayCode() {
        return this.shortPlayCode;
    }

    public final int getShortPlayId() {
        return this.shortPlayId;
    }

    @Nullable
    public final String getShortPlayName() {
        return this.shortPlayName;
    }

    public final int getShowType() {
        return this.showType;
    }

    public final int getTotalEpisodes() {
        return this.totalEpisodes;
    }

    @NotNull
    public final String getUpack() {
        return this.upack;
    }

    public final void setCoverId(@Nullable String str) {
        this.coverId = str;
    }

    public final void setEpisodeNum(int i10) {
        this.episodeNum = i10;
    }

    public final void setFrom(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.from = str;
    }

    public final void setId(int i10) {
        this.f38130id = i10;
    }

    public final void setShortPlayCode(@Nullable String str) {
        this.shortPlayCode = str;
    }

    public final void setShortPlayId(int i10) {
        this.shortPlayId = i10;
    }

    public final void setShortPlayName(@Nullable String str) {
        this.shortPlayName = str;
    }

    public final void setShowType(int i10) {
        this.showType = i10;
    }

    public final void setTotalEpisodes(int i10) {
        this.totalEpisodes = i10;
    }

    public final void setUpack(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.upack = str;
    }

    @NotNull
    public String toString() {
        return "PlayContinue(id=" + this.f38130id + ", shortPlayId=" + this.shortPlayId + ", shortPlayCode=" + this.shortPlayCode + ", shortPlayName=" + this.shortPlayName + ", coverId=" + this.coverId + ", episodeNum=" + this.episodeNum + ", totalEpisodes=" + this.totalEpisodes + ", from='" + this.from + "', showType=" + this.showType + ')';
    }
}
