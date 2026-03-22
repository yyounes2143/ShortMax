package com.ss.ttvideoengine;

import androidx.annotation.Nullable;
/* loaded from: classes6.dex */
public class DirectUrlItem {
    private static final String TAG = "DirectUrlItem";
    private long mCDNUrlExpiredTime;
    private String[] mExpireTimes;
    private final String mFileKey;
    private String[] mUrls;
    @Nullable
    private String mVideoId;

    public DirectUrlItem(String[] strArr, String str, @Nullable String str2, long j10) {
        this.mExpireTimes = null;
        this.mVideoId = str2;
        this.mUrls = strArr;
        this.mCDNUrlExpiredTime = j10;
        this.mFileKey = str;
    }

    @Nullable
    public String[] allUrls() {
        return this.mUrls;
    }

    public long cdnExpiredTime() {
        return this.mCDNUrlExpiredTime;
    }

    public String fileKey() {
        return this.mFileKey;
    }

    public String[] urlExpireTimes() {
        return this.mExpireTimes;
    }

    @Nullable
    public String vid() {
        return this.mVideoId;
    }

    public DirectUrlItem(String[] strArr, String str, @Nullable String str2, long j10, String[] strArr2) {
        this.mVideoId = str2;
        this.mUrls = strArr;
        this.mCDNUrlExpiredTime = j10;
        this.mFileKey = str;
        this.mExpireTimes = strArr2;
    }
}
