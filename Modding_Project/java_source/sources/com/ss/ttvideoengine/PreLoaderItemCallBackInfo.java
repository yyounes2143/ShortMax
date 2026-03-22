package com.ss.ttvideoengine;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.utils.Error;
import java.util.List;
/* loaded from: classes6.dex */
public class PreLoaderItemCallBackInfo {
    public static final int KEY_IS_FETCH_END_VIDEOMODEL = 4;
    public static final int KEY_IS_PRELOAD_ADDED = 7;
    public static final int KEY_IS_PRELOAD_ALL_URL_FAILED = 9;
    public static final int KEY_IS_PRELOAD_END_CANCEL = 5;
    public static final int KEY_IS_PRELOAD_END_FAIL = 3;
    public static final int KEY_IS_PRELOAD_END_SUCCEED = 2;
    public static final int KEY_IS_PRELOAD_INFO = 6;
    public static final int KEY_IS_PRELOAD_START = 8;
    public static final int KEY_IS_USING_URLINFOS = 1;
    public static final int PRELOAD_TYPE_MILLISECOND = 1;
    public static final int PRELOAD_TYPE_SIZE = 0;
    private int mKey;
    @Nullable
    public List<VideoInfo> usingUrlInfos = null;
    @Nullable
    public DataLoaderHelper.DataLoaderTaskProgressInfo preloadDataInfo = null;
    @Nullable
    public DataLoaderHelper.DataLoaderTaskLoadProgress loadProgress = null;
    @Nullable
    public Error preloadError = null;
    @Nullable
    public VideoModel fetchVideoModel = null;
    @Nullable
    public String businessContext = null;
    @Nullable
    public String fileHash = null;
    public int preloadType = 0;
    public long audioPreloadSize = 0;
    public long videoPreloadSize = 0;

    public PreLoaderItemCallBackInfo(int i10) {
        this.mKey = i10;
    }

    public int getKey() {
        return this.mKey;
    }
}
