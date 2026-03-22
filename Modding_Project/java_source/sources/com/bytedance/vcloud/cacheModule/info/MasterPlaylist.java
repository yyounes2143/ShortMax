package com.bytedance.vcloud.cacheModule.info;

import com.bytedance.vcloud.cacheModule.CalledByNative;
@CalledByNative
/* loaded from: classes3.dex */
public class MasterPlaylist {
    public VariantStream[] mVariantStreams = null;
    public Rendition[] mRenditions = null;
    public IFrameStream[] mIFrameStreams = null;
    public SessionData[] mSessionDatas = null;
    public SessionKey[] mSessionKeys = null;

    /* loaded from: classes3.dex */
    public static class BestStream {
        public int varIndex = -1;
        public int rendIndex = -1;
    }

    /* loaded from: classes3.dex */
    public static class IFrameStream {
        public String mCodecs = null;
        public String mResolution = null;
        public String mHDCPLevel = null;
        public String mUri = null;
        public long mBandWidth = 0;
        public long mAverageBandWidth = 0;
        public long mProgramId = 0;
    }

    /* loaded from: classes3.dex */
    public static class Rendition {
        public String mType = null;
        public String mUri = null;
        public String mGroupId = null;
        public String mLanguage = null;
        public String mAssocLanguage = null;
        public String mName = null;
        public boolean mDefault = false;
        public boolean mAutoSelect = false;
        public boolean mForced = false;
        public String mInStreamId = null;
        public String mCharacteristics = null;
        public String mChannels = null;
    }

    /* loaded from: classes3.dex */
    public static class SessionData {
        public String mDataId = null;
        public String mValue = null;
        public String mUri = null;
        public String mLanguage = null;
    }

    /* loaded from: classes3.dex */
    public static class SessionKey {
        public String mMethod = null;
        public String mUri = null;
        public String mKeyFormat = null;
        public String mKeyFormatVersions = null;
        public String mIV = null;
    }

    /* loaded from: classes3.dex */
    public static class VariantStream {
        public String mCodecs = null;
        public String mResolution = null;
        public String mHDCPLevel = null;
        public String mAudioGroupId = null;
        public String mVideoGroupId = null;
        public String mSubtitleGroupId = null;
        public String mClosedCaptionsGroupId = null;
        public long mBandWidth = 0;
        public long mAverageBandWidth = 0;
        public long mProgramId = 0;
        public float mFrameRate = 0.0f;
        public String mUri = null;
    }

    public void setIFrameStreams(Object[] objArr) {
        this.mIFrameStreams = (IFrameStream[]) objArr;
    }

    public void setRenditions(Object[] objArr) {
        this.mRenditions = (Rendition[]) objArr;
    }

    public void setSessionDatas(Object[] objArr) {
        this.mSessionDatas = (SessionData[]) objArr;
    }

    public void setSessionKeys(Object[] objArr) {
        this.mSessionKeys = (SessionKey[]) objArr;
    }

    public void setVariantStreams(Object[] objArr) {
        this.mVariantStreams = (VariantStream[]) objArr;
    }
}
