package com.ss.ttvideoengine;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.model.VideoInfo;
import java.util.List;
/* loaded from: classes6.dex */
public class VideoEngineInfos {
    public static final String USING_BUFFERING_END_INFOS = "bufferEndInfos";
    public static final String USING_BUFFERING_START_INFOS = "bufferStartInfos";
    public static final String USING_FIRST_FRAME_SPLIT_INFOS = "firstframe_split";
    public static final String USING_MDL_CACHE_END = "mdlcacheend";
    public static final String USING_MDL_FILEPATH_HIT_CACHE_SIZE = "mdlfilepathhitcachesize";
    public static final String USING_MDL_HIT_CACHE_SIZE = "mdlhitcachesize";
    public static final String USING_NO_RENDER_END_INFOS = "noRenderEndInfos";
    public static final String USING_NO_RENDER_START_INFOS = "noRenderStartInfos";
    public static final String USING_OUTSYNC_END_INFOS = "outsyncEndInfos";
    public static final String USING_OUTSYNC_START_INFOS = "outsyncStartInfos";
    public static final String USING_RENDER_SEEK_COMPLETE = "renderSeekComplete";
    public static final String USING_URL_INFOS = "usingUrlInfos";
    String mKey;
    Object mObject;
    List<VideoInfo> mUrlInfos;
    String mUsingMDLPlayTaskKey = null;
    String mUsingMDLPlayFilePath = null;
    long mHitCacheSize = 0;
    String mGroupID = "";

    public String getGroupID() {
        return this.mGroupID;
    }

    public String getKey() {
        return this.mKey;
    }

    @Nullable
    public Object getObject() {
        return this.mObject;
    }

    @Nullable
    public List<VideoInfo> getUrlInfos() {
        return this.mUrlInfos;
    }

    public long getUsingMDLHitCacheSize() {
        return this.mHitCacheSize;
    }

    @Nullable
    public String getUsingMDLPlayTaskKey() {
        return this.mUsingMDLPlayTaskKey;
    }

    @Nullable
    public String getmUsingMDLPlayFilePath() {
        return this.mUsingMDLPlayFilePath;
    }

    public void setGroupID(String str) {
        this.mGroupID = str;
    }

    public void setKey(String str) {
        this.mKey = str;
    }

    public void setObject(Object obj) {
        this.mObject = obj;
    }

    public void setUrlInfos(List<VideoInfo> list) {
        this.mUrlInfos = list;
    }

    public void setUsingMDLHitCacheSize(long j10) {
        if (j10 >= 0) {
            this.mHitCacheSize = j10;
        }
    }

    public void setUsingMDLPlayTaskKey(String str) {
        if (str.isEmpty()) {
            return;
        }
        this.mUsingMDLPlayTaskKey = str;
    }
}
