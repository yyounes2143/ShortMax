package com.ss.ttvideoengine.preload;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes6.dex */
public class PreloadLoadProgressCenter {
    private static final String TAG = "MediaTaskCenter";
    private ConcurrentHashMap<String, DataLoaderHelper.DataLoaderTaskLoadProgress> mLoadProgress;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class SingleBuilder {
        private static PreloadLoadProgressCenter center = new PreloadLoadProgressCenter();

        private SingleBuilder() {
        }
    }

    public static PreloadLoadProgressCenter center() {
        return SingleBuilder.center;
    }

    @Nullable
    public DataLoaderHelper.DataLoaderTaskLoadProgress getLoadProgressByRawKey(String str) {
        if (TextUtils.isEmpty(str)) {
            TTVideoEngineLog.e(TAG, "[preload] get, param is invalid key is null");
            return null;
        }
        return this.mLoadProgress.get(str);
    }

    public void putByRawKey(String str, DataLoaderHelper.DataLoaderTaskLoadProgress dataLoaderTaskLoadProgress) {
        if (!TextUtils.isEmpty(str) && dataLoaderTaskLoadProgress != null) {
            this.mLoadProgress.put(str, dataLoaderTaskLoadProgress);
        } else {
            TTVideoEngineLog.e(TAG, "[preload] param is invalid");
        }
    }

    public void removeLoadProgressByRawKey(String str) {
        if (TextUtils.isEmpty(str)) {
            TTVideoEngineLog.e(TAG, "[preload] remove, param is invalid key is null");
        } else {
            this.mLoadProgress.remove(str);
        }
    }

    private PreloadLoadProgressCenter() {
        this.mLoadProgress = null;
        this.mLoadProgress = new ConcurrentHashMap<>();
    }
}
