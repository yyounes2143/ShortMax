package com.ss.ttvideoengine.preload;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.IPreLoaderItemCallBackListener;
import java.util.Objects;
/* loaded from: classes6.dex */
public class PreloadMedia {
    protected String mCacheKey = null;
    @Nullable
    protected String mVideoId = null;
    protected long mPreloadSize = 0;
    protected long mContentLength = 0;
    protected long mDuration = 0;
    protected float mPreloadSecond = 0.0f;
    public String mSceneId = null;
    @Nullable
    private IPreLoaderItemCallBackListener mCallBackListener = null;

    public boolean equals(Object obj) {
        boolean z10;
        boolean z11 = false;
        if (obj == null) {
            return false;
        }
        if (super.equals(obj)) {
            return true;
        }
        if (!(obj instanceof PreloadMedia)) {
            return false;
        }
        PreloadMedia preloadMedia = (PreloadMedia) obj;
        if (this.mPreloadSize == preloadMedia.mPreloadSize && this.mCacheKey.equals(preloadMedia.mCacheKey)) {
            z10 = true;
        } else {
            z10 = false;
        }
        IPreLoaderItemCallBackListener iPreLoaderItemCallBackListener = this.mCallBackListener;
        if (iPreLoaderItemCallBackListener != null || preloadMedia.mCallBackListener != null) {
            if (iPreLoaderItemCallBackListener == null || preloadMedia.mCallBackListener == null) {
                z10 = false;
            }
            if (z10) {
                if (z10 && iPreLoaderItemCallBackListener == preloadMedia.mCallBackListener) {
                    z11 = true;
                }
                return z11;
            }
            return z10;
        }
        return z10;
    }

    @Nullable
    public String getCacheKey() {
        return this.mCacheKey;
    }

    @Nullable
    public IPreLoaderItemCallBackListener getCallBackListener() {
        return this.mCallBackListener;
    }

    public long getContentLength() {
        return this.mContentLength;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public float getPreloadSecond() {
        return this.mPreloadSecond;
    }

    public long getPreloadSize() {
        return this.mPreloadSize;
    }

    @Nullable
    public String getVideoId() {
        return this.mVideoId;
    }

    public int hashCode() {
        return Objects.hash(this.mCacheKey, this.mVideoId, this.mCallBackListener);
    }

    public void setCacheKey(String str) {
        this.mCacheKey = str;
    }

    public void setCallBackListener(@Nullable IPreLoaderItemCallBackListener iPreLoaderItemCallBackListener) {
        this.mCallBackListener = iPreLoaderItemCallBackListener;
    }

    public void setContentLength(long j10) {
        this.mContentLength = j10;
    }

    public void setDuration(long j10) {
        this.mDuration = j10;
    }

    public void setPreloadSize(long j10) {
        this.mPreloadSize = j10;
    }

    public void setVideoId(@Nullable String str) {
        this.mVideoId = str;
    }
}
