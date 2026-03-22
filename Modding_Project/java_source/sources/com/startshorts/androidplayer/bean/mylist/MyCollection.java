package com.startshorts.androidplayer.bean.mylist;

import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MyCollection.kt */
@Metadata
/* loaded from: classes6.dex */
public final class MyCollection extends SelectableItem {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int FROM_RESERVATION = 1;
    public static final int SUBSCRIPT_AI_FOLLOWING = 8;
    public static final int SUBSCRIPT_FREE = 7;
    public static final int SUBSCRIPT_RECOMMEND = 9;
    private long collectTime;
    private int contentTag;
    private int cornerLabelStyle;
    @Nullable
    private String coverId;
    private int dramaId;
    private int episodeNum;

    /* renamed from: id  reason: collision with root package name */
    private long f38117id;
    private boolean isWholeBuy;
    @Nullable
    private String shortPlayCode;
    private int shortPlayId;
    @Nullable
    private String shortPlayName;
    private boolean showRedPoint;
    private int totalEpisodes;
    private int isReservation = -1;
    @NotNull
    private String upack = "";
    @Nullable
    private String cornerLabelText = "";
    @NotNull
    private String contentTagText = "";

    /* compiled from: MyCollection.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final long getCollectTime() {
        return this.collectTime;
    }

    public final int getContentTag() {
        return this.contentTag;
    }

    @NotNull
    public final String getContentTagText() {
        return this.contentTagText;
    }

    public final int getCornerLabelStyle() {
        return this.cornerLabelStyle;
    }

    @Nullable
    public final String getCornerLabelText() {
        return this.cornerLabelText;
    }

    @Nullable
    public final String getCoverId() {
        return this.coverId;
    }

    public final int getDramaId() {
        return this.dramaId;
    }

    public final int getEpisodeNum() {
        int i10 = this.episodeNum;
        if (i10 <= 0) {
            return 1;
        }
        return i10;
    }

    public final long getId() {
        return this.f38117id;
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

    public final boolean getShowRedPoint() {
        return this.showRedPoint;
    }

    public final int getTotalEpisodes() {
        return this.totalEpisodes;
    }

    @NotNull
    public final String getUpack() {
        return this.upack;
    }

    public final int isReservation() {
        return this.isReservation;
    }

    public final boolean isWholeBuy() {
        return this.isWholeBuy;
    }

    public final void setCollectTime(long j10) {
        this.collectTime = j10;
    }

    public final void setContentTag(int i10) {
        this.contentTag = i10;
    }

    public final void setContentTagText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentTagText = str;
    }

    public final void setCornerLabelStyle(int i10) {
        this.cornerLabelStyle = i10;
    }

    public final void setCornerLabelText(@Nullable String str) {
        this.cornerLabelText = str;
    }

    public final void setCoverId(@Nullable String str) {
        this.coverId = str;
    }

    public final void setDramaId(int i10) {
        this.dramaId = i10;
    }

    public final void setEpisodeNum(int i10) {
        this.episodeNum = i10;
    }

    public final void setId(long j10) {
        this.f38117id = j10;
    }

    public final void setReservation(int i10) {
        this.isReservation = i10;
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

    public final void setShowRedPoint(boolean z10) {
        this.showRedPoint = z10;
    }

    public final void setTotalEpisodes(int i10) {
        this.totalEpisodes = i10;
    }

    public final void setUpack(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.upack = str;
    }

    public final void setWholeBuy(boolean z10) {
        this.isWholeBuy = z10;
    }

    @Override // com.startshorts.androidplayer.bean.adapter.SelectableItem
    @NotNull
    public String toString() {
        return "MyCollection(id=" + this.f38117id + ", shortPlayId=" + this.shortPlayId + ", shortPlayCode=" + this.shortPlayCode + ", shortPlayName=" + this.shortPlayName + ", coverId=" + this.coverId + ", episodeNum=" + getEpisodeNum() + ", totalEpisodes=" + this.totalEpisodes + ", collectTime=" + this.collectTime + ", showRedPoint=" + this.showRedPoint + ", isWholeBuy=" + this.isWholeBuy + ", isReservation=" + this.isReservation + ')';
    }
}
