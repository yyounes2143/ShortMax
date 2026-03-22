package com.ss.ttvideoengine.preload;

import android.text.TextUtils;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
/* loaded from: classes6.dex */
public class PreloadConfig {
    private static final String TAG = "PreloadConfig";
    public int mMaxSceneCount = 10;
    public String mCurrentSceneId = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class SingleBuilder {
        private static PreloadConfig single = new PreloadConfig();

        private SingleBuilder() {
        }
    }

    public static PreloadConfig share() {
        return SingleBuilder.single;
    }

    public void createScene(PreloadScene preloadScene) {
        TTVideoEngineLog.i(TAG, "create scene " + preloadScene.mSceneId);
        if (TextUtils.isEmpty(preloadScene.mSceneId)) {
            return;
        }
        DataLoaderHelper.getDataLoader().createScene(preloadScene);
    }

    public void destroyScene(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        TTVideoEngineLog.i(TAG, "destroy scene " + str);
        DataLoaderHelper.getDataLoader().destroyScene(str);
        String str2 = this.mCurrentSceneId;
        if (str2 != null && str2.equals(str)) {
            this.mCurrentSceneId = null;
        }
    }

    public String getCurrentSceneId() {
        return this.mCurrentSceneId;
    }

    public boolean moveToScene(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        TTVideoEngineLog.i(TAG, "move to scene " + str);
        String str2 = this.mCurrentSceneId;
        if (str2 != null && str2.equals(str)) {
            return true;
        }
        this.mCurrentSceneId = str;
        DataLoaderHelper.getDataLoader().moveToScene(str);
        return true;
    }
}
