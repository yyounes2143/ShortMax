package com.ss.ttvideoengine;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.source.DirectUrlSource;
import com.ss.ttvideoengine.source.strategy.CodecStrategy;
import com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter;
import com.ss.ttvideoengine.utils.EngineException;
import java.util.HashMap;
/* loaded from: classes6.dex */
public class PreloaderURLItem {
    private static final String TAG = "PreloaderURLItem";
    public CodecStrategyAdapter mAdapter;
    @Nullable
    private IPreLoaderItemCallBackListener mCallBackListener;
    private int mCdnType;
    @Nullable
    private String mFilePath;
    private String mGroupId;
    @Nullable
    private HashMap<String, String> mHeaders;
    @Nullable
    private String mKey;
    private int mPlayIndexGap;
    private long mPreloadFooterSize;
    private long mPreloadSize;
    private int mPriorityLevel;
    @Nullable
    private DataLoaderResourceProvider mProvider;
    public long mStartTimestamp;
    private String mSubTag;
    private String mTag;
    private String[] mUrlExpireTimes;
    @Nullable
    private String[] mUrls;
    @Nullable
    private String mVideoId;

    public PreloaderURLItem(String str, @Nullable String str2, long j10, String[] strArr, String str3) {
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mGroupId = "";
        this.mPreloadFooterSize = 0L;
        this.mStartTimestamp = 0L;
        this.mPriorityLevel = 0;
        this.mUrlExpireTimes = null;
        this.mProvider = null;
        this.mCallBackListener = null;
        this.mHeaders = null;
        this.mKey = str;
        this.mVideoId = str2;
        this.mPreloadSize = j10;
        this.mUrls = strArr;
        this.mFilePath = str3;
    }

    public HashMap<String, String> customHeaders() {
        return this.mHeaders;
    }

    @Nullable
    public IPreLoaderItemCallBackListener getCallBackListener() {
        return this.mCallBackListener;
    }

    public int getCdnType() {
        return this.mCdnType;
    }

    @Nullable
    public String getFilePath() {
        return this.mFilePath;
    }

    public String getGroupId() {
        return this.mGroupId;
    }

    @Nullable
    public String getKey() {
        return this.mKey;
    }

    public int getPlayIndexGap() {
        return this.mPlayIndexGap;
    }

    public long getPreloadFooterSize() {
        return this.mPreloadFooterSize;
    }

    public long getPreloadSize() {
        return this.mPreloadSize;
    }

    public int getPriorityLevel() {
        return this.mPriorityLevel;
    }

    @Nullable
    public DataLoaderResourceProvider getProvider() {
        return this.mProvider;
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

    public String[] getUrlExpireTimes() {
        return this.mUrlExpireTimes;
    }

    @Nullable
    public String[] getUrls() {
        return this.mUrls;
    }

    @Nullable
    public String getVideoId() {
        return this.mVideoId;
    }

    public void setCallBackListener(@Nullable IPreLoaderItemCallBackListener iPreLoaderItemCallBackListener) {
        this.mCallBackListener = iPreLoaderItemCallBackListener;
    }

    public void setCdnType(int i10) {
        if (FeatureManager.hasPermission("pcdn")) {
            this.mCdnType = i10;
        }
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

    public void setGroupId(String str) {
        this.mGroupId = str;
    }

    public void setKey(@Nullable String str) {
        this.mKey = str;
    }

    public void setPlayIndexGap(int i10) {
        this.mPlayIndexGap = i10;
    }

    public void setPreloadFooterSize(long j10) {
        this.mPreloadFooterSize = j10;
    }

    public void setPriorityLevel(int i10) {
        this.mPriorityLevel = i10;
    }

    public void setProvider(@Nullable DataLoaderResourceProvider dataLoaderResourceProvider) {
        this.mProvider = dataLoaderResourceProvider;
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

    public PreloaderURLItem(String str, @Nullable String str2, long j10, String[] strArr) {
        this.mFilePath = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mGroupId = "";
        this.mPreloadFooterSize = 0L;
        this.mStartTimestamp = 0L;
        this.mPriorityLevel = 0;
        this.mUrlExpireTimes = null;
        this.mProvider = null;
        this.mCallBackListener = null;
        this.mHeaders = null;
        this.mKey = str;
        this.mVideoId = str2;
        this.mPreloadSize = j10;
        this.mUrls = strArr;
    }

    public PreloaderURLItem(@Nullable String str, long j10, String[] strArr, String str2) {
        this.mKey = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mGroupId = "";
        this.mPreloadFooterSize = 0L;
        this.mStartTimestamp = 0L;
        this.mPriorityLevel = 0;
        this.mUrlExpireTimes = null;
        this.mProvider = null;
        this.mCallBackListener = null;
        this.mHeaders = null;
        this.mFilePath = str2;
        this.mVideoId = str;
        this.mPreloadSize = j10;
        this.mUrls = strArr;
    }

    public PreloaderURLItem(@NonNull DirectUrlSource directUrlSource, long j10) {
        this.mKey = null;
        this.mFilePath = null;
        this.mVideoId = null;
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mGroupId = "";
        this.mPreloadSize = 0L;
        this.mPreloadFooterSize = 0L;
        this.mStartTimestamp = 0L;
        this.mPriorityLevel = 0;
        this.mUrls = null;
        this.mUrlExpireTimes = null;
        this.mProvider = null;
        this.mCallBackListener = null;
        this.mHeaders = null;
        this.mVideoId = directUrlSource.vid();
        this.mPreloadSize = j10;
        CodecStrategyAdapter codecStrategyAdapter = new CodecStrategyAdapter(new CodecStrategyAdapter.PreloadSourceSetter() { // from class: com.ss.ttvideoengine.PreloaderURLItem.1
            @Override // com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter.PreloadSourceSetter, com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter.SourceSetter
            public void setDirectUrl(String str, DirectUrlSource.UrlItem urlItem, @Nullable CodecStrategy.Dimension dimension, boolean z10) {
                super.setDirectUrl(str, urlItem, dimension, z10);
                PreloaderURLItem.this.mKey = urlItem.getCacheKey();
                PreloaderURLItem.this.mUrls = urlItem.getUrls();
                PreloaderURLItem.this.mUrlExpireTimes = urlItem.getUrlExpires();
            }
        });
        this.mAdapter = codecStrategyAdapter;
        try {
            codecStrategyAdapter.setStrategySource(directUrlSource);
        } catch (EngineException e10) {
            e10.printStackTrace();
        }
    }

    public PreloaderURLItem(String str, @Nullable String str2, long j10, DataLoaderResourceProvider dataLoaderResourceProvider, String str3) {
        this.mTag = "";
        this.mSubTag = "";
        this.mPlayIndexGap = -1;
        this.mGroupId = "";
        this.mPreloadFooterSize = 0L;
        this.mStartTimestamp = 0L;
        this.mPriorityLevel = 0;
        this.mUrls = null;
        this.mUrlExpireTimes = null;
        this.mCallBackListener = null;
        this.mHeaders = null;
        this.mProvider = dataLoaderResourceProvider;
        this.mVideoId = str2;
        this.mPreloadSize = j10;
        this.mKey = str;
        this.mFilePath = str3;
    }
}
