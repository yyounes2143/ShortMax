package com.ss.ttvideoengine.preloader;

import com.ss.ttvideoengine.Resolution;
import java.util.ArrayList;
/* loaded from: classes6.dex */
public class TTAVPreloaderItem {
    public String[] mBackUpUrls;
    public long mCurFileSize;
    public int mCurUrlIndex;
    public String mFileHash;
    public String mFileKey;
    public String mFilePath;
    public long mFileSize;
    public int mHeight;
    public int mResolution;
    public long mSupportResMask;
    public String mUrl;
    public long mUrlTime;
    public String mVideoID;
    public int mWidth;

    public TTAVPreloaderItem(String str, int i10, long j10, String str2, String str3, String str4) {
        this.mSupportResMask = 0L;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mCurUrlIndex = 0;
        this.mCurFileSize = 0L;
        this.mFileSize = 0L;
        this.mUrl = str3;
        this.mUrlTime = j10;
        this.mFileKey = str2;
        this.mFilePath = str4;
        this.mVideoID = str;
        this.mResolution = i10;
        this.mBackUpUrls = null;
    }

    public Resolution[] supportResolutions() {
        ArrayList arrayList = new ArrayList();
        if ((this.mSupportResMask & 2) == 2) {
            arrayList.add(Resolution.Standard);
        }
        if ((this.mSupportResMask & 4) == 4) {
            arrayList.add(Resolution.High);
        }
        if ((this.mSupportResMask & 8) == 8) {
            arrayList.add(Resolution.SuperHigh);
        }
        if ((this.mSupportResMask & 16) == 16) {
            arrayList.add(Resolution.ExtremelyHigh);
        }
        if ((this.mSupportResMask & 32) == 32) {
            arrayList.add(Resolution.FourK);
        }
        return (Resolution[]) arrayList.toArray(new Resolution[arrayList.size()]);
    }

    public TTAVPreloaderItem(String str, int i10, long j10, String str2, String str3, String str4, long j11) {
        this.mWidth = 0;
        this.mHeight = 0;
        this.mCurUrlIndex = 0;
        this.mCurFileSize = 0L;
        this.mFileSize = 0L;
        this.mUrl = str3;
        this.mUrlTime = j10;
        this.mFileKey = str2;
        this.mFilePath = str4;
        this.mVideoID = str;
        this.mResolution = i10;
        this.mSupportResMask = j11;
        this.mBackUpUrls = null;
    }

    public TTAVPreloaderItem(String str, int i10, long j10, String str2, String str3, String str4, long j11, int i11, int i12) {
        this.mCurUrlIndex = 0;
        this.mCurFileSize = 0L;
        this.mFileSize = 0L;
        this.mUrl = str3;
        this.mUrlTime = j10;
        this.mFileKey = str2;
        this.mFilePath = str4;
        this.mVideoID = str;
        this.mResolution = i10;
        this.mSupportResMask = j11;
        this.mWidth = i11;
        this.mHeight = i12;
        this.mBackUpUrls = null;
    }

    public TTAVPreloaderItem(String str, int i10, long j10, String str2, String str3, String str4, long j11, int i11, int i12, String str5) {
        this.mCurUrlIndex = 0;
        this.mCurFileSize = 0L;
        this.mFileSize = 0L;
        this.mUrl = str3;
        this.mUrlTime = j10;
        this.mFileKey = str2;
        this.mFilePath = str4;
        this.mVideoID = str;
        this.mResolution = i10;
        this.mSupportResMask = j11;
        this.mWidth = i11;
        this.mHeight = i12;
        this.mFileHash = str5;
        this.mBackUpUrls = null;
    }

    public TTAVPreloaderItem(String str, int i10, long j10, String str2, String str3, String str4, long j11, int i11, int i12, String str5, long j12, long j13) {
        this.mCurUrlIndex = 0;
        this.mUrl = str3;
        this.mUrlTime = j10;
        this.mFileKey = str2;
        this.mFilePath = str4;
        this.mVideoID = str;
        this.mResolution = i10;
        this.mSupportResMask = j11;
        this.mWidth = i11;
        this.mHeight = i12;
        this.mFileHash = str5;
        this.mBackUpUrls = null;
        this.mCurFileSize = j12;
        this.mFileSize = j13;
    }
}
