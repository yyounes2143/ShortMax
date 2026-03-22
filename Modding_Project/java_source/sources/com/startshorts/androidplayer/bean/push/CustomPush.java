package com.startshorts.androidplayer.bean.push;

import com.startshorts.androidplayer.bean.notification.CustomNotification;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CustomPush.kt */
@Metadata
/* loaded from: classes6.dex */
public final class CustomPush {
    @Nullable
    private String content;
    @Nullable
    private String coverId;
    private long endTime;
    @Nullable
    private String iconContent;

    /* renamed from: id  reason: collision with root package name */
    public String f38123id;
    @Nullable
    private String languageCode;
    private int priority;
    @Nullable
    private String pushId;
    private long pushTime;
    private int shortId;
    @Nullable
    private String shortPlayCode;
    @Nullable
    private String title;
    @Nullable
    private String url;
    private long interval = -1;
    private int maxCount = 1;
    @NotNull
    private String upack = "";

    @NotNull
    public final CustomNotification createCustomNotification(int i10, int i11, int i12) {
        return new CustomNotification(i10, i11, i12, this, null, 16, null);
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    @Nullable
    public final String getCoverId() {
        return this.coverId;
    }

    public final long getEndTime() {
        return this.endTime;
    }

    @Nullable
    public final String getIconContent() {
        return this.iconContent;
    }

    @NotNull
    public final String getId() {
        String str = this.f38123id;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("id");
        return null;
    }

    public final long getInterval() {
        return this.interval;
    }

    @Nullable
    public final String getLanguageCode() {
        return this.languageCode;
    }

    public final int getMaxCount() {
        return this.maxCount;
    }

    public final int getPriority() {
        return this.priority;
    }

    @Nullable
    public final String getPushId() {
        return this.pushId;
    }

    public final long getPushTime() {
        return this.pushTime;
    }

    public final int getShortId() {
        return this.shortId;
    }

    @Nullable
    public final String getShortPlayCode() {
        return this.shortPlayCode;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final String getUpack() {
        return this.upack;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public final void setContent(@Nullable String str) {
        this.content = str;
    }

    public final void setCoverId(@Nullable String str) {
        this.coverId = str;
    }

    public final void setEndTime(long j10) {
        this.endTime = j10;
    }

    public final void setIconContent(@Nullable String str) {
        this.iconContent = str;
    }

    public final void setId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f38123id = str;
    }

    public final void setInterval(long j10) {
        this.interval = j10;
    }

    public final void setLanguageCode(@Nullable String str) {
        this.languageCode = str;
    }

    public final void setMaxCount(int i10) {
        this.maxCount = i10;
    }

    public final void setPriority(int i10) {
        this.priority = i10;
    }

    public final void setPushId(@Nullable String str) {
        this.pushId = str;
    }

    public final void setPushTime(long j10) {
        this.pushTime = j10;
    }

    public final void setShortId(int i10) {
        this.shortId = i10;
    }

    public final void setShortPlayCode(@Nullable String str) {
        this.shortPlayCode = str;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    public final void setUpack(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.upack = str;
    }

    public final void setUrl(@Nullable String str) {
        this.url = str;
    }

    @NotNull
    public String toString() {
        return "CustomPush(id='" + getId() + "', pushId=" + this.pushId + ", pushTime=" + this.pushTime + ", endTime=" + this.endTime + ", interval=" + this.interval + ", maxCount=" + this.maxCount + ", priority=" + this.priority + ", languageCode=" + this.languageCode + ", title=" + this.title + ", content=" + this.content + ", iconContent=" + this.iconContent + ", coverId=" + this.coverId + ", url=" + this.url + ", shortId=" + this.shortId + ')';
    }
}
