package com.startshorts.androidplayer.bean.notification;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseShortsNotification.kt */
@Metadata
/* loaded from: classes6.dex */
public class BaseShortsNotification {
    private int dramId;
    @Nullable
    private String recommendation;
    @Nullable
    private String shortPlayCode;
    private int shortPlayId;
    @Nullable
    private String summary;
    @Nullable
    private String title;
    @NotNull
    private String shortPlayName = "";
    @NotNull
    private String coverId = "";
    @NotNull
    private String actUrl = "";
    @NotNull
    private String pushId = "";
    @NotNull
    private String pushName = "";
    @NotNull
    private String upack = "";

    @NotNull
    public final String getActUrl() {
        return this.actUrl;
    }

    @NotNull
    public final String getCoverId() {
        return this.coverId;
    }

    public final int getDramId() {
        return this.dramId;
    }

    @NotNull
    public final String getPushId() {
        return this.pushId;
    }

    @NotNull
    public final String getPushName() {
        return this.pushName;
    }

    @Nullable
    public final String getRecommendation() {
        return this.recommendation;
    }

    @Nullable
    public final String getShortPlayCode() {
        return this.shortPlayCode;
    }

    public final int getShortPlayId() {
        return this.shortPlayId;
    }

    @NotNull
    public final String getShortPlayName() {
        return this.shortPlayName;
    }

    @Nullable
    public final String getSummary() {
        return this.summary;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final String getUpack() {
        return this.upack;
    }

    public final void setActUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.actUrl = str;
    }

    public final void setCoverId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.coverId = str;
    }

    public final void setDramId(int i10) {
        this.dramId = i10;
    }

    public final void setPushId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pushId = str;
    }

    public final void setPushName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pushName = str;
    }

    public final void setRecommendation(@Nullable String str) {
        this.recommendation = str;
    }

    public final void setShortPlayCode(@Nullable String str) {
        this.shortPlayCode = str;
    }

    public final void setShortPlayId(int i10) {
        this.shortPlayId = i10;
    }

    public final void setShortPlayName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.shortPlayName = str;
    }

    public final void setSummary(@Nullable String str) {
        this.summary = str;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    public final void setUpack(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.upack = str;
    }

    @NotNull
    public String toString() {
        return "BaseShortsNotification(shortPlayId=" + this.shortPlayId + ", shortPlayCode=" + this.shortPlayCode + ", shortPlayName=" + this.shortPlayName + ", title=" + this.title + ", summary=" + this.summary + ", recommendation=" + this.recommendation + ", coverId=" + this.coverId + ", dramId=" + this.dramId + ')';
    }
}
