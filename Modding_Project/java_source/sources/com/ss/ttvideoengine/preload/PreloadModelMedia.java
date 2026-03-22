package com.ss.ttvideoengine.preload;

import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.model.DubbedInfo;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.VideoRef;
import com.ss.ttvideoengine.strategrycenter.ISelectBitrateCallback;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class PreloadModelMedia extends PreloadMedia {
    public boolean isLast;
    private long mCDNUrlExpiredTime;
    private String mContext;
    private String mCustomPath;
    private long mDubbedAudioPreloadSize;
    private List<DubbedInfo> mDubbedAudios;
    private Map<String, String> mExtraInfo;
    private String mFirstSubVid;
    public boolean mForbidP2p;
    private String mGroupId;
    private boolean mIsEnablePreloadDubbedAudio;
    private Map<Resolution, Float> mMultipleInfo;
    private int mPriorityLevel;
    public Resolution mResolution;
    private ISelectBitrateCallback mSelectCallback;
    public long mStartTimestamp;
    private int mSubListIndex;
    private String mSubTag;
    private String mTag;
    public IVideoModel mVideoModel;

    public PreloadModelMedia(IVideoModel iVideoModel, Resolution resolution, long j10, boolean z10) {
        this.mVideoModel = null;
        Resolution resolution2 = Resolution.Undefine;
        this.mSelectCallback = null;
        this.mExtraInfo = null;
        this.mPriorityLevel = 0;
        this.mCustomPath = null;
        this.mContext = null;
        this.mFirstSubVid = null;
        this.mSubListIndex = -1;
        this.mCDNUrlExpiredTime = 0L;
        this.mDubbedAudios = null;
        this.mIsEnablePreloadDubbedAudio = false;
        this.mDubbedAudioPreloadSize = 0L;
        this.mMultipleInfo = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mGroupId = "";
        this.isLast = false;
        this.mStartTimestamp = 0L;
        this.mVideoModel = iVideoModel;
        this.mResolution = resolution;
        this.mPreloadSize = j10;
        this.mForbidP2p = z10;
    }

    @Override // com.ss.ttvideoengine.preload.PreloadMedia
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PreloadModelMedia) || !super.equals(obj)) {
            return false;
        }
        return Objects.equals(this.mVideoModel, ((PreloadModelMedia) obj).mVideoModel);
    }

    public long getCDNUrlExpiredTime() {
        return this.mCDNUrlExpiredTime;
    }

    public String getContext() {
        return this.mContext;
    }

    public String getCustomPath() {
        return this.mCustomPath;
    }

    public long getDubbedAudioPreloadSize() {
        return this.mDubbedAudioPreloadSize;
    }

    public List<DubbedInfo> getDubbedAudios() {
        return this.mDubbedAudios;
    }

    public Map<String, String> getExtraInfo() {
        return this.mExtraInfo;
    }

    public String getFirstSubVid() {
        return this.mFirstSubVid;
    }

    public String getGroupId() {
        return this.mGroupId;
    }

    public Map<Resolution, Float> getMultipleInfo() {
        return this.mMultipleInfo;
    }

    public int getPriorityLevel() {
        return this.mPriorityLevel;
    }

    public ISelectBitrateCallback getSelectCallback() {
        return this.mSelectCallback;
    }

    public long getStartTimestamp() {
        return this.mStartTimestamp;
    }

    public int getSubListIndex() {
        return this.mSubListIndex;
    }

    public String getSubTag() {
        return this.mSubTag;
    }

    public String getTag() {
        return this.mTag;
    }

    @Override // com.ss.ttvideoengine.preload.PreloadMedia
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.mVideoModel);
    }

    public boolean isEnablePreloadDubbedAudio() {
        return this.mIsEnablePreloadDubbedAudio;
    }

    public boolean isNeedConvertStrategyInfo() {
        if (getExtraInfo() == null && getSubListIndex() == -1 && getFirstSubVid() == null && this.mCDNUrlExpiredTime == 0 && this.mTag.length() <= 0 && this.mSubTag.length() <= 0 && getMultipleInfo() == null && this.mStartTimestamp <= 0) {
            return false;
        }
        return true;
    }

    public void setCDNUrlExpiredTime(long j10) {
        this.mCDNUrlExpiredTime = j10;
    }

    public void setContext(String str) {
        this.mContext = str;
    }

    public void setCustomPath(String str) {
        this.mCustomPath = str;
    }

    public void setDubbedAudioPreloadSize(long j10) {
        this.mDubbedAudioPreloadSize = j10;
    }

    public void setDubbedAudios(List<DubbedInfo> list) {
        this.mDubbedAudios = list;
    }

    public void setEnablePreloadDubbedAudio(boolean z10) {
        this.mIsEnablePreloadDubbedAudio = z10;
    }

    public void setExtraInfo(Map<String, String> map) {
        this.mExtraInfo = map;
    }

    public void setFirstSubVideoId(String str) {
        this.mFirstSubVid = str;
    }

    public void setGroupId(String str) {
        this.mGroupId = str;
    }

    public void setMultipleInfo(Map<Resolution, Float> map) {
        this.mMultipleInfo = map;
    }

    public void setPriorityLevel(int i10) {
        this.mPriorityLevel = i10;
    }

    public void setSelectBitrateCallback(ISelectBitrateCallback iSelectBitrateCallback) {
        this.mSelectCallback = iSelectBitrateCallback;
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

    public String toStrategyInfo() {
        JSONObject mediaInfo = this.mVideoModel.getMediaInfo();
        if (mediaInfo == null) {
            return "";
        }
        try {
            mediaInfo.put("sc_priority", this.mPriorityLevel);
            if (this.mExtraInfo != null) {
                mediaInfo.put("sc_extra", new JSONObject(getExtraInfo()));
            }
            String str = this.mCustomPath;
            if (str != null) {
                mediaInfo.put("sc_custom_path", str);
            }
            String str2 = this.mContext;
            if (str2 != null) {
                mediaInfo.put("sc_context", str2);
            }
            long j10 = this.mPreloadSize;
            if (j10 > 0) {
                mediaInfo.put("sc_preload_size", j10);
            }
            String str3 = this.mFirstSubVid;
            if (str3 != null) {
                mediaInfo.put("sc_frt_sub_vid", str3);
            }
            int i10 = this.mSubListIndex;
            if (i10 != -1) {
                mediaInfo.put("sc_sub_list_index", i10);
            }
            long j11 = this.mCDNUrlExpiredTime;
            if (j11 != 0) {
                mediaInfo.put("sc_url_expired_t", j11);
            }
            if (this.mTag.length() > 0) {
                mediaInfo.put("sc_tag", this.mTag);
            }
            if (this.mSubTag.length() > 0) {
                mediaInfo.put("sc_sub_tag", this.mSubTag);
            }
            if (this.mGroupId.length() > 0) {
                mediaInfo.put("sc_gid", this.mGroupId);
            }
            if (this.mDubbedAudios != null && this.mIsEnablePreloadDubbedAudio) {
                JSONArray jSONArray = new JSONArray();
                for (DubbedInfo dubbedInfo : this.mDubbedAudios) {
                    if (dubbedInfo.toStrategyPreloadJsonObject() != null) {
                        jSONArray.put(dubbedInfo.toStrategyPreloadJsonObject());
                    }
                }
                mediaInfo.put("sc_dubbed_audios", jSONArray);
                mediaInfo.put("sc_dubbed_preload", this.mIsEnablePreloadDubbedAudio);
                mediaInfo.put("sc_dubbed_size", this.mDubbedAudioPreloadSize);
            }
            if (this.mMultipleInfo != null) {
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry<Resolution, Float> entry : this.mMultipleInfo.entrySet()) {
                    jSONObject.put(entry.getKey().toString(VideoRef.TYPE_VIDEO), entry.getValue());
                }
                mediaInfo.put("sc_multiple_info", jSONObject);
            }
            long j12 = this.mStartTimestamp;
            if (j12 > 0) {
                mediaInfo.put("timestamp", j12);
            }
            return mediaInfo.toString();
        } catch (Throwable th2) {
            TTVideoEngineLog.d(th2);
            return "";
        }
    }

    public void setFirstSubVideoId(String str, int i10) {
        this.mFirstSubVid = str;
        this.mSubListIndex = i10;
    }

    public PreloadModelMedia(IVideoModel iVideoModel) {
        this.mVideoModel = null;
        this.mResolution = Resolution.Undefine;
        this.mForbidP2p = false;
        this.mSelectCallback = null;
        this.mExtraInfo = null;
        this.mPriorityLevel = 0;
        this.mCustomPath = null;
        this.mContext = null;
        this.mFirstSubVid = null;
        this.mSubListIndex = -1;
        this.mCDNUrlExpiredTime = 0L;
        this.mDubbedAudios = null;
        this.mIsEnablePreloadDubbedAudio = false;
        this.mDubbedAudioPreloadSize = 0L;
        this.mMultipleInfo = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mGroupId = "";
        this.isLast = false;
        this.mStartTimestamp = 0L;
        this.mVideoModel = iVideoModel;
    }

    public PreloadModelMedia(IVideoModel iVideoModel, ISelectBitrateCallback iSelectBitrateCallback) {
        this.mVideoModel = null;
        this.mResolution = Resolution.Undefine;
        this.mForbidP2p = false;
        this.mExtraInfo = null;
        this.mPriorityLevel = 0;
        this.mCustomPath = null;
        this.mContext = null;
        this.mFirstSubVid = null;
        this.mSubListIndex = -1;
        this.mCDNUrlExpiredTime = 0L;
        this.mDubbedAudios = null;
        this.mIsEnablePreloadDubbedAudio = false;
        this.mDubbedAudioPreloadSize = 0L;
        this.mMultipleInfo = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mGroupId = "";
        this.isLast = false;
        this.mStartTimestamp = 0L;
        this.mVideoModel = iVideoModel;
        this.mSelectCallback = iSelectBitrateCallback;
    }
}
