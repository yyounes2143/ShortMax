package com.ss.ttvideoengine;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.source.VideoModelSource;
import com.ss.ttvideoengine.utils.Error;
import java.util.Map;
/* loaded from: classes6.dex */
public class PreloaderVideoModelItem {
    public long mAudioHeaderExtraSize;
    public long mAudioPacketExtraOffset;
    @Nullable
    private IPreLoaderItemCallBackListener mCallBackListener;
    public int mCdnType;
    private PreloaderFilePathListener mFilePathListener;
    public boolean mForbidP2p;
    public int mGearStrategyEnabled;
    private String mGroupId;
    public Map<Integer, String> mParams;
    private int mPlayIndexGap;
    public float mPreloadMilliSecond;
    public long mPreloadMilliSecondOffset;
    public long mPreloadSize;
    private int mPriorityLevel;
    public Resolution mResolution;
    public long mStartTimestamp;
    public String mSubTag;
    public String mTag;
    public long mTimePreloadLowerLimitSize;
    public long mTimePreloadUpperLimitSize;
    public long mVideoHeaderExtraSize;
    public IVideoModel mVideoModel;
    public long mVideoPacketExtraOffset;

    public PreloaderVideoModelItem(VideoModelSource videoModelSource, long j10) {
        this.mVideoModel = null;
        this.mResolution = Resolution.Undefine;
        this.mPreloadSize = 0L;
        this.mPreloadMilliSecond = 0.0f;
        this.mTimePreloadLowerLimitSize = 0L;
        this.mTimePreloadUpperLimitSize = 0L;
        this.mForbidP2p = false;
        this.mGearStrategyEnabled = 0;
        this.mParams = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mGroupId = "";
        this.mPriorityLevel = 0;
        this.mStartTimestamp = 0L;
        this.mFilePathListener = null;
        this.mCallBackListener = null;
        this.mVideoModel = videoModelSource.videoModel();
        this.mResolution = videoModelSource.resolution();
        this.mPreloadSize = j10;
    }

    public void _notifyError(int i10) {
        if (getCallBackListener() != null) {
            PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(3);
            preLoaderItemCallBackInfo.preloadError = new Error(Error.DataLoaderPreload, i10);
            getCallBackListener().preloadItemInfo(preLoaderItemCallBackInfo);
        }
    }

    @Nullable
    public IPreLoaderItemCallBackListener getCallBackListener() {
        return this.mCallBackListener;
    }

