package com.ss.ttvideoengine;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.net.TTVNetClient;
import com.ss.ttvideoengine.source.VidPlayAuthTokenSource;
import com.ss.ttvideoengine.source.strategy.CodecStrategy;
import com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter;
import com.ss.ttvideoengine.utils.EngineException;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class PreloaderVidItem {
    private static final String TAG = "PreloaderVidItem";
    public CodecStrategyAdapter mAdapter;
    public int mApiVersion;
    private String mAuthorization;
    public boolean mBoeEnable;
    @Nullable
    private IPreLoaderItemCallBackListener mCallBackListener;
    public int mCdnType;
    public String mCodecType;
    public boolean mDashEnable;
    public boolean mEncryptEnable;
    private PreloaderVidItemFetchListener mFetchEndListener;
    private PreloaderFilePathListener mFilePathListener;
    public boolean mForbidP2p;
    public boolean mHlsEnable;
    public boolean mHttpsEnable;
    public PreloaderVidItemListener mListener;
    private TTVNetClient mNetClient;
    private boolean mOnlyFetchVideoModel;
    public Map<Integer, String> mParams;
    private int mPlayIndexGap;
    public long mPreloadSize;
    public int mPriorityLevel;
    public Resolution mResolution;
    public HashMap<String, Resolution> mResolutionMap;
    private String mSubTag;
    private String mTag;
    public String mVideoId;

    public PreloaderVidItem(String str, String str2, Resolution resolution, long j10, boolean z10) {
        this.mVideoId = null;
        Resolution resolution2 = Resolution.Undefine;
        this.mApiVersion = 0;
        this.mCodecType = "h264";
        this.mDashEnable = false;
        this.mHttpsEnable = false;
        this.mForbidP2p = false;
        this.mBoeEnable = false;
        this.mParams = null;
        this.mHlsEnable = false;
        this.mEncryptEnable = false;
        this.mPriorityLevel = 0;
        this.mAuthorization = null;
        this.mOnlyFetchVideoModel = false;
        this.mNetClient = null;
        this.mListener = null;
        this.mFetchEndListener = null;
        this.mFilePathListener = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mCallBackListener = null;
        this.mVideoId = str;
        this.mResolution = resolution;
        this.mPreloadSize = j10;
        if (z10) {
            this.mCodecType = "h265";
        }
        setAuthorization(str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getAuthorization() {
        return this.mAuthorization;
    }

    @Nullable
    public IPreLoaderItemCallBackListener getCallBackListener() {
        return this.mCallBackListener;
    }

    public int getCdnType() {
        return this.mCdnType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PreloaderVidItemFetchListener getFetchEndListener() {
        return this.mFetchEndListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PreloaderFilePathListener getFilePathListener() {
        return this.mFilePathListener;
    }

    public PreloaderVidItemListener getListener() {
        return this.mListener;
    }

    public TTVNetClient getNetClient() {
        TTVNetClient tTVNetClient = this.mNetClient;
        if (tTVNetClient != null) {
            return tTVNetClient;
        }
        TTVNetClient tTVNetClient2 = TTVideoEngineConfig.gNetClient;
        if (tTVNetClient2 != null) {
            return tTVNetClient2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean getOnlyFetchVideoModel() {
        return this.mOnlyFetchVideoModel;
    }

    public int getPlayIndexGap() {
        return this.mPlayIndexGap;
    }

    public int getPriorityLevel() {
        return this.mPriorityLevel;
    }

    public String getSubTag() {
        return this.mSubTag;
    }

    public String getTag() {
        return this.mTag;
    }

    public void setAuthorization(String str) {
        String optString;
        TTVideoEngineLog.d(TAG, "setAuthorization:" + str);
        String base64Decode = TTHelper.base64Decode(str);
        if (!TextUtils.isEmpty(base64Decode)) {
            try {
                JSONObject jSONObject = new JSONObject(base64Decode);
                String optString2 = jSONObject.optString("GetPlayInfoToken");
                this.mAuthorization = optString2;
                if (TextUtils.isEmpty(optString2)) {
                    this.mAuthorization = base64Decode;
                }
                optString = jSONObject.optString("TokenVersion");
            } catch (JSONException e10) {
                e10.printStackTrace();
                this.mAuthorization = base64Decode;
            }
            if (TextUtils.isEmpty(optString) && optString.equals("V2")) {
                this.mApiVersion = 4;
                return;
            } else {
                this.mApiVersion = 2;
            }
        }
        optString = "";
        if (TextUtils.isEmpty(optString)) {
        }
        this.mApiVersion = 2;
    }

    public void setCallBackListener(@Nullable IPreLoaderItemCallBackListener iPreLoaderItemCallBackListener) {
        this.mCallBackListener = iPreLoaderItemCallBackListener;
    }

    public void setCdnType(int i10) {
        if (FeatureManager.hasPermission("pcdn")) {
            this.mCdnType = i10;
        }
    }

    public void setFetchEndListener(PreloaderVidItemFetchListener preloaderVidItemFetchListener) {
        this.mFetchEndListener = preloaderVidItemFetchListener;
    }

    public void setFilePathListener(PreloaderFilePathListener preloaderFilePathListener) {
        this.mFilePathListener = preloaderFilePathListener;
    }

    public void setListener(PreloaderVidItemListener preloaderVidItemListener) {
        this.mListener = preloaderVidItemListener;
    }

    public void setNetworkClient(TTVNetClient tTVNetClient) {
        this.mNetClient = tTVNetClient;
    }

    public void setOnlyFetchVideoModel(boolean z10) {
        this.mOnlyFetchVideoModel = z10;
    }

    public void setPlayIndexGap(int i10) {
        this.mPlayIndexGap = i10;
    }

    public void setPriorityLevel(int i10) {
        this.mPriorityLevel = i10;
    }

    public void setResolutionMap(HashMap<String, Resolution> hashMap) {
        if (hashMap != null && hashMap.size() > 0) {
            this.mResolutionMap = hashMap;
        }
    }

    public void setSubTag(String str) {
        this.mSubTag = str;
    }

    public void setTag(String str) {
        this.mTag = str;
    }

    public PreloaderVidItem(String str, String str2, Resolution resolution, long j10, String str3) {
        this.mVideoId = null;
        Resolution resolution2 = Resolution.Undefine;
        this.mApiVersion = 0;
        this.mDashEnable = false;
        this.mHttpsEnable = false;
        this.mForbidP2p = false;
        this.mBoeEnable = false;
        this.mParams = null;
        this.mHlsEnable = false;
        this.mEncryptEnable = false;
        this.mPriorityLevel = 0;
        this.mAuthorization = null;
        this.mOnlyFetchVideoModel = false;
        this.mNetClient = null;
        this.mListener = null;
        this.mFetchEndListener = null;
        this.mFilePathListener = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mCallBackListener = null;
        this.mVideoId = str;
        this.mResolution = resolution;
        this.mPreloadSize = j10;
        this.mCodecType = str3;
        setAuthorization(str2);
    }

    public PreloaderVidItem(String str, String str2, boolean z10) {
        this.mVideoId = null;
        this.mResolution = Resolution.SuperHigh;
        this.mPreloadSize = 0L;
        this.mApiVersion = 0;
        this.mCodecType = "h264";
        this.mDashEnable = false;
        this.mHttpsEnable = false;
        this.mForbidP2p = false;
        this.mBoeEnable = false;
        this.mParams = null;
        this.mHlsEnable = false;
        this.mEncryptEnable = false;
        this.mPriorityLevel = 0;
        this.mAuthorization = null;
        this.mOnlyFetchVideoModel = false;
        this.mNetClient = null;
        this.mListener = null;
        this.mFetchEndListener = null;
        this.mFilePathListener = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mCallBackListener = null;
        this.mVideoId = str;
        setAuthorization(str2);
        this.mOnlyFetchVideoModel = z10;
    }

    public PreloaderVidItem(VidPlayAuthTokenSource vidPlayAuthTokenSource, long j10) {
        this.mVideoId = null;
        this.mResolution = Resolution.SuperHigh;
        this.mPreloadSize = 0L;
        this.mApiVersion = 0;
        this.mCodecType = "h264";
        this.mDashEnable = false;
        this.mHttpsEnable = false;
        this.mForbidP2p = false;
        this.mBoeEnable = false;
        this.mParams = null;
        this.mHlsEnable = false;
        this.mEncryptEnable = false;
        this.mPriorityLevel = 0;
        this.mAuthorization = null;
        this.mOnlyFetchVideoModel = false;
        this.mNetClient = null;
        this.mListener = null;
        this.mFetchEndListener = null;
        this.mFilePathListener = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mCallBackListener = null;
        this.mVideoId = vidPlayAuthTokenSource.vid();
        this.mResolution = vidPlayAuthTokenSource.resolution();
        this.mPreloadSize = j10;
        CodecStrategyAdapter codecStrategyAdapter = new CodecStrategyAdapter(new CodecStrategyAdapter.PreloadSourceSetter() { // from class: com.ss.ttvideoengine.PreloaderVidItem.1
            @Override // com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter.PreloadSourceSetter, com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter.SourceSetter
            public void setVideoID(String str, String str2, Resolution resolution, @Nullable String str3, @Nullable CodecStrategy.Dimension dimension) {
                super.setVideoID(str, str2, resolution, str3, dimension);
                PreloaderVidItem preloaderVidItem = PreloaderVidItem.this;
                preloaderVidItem.mVideoId = str;
                preloaderVidItem.setAuthorization(str2);
                if (dimension != null) {
                    PreloaderVidItem.this.mCodecType = dimension.encodeType;
                } else if (str3 != null) {
                    PreloaderVidItem.this.mCodecType = str3;
                } else {
                    PreloaderVidItem.this.mCodecType = null;
                }
                if (resolution != null) {
                    PreloaderVidItem.this.mResolution = resolution;
                }
            }
        });
        this.mAdapter = codecStrategyAdapter;
        try {
            codecStrategyAdapter.setStrategySource(vidPlayAuthTokenSource);
        } catch (EngineException e10) {
            e10.printStackTrace();
        }
    }

    public PreloaderVidItem(String str, Resolution resolution, long j10, boolean z10) {
        this.mVideoId = null;
        Resolution resolution2 = Resolution.Undefine;
        this.mApiVersion = 0;
        this.mCodecType = "h264";
        this.mDashEnable = false;
        this.mHttpsEnable = false;
        this.mForbidP2p = false;
        this.mBoeEnable = false;
        this.mParams = null;
        this.mHlsEnable = false;
        this.mEncryptEnable = false;
        this.mPriorityLevel = 0;
        this.mAuthorization = null;
        this.mOnlyFetchVideoModel = false;
        this.mNetClient = null;
        this.mListener = null;
        this.mFetchEndListener = null;
        this.mFilePathListener = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mCallBackListener = null;
        this.mVideoId = str;
        this.mResolution = resolution;
        this.mPreloadSize = j10;
        if (z10) {
            this.mCodecType = "h265";
        }
    }

    public PreloaderVidItem(String str, Resolution resolution, long j10, String str2) {
        this.mVideoId = null;
        Resolution resolution2 = Resolution.Undefine;
        this.mApiVersion = 0;
        this.mDashEnable = false;
        this.mHttpsEnable = false;
        this.mForbidP2p = false;
        this.mBoeEnable = false;
        this.mParams = null;
        this.mHlsEnable = false;
        this.mEncryptEnable = false;
        this.mPriorityLevel = 0;
        this.mAuthorization = null;
        this.mOnlyFetchVideoModel = false;
        this.mNetClient = null;
        this.mListener = null;
        this.mFetchEndListener = null;
        this.mFilePathListener = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mCallBackListener = null;
        this.mVideoId = str;
        this.mResolution = resolution;
        this.mPreloadSize = j10;
        this.mCodecType = str2;
    }

    public PreloaderVidItem(String str, Resolution resolution, long j10, boolean z10, boolean z11) {
        this.mVideoId = null;
        Resolution resolution2 = Resolution.Undefine;
        this.mApiVersion = 0;
        this.mCodecType = "h264";
        this.mDashEnable = false;
        this.mHttpsEnable = false;
        this.mForbidP2p = false;
        this.mBoeEnable = false;
        this.mParams = null;
        this.mHlsEnable = false;
        this.mEncryptEnable = false;
        this.mPriorityLevel = 0;
        this.mAuthorization = null;
        this.mOnlyFetchVideoModel = false;
        this.mNetClient = null;
        this.mListener = null;
        this.mFetchEndListener = null;
        this.mFilePathListener = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mCallBackListener = null;
        this.mVideoId = str;
        this.mResolution = resolution;
        this.mPreloadSize = j10;
        if (z10) {
            this.mCodecType = "h265";
        }
        this.mForbidP2p = z11;
    }

    public PreloaderVidItem(String str, Resolution resolution, long j10, String str2, boolean z10) {
        this.mVideoId = null;
        Resolution resolution2 = Resolution.Undefine;
        this.mApiVersion = 0;
        this.mDashEnable = false;
        this.mHttpsEnable = false;
        this.mBoeEnable = false;
        this.mParams = null;
        this.mHlsEnable = false;
        this.mEncryptEnable = false;
        this.mPriorityLevel = 0;
        this.mAuthorization = null;
        this.mOnlyFetchVideoModel = false;
        this.mNetClient = null;
        this.mListener = null;
        this.mFetchEndListener = null;
        this.mFilePathListener = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mCallBackListener = null;
        this.mVideoId = str;
        this.mResolution = resolution;
        this.mPreloadSize = j10;
        this.mCodecType = str2;
        this.mForbidP2p = z10;
    }
}
