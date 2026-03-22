package com.bytedance.vcloud.abrmodule;
/* loaded from: classes3.dex */
public class ABRResultElement {
    public static final int FULL_SCREEN_NO_SR_ONCE_RESULT = 3;
    public static final int FULL_SCREEN_ONCE_RESULT = 2;
    public static final int NORMAL_ONCE_RESULT = 0;
    public static final int NO_SR_ONCE_RESULT = 1;
    private long bitrate;
    private int cacheTime;
    private int mediaType;
    private int onceSelectType;
    private int seconds;
    private int useSR;

    public ABRResultElement(long j10, int i10, int i11, int i12) {
        this.bitrate = j10;
        this.seconds = i10;
        this.mediaType = i11;
        this.cacheTime = i12;
        this.useSR = 0;
        this.onceSelectType = 0;
    }

    public long getBitrate() {
        return this.bitrate;
    }

    public int getCacheTime() {
        return this.cacheTime;
    }

    public int getMediaType() {
        return this.mediaType;
    }

    public int getOnceSelectType() {
        return this.onceSelectType;
    }

    public int getSeconds() {
        return this.seconds;
    }

    public int getUseSR() {
        return this.useSR;
    }

    public ABRResultElement(long j10, int i10, int i11, int i12, int i13) {
        this.bitrate = j10;
        this.seconds = i10;
        this.mediaType = i11;
        this.cacheTime = i12;
        this.useSR = i13;
        this.onceSelectType = 0;
    }

    public ABRResultElement(long j10, int i10, int i11, int i12, int i13, int i14) {
        this.bitrate = j10;
        this.seconds = i10;
        this.mediaType = i11;
        this.cacheTime = i12;
        this.useSR = i13;
        this.onceSelectType = i14;
    }
}
