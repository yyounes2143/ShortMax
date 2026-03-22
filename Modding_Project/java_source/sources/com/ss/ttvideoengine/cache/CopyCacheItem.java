package com.ss.ttvideoengine.cache;

import androidx.annotation.Nullable;
/* loaded from: classes6.dex */
public class CopyCacheItem {
    public String mCustomDir;
    public String mDestPath;
    public String mFileKey;
    public boolean mForceCopyUnfinished;
    @Nullable
    public final CopyCacheListener mListener;
    public boolean mWaitIfCaching;

    public CopyCacheItem(String str, String str2, @Nullable CopyCacheListener copyCacheListener) {
        this.mFileKey = str;
        this.mDestPath = str2;
        this.mListener = copyCacheListener;
        this.mCustomDir = null;
        this.mWaitIfCaching = false;
        this.mForceCopyUnfinished = false;
    }

    public CopyCacheItem(String str, String str2, boolean z10, @Nullable CopyCacheListener copyCacheListener) {
        this.mFileKey = str;
        this.mDestPath = str2;
        this.mListener = copyCacheListener;
        this.mCustomDir = null;
        this.mWaitIfCaching = z10;
        this.mForceCopyUnfinished = false;
    }

    public CopyCacheItem(String str, String str2, boolean z10, boolean z11, @Nullable CopyCacheListener copyCacheListener) {
        this.mFileKey = str;
        this.mDestPath = str2;
        this.mListener = copyCacheListener;
        this.mCustomDir = null;
        this.mWaitIfCaching = z10;
        this.mForceCopyUnfinished = z11;
        if (z11) {
            this.mWaitIfCaching = false;
        }
    }
}
