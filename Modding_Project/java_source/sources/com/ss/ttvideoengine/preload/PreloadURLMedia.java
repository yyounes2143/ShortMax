package com.ss.ttvideoengine.preload;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.DataLoaderResourceProvider;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Objects;
/* loaded from: classes6.dex */
public class PreloadURLMedia extends PreloadMedia {
    @Nullable
    private HashMap<String, String> mHeaders;
    @Nullable
    private DataLoaderResourceProvider mProvider;
    @Nullable
    private String[] mUrls;

    public PreloadURLMedia(String str, @Nullable String str2, long j10, String[] strArr) {
        this.mProvider = null;
        this.mHeaders = null;
        this.mCacheKey = str;
        this.mVideoId = str2;
        this.mPreloadSize = j10;
        this.mUrls = strArr;
    }

    public HashMap<String, String> customHeaders() {
        return this.mHeaders;
    }

    @Override // com.ss.ttvideoengine.preload.PreloadMedia
    public boolean equals(Object obj) {
        boolean z10;
        boolean z11 = false;
        if (obj == null) {
            return false;
        }
        if (super.equals(obj)) {
            return true;
        }
        if (!(obj instanceof PreloadURLMedia)) {
            return false;
        }
        PreloadURLMedia preloadURLMedia = (PreloadURLMedia) obj;
        if (this.mPreloadSize == preloadURLMedia.mPreloadSize && this.mCacheKey.equals(preloadURLMedia.mCacheKey)) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (getCallBackListener() != null || preloadURLMedia.getCallBackListener() != null) {
            if (getCallBackListener() == null || preloadURLMedia.getCallBackListener() == null) {
                z10 = false;
            }
            if (z10) {
                if (z10 && getCallBackListener() == preloadURLMedia.getCallBackListener()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
        }
        DataLoaderResourceProvider dataLoaderResourceProvider = this.mProvider;
        if (dataLoaderResourceProvider != null || preloadURLMedia.mProvider != null) {
            if (dataLoaderResourceProvider == null || preloadURLMedia.mProvider == null) {
                z10 = false;
            }
            if (z10) {
                if (z10 && dataLoaderResourceProvider == preloadURLMedia.mProvider) {
                    z11 = true;
                }
                return z11;
            }
            return z10;
        }
        return z10;
    }

    @Nullable
    public DataLoaderResourceProvider getProvider() {
        return this.mProvider;
    }

    @Nullable
    public String[] getUrls() {
        return this.mUrls;
    }

    @Override // com.ss.ttvideoengine.preload.PreloadMedia
    public int hashCode() {
        int hashCode = super.hashCode();
        if (this.mProvider != null) {
            hashCode = Objects.hash(Integer.valueOf(super.hashCode()), this.mProvider);
        }
        String[] strArr = this.mUrls;
        if (strArr != null) {
            return (hashCode * 31) + Arrays.hashCode(strArr);
        }
        return hashCode;
    }

    public void setCustomHeader(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.mHeaders == null) {
            this.mHeaders = new HashMap<>();
        }
        HashMap<String, String> hashMap = this.mHeaders;
        hashMap.put(str.substring(0, 1).toUpperCase() + str.substring(1), str2);
    }

    public void setProvider(@Nullable DataLoaderResourceProvider dataLoaderResourceProvider) {
        this.mProvider = dataLoaderResourceProvider;
    }

    public void setUrls(String[] strArr) {
        this.mUrls = strArr;
    }

    public PreloadURLMedia(String str, @Nullable String str2, long j10, DataLoaderResourceProvider dataLoaderResourceProvider) {
        this.mUrls = null;
        this.mHeaders = null;
        this.mProvider = dataLoaderResourceProvider;
        this.mVideoId = str2;
        this.mPreloadSize = j10;
        this.mCacheKey = str;
    }
}
