package com.ss.ttvideoengine.fetcher;
/* loaded from: classes6.dex */
public class FetcherBase {
    private String mFallbackAPI;
    private String mKeyseed;
    private int mVersion;

    public FetcherBase(String str, String str2, int i10) {
        this.mKeyseed = str;
        this.mFallbackAPI = str2;
        this.mVersion = i10;
    }

    public String getFallbackAPI() {
        return this.mFallbackAPI;
    }

    public String getKeyseed() {
        return this.mKeyseed;
    }

    public int getVideoModelVersion() {
        return this.mVersion;
    }
}