    public int getCdnType() {
        return this.mCdnType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PreloaderFilePathListener getFilePathListener() {
        return this.mFilePathListener;
    }

    public String getGroupId() {
        return this.mGroupId;
    }

    public int getPlayIndexGap() {
        return this.mPlayIndexGap;
    }

    public int getPriorityLevel() {
        return this.mPriorityLevel;
    }

    public long getStartTimestamp() {
        return this.mStartTimestamp;
    }

    public String getSubTag() {
        return this.mSubTag;
    }

    public String getTag() {
        return this.mTag;
    }

    public void setCallBackListener(@Nullable IPreLoaderItemCallBackListener iPreLoaderItemCallBackListener) {
        this.mCallBackListener = iPreLoaderItemCallBackListener;
    }

    public void setCdnType(int i10) {
        if (FeatureManager.hasPermission("pcdn")) {
            this.mCdnType = i10;
        }
    }

    public void setFilePathListener(PreloaderFilePathListener preloaderFilePathListener) {
        this.mFilePathListener = preloaderFilePathListener;
    }

    public void setGroupId(String str) {
        this.mGroupId = str;
    }

    public void setPlayIndexGap(int i10) {
        this.mPlayIndexGap = i10;
    }

    public void setPriorityLevel(int i10) {
        this.mPriorityLevel = i10;
    }

    public void setStartTimestamp(long j10) {
        this.mStartTimestamp = j10;
    }

    public void setSubTag(String str) {
        this.mSubTag = str;
    }

    public void setTag(String str) {
        this.mTag = str;
    }

    public PreloaderVideoModelItem(VideoModel videoModel, Resolution resolution, long j10, PreloaderFilePathListener preloaderFilePathListener) {
        this.mVideoModel = null;
        Resolution resolution2 = Resolution.Undefine;
        this.mPreloadMilliSecond = 0.0f;
        this.mTimePreloadLowerLimitSize = 0L;
        this.mTimePreloadUpperLimitSize = 0L;
        this.mForbidP2p = false;
        this.mGearStrategyEnabled = 0;
        this.mParams = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mGroupId = "";
        this.mPriorityLevel = 0;
        this.mStartTimestamp = 0L;
        this.mCallBackListener = null;
        this.mVideoModel = videoModel;
        this.mResolution = resolution;
        this.mPreloadSize = j10;
        this.mFilePathListener = preloaderFilePathListener;
    }

    public PreloaderVideoModelItem(IVideoModel iVideoModel, Resolution resolution, long j10, PreloaderFilePathListener preloaderFilePathListener) {
        this.mVideoModel = null;
        Resolution resolution2 = Resolution.Undefine;
        this.mPreloadMilliSecond = 0.0f;
        this.mTimePreloadLowerLimitSize = 0L;
        this.mTimePreloadUpperLimitSize = 0L;
        this.mForbidP2p = false;
        this.mGearStrategyEnabled = 0;
        this.mParams = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mGroupId = "";
        this.mPriorityLevel = 0;
        this.mStartTimestamp = 0L;
        this.mCallBackListener = null;
        this.mVideoModel = iVideoModel;
        this.mResolution = resolution;
        this.mPreloadSize = j10;
        this.mFilePathListener = preloaderFilePathListener;
    }

    public PreloaderVideoModelItem(VideoModel videoModel, Resolution resolution, long j10, boolean z10) {
        this.mVideoModel = null;
        Resolution resolution2 = Resolution.Undefine;
        this.mPreloadMilliSecond = 0.0f;
        this.mTimePreloadLowerLimitSize = 0L;
        this.mTimePreloadUpperLimitSize = 0L;
        this.mGearStrategyEnabled = 0;
        this.mParams = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mGroupId = "";
        this.mPriorityLevel = 0;
        this.mStartTimestamp = 0L;
        this.mFilePathListener = null;
        this.mCallBackListener = null;
        this.mVideoModel = videoModel;
        this.mResolution = resolution;
        this.mPreloadSize = j10;
        this.mForbidP2p = z10;
    }

    public PreloaderVideoModelItem(VideoModel videoModel, Resolution resolution, long j10, long j11, long j12, boolean z10) {
        this.mVideoModel = null;
        Resolution resolution2 = Resolution.Undefine;
        this.mTimePreloadLowerLimitSize = 0L;
        this.mTimePreloadUpperLimitSize = 0L;
        this.mGearStrategyEnabled = 0;
        this.mParams = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mGroupId = "";
        this.mPriorityLevel = 0;
        this.mStartTimestamp = 0L;
        this.mFilePathListener = null;
        this.mCallBackListener = null;
        this.mVideoModel = videoModel;
        this.mResolution = resolution;
        this.mPreloadSize = j10;
        this.mPreloadMilliSecondOffset = j11;
        this.mPreloadMilliSecond = (float) j12;
        this.mForbidP2p = z10;
    }

    public PreloaderVideoModelItem(VideoModel videoModel, Resolution resolution, long j10, long j11, boolean z10) {
        this.mVideoModel = null;
        Resolution resolution2 = Resolution.Undefine;
        this.mPreloadMilliSecond = 0.0f;
        this.mTimePreloadLowerLimitSize = 0L;
        this.mTimePreloadUpperLimitSize = 0L;
        this.mGearStrategyEnabled = 0;
        this.mParams = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mGroupId = "";
        this.mPriorityLevel = 0;
        this.mStartTimestamp = 0L;
        this.mFilePathListener = null;
        this.mCallBackListener = null;
        this.mVideoModel = videoModel;
        this.mResolution = resolution;
        this.mPreloadSize = j10;
        this.mPreloadMilliSecondOffset = j11;
        this.mForbidP2p = z10;
    }

    public PreloaderVideoModelItem(VideoModel videoModel, Resolution resolution, float f10, long j10, long j11) {
        this.mVideoModel = null;
        Resolution resolution2 = Resolution.Undefine;
        this.mPreloadSize = 0L;
        this.mForbidP2p = false;
        this.mGearStrategyEnabled = 0;
        this.mParams = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mGroupId = "";
        this.mPriorityLevel = 0;
        this.mStartTimestamp = 0L;
        this.mFilePathListener = null;
        this.mCallBackListener = null;
        this.mVideoModel = videoModel;
        this.mResolution = resolution;
        this.mPreloadMilliSecond = f10;
        this.mTimePreloadLowerLimitSize = j10;
        this.mTimePreloadUpperLimitSize = j11;
    }

    public PreloaderVideoModelItem(VideoModel videoModel, Resolution resolution, long j10, float f10, long j11, long j12) {
        this.mVideoModel = null;
        Resolution resolution2 = Resolution.Undefine;
        this.mPreloadSize = 0L;
        this.mForbidP2p = false;
        this.mGearStrategyEnabled = 0;
        this.mParams = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mGroupId = "";
        this.mPriorityLevel = 0;
        this.mStartTimestamp = 0L;
        this.mFilePathListener = null;
        this.mCallBackListener = null;
        this.mVideoModel = videoModel;
        this.mResolution = resolution;
        this.mPreloadMilliSecondOffset = j10;
        this.mPreloadMilliSecond = f10;
        this.mTimePreloadLowerLimitSize = j11;
        this.mTimePreloadUpperLimitSize = j12;
    }
}
