package com.startshorts.androidplayer.bean.player;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlayerHeaderInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PlayerHeaderInfo {
    private long errorCode;
    @Nullable
    private String fileKey;
    @Nullable
    private String rawKey;
    @Nullable
    private String reqHeaders;
    @Nullable
    private String respHeaders;
    @Nullable
    private String url;
    private int requestPriority = -1;
    private long startTime = -1;
    private long endTime = -1;
    private int statusCode = -1;

    public final long getEndTime() {
        return this.endTime;
    }

    public final long getErrorCode() {
        return this.errorCode;
    }

    @Nullable
    public final String getFileKey() {
        return this.fileKey;
    }

    @Nullable
    public final String getRawKey() {
        return this.rawKey;
    }

    @Nullable
    public final String getReqHeaders() {
        return this.reqHeaders;
    }

    public final int getRequestPriority() {
        return this.requestPriority;
    }

    @Nullable
    public final String getRespHeaders() {
        return this.respHeaders;
    }

    public final long getStartTime() {
        return this.startTime;
    }

    public final int getStatusCode() {
        return this.statusCode;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public final void setEndTime(long j10) {
        this.endTime = j10;
    }

    public final void setErrorCode(long j10) {
        this.errorCode = j10;
    }

    public final void setFileKey(@Nullable String str) {
        this.fileKey = str;
    }

    public final void setRawKey(@Nullable String str) {
        this.rawKey = str;
    }

    public final void setReqHeaders(@Nullable String str) {
        this.reqHeaders = str;
    }

    public final void setRequestPriority(int i10) {
        this.requestPriority = i10;
    }

    public final void setRespHeaders(@Nullable String str) {
        this.respHeaders = str;
    }

    public final void setStartTime(long j10) {
        this.startTime = j10;
    }

    public final void setStatusCode(int i10) {
        this.statusCode = i10;
    }

    public final void setUrl(@Nullable String str) {
        this.url = str;
    }

    @NotNull
    public String toString() {
        return "PlayerHeaderInfo(requestPriority=" + this.requestPriority + ", errorCode=" + this.errorCode + ", fileKey=" + this.fileKey + ", rawKey=" + this.rawKey + ", startTime=" + this.startTime + ", endTime=" + this.endTime + ", statusCode=" + this.statusCode + ", url=" + this.url + ", reqHeaders=" + this.reqHeaders + ", respHeaders=" + this.respHeaders + ')';
    }
}
