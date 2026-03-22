package com.bytedance.vcloud.cacheModule;

import com.bytedance.vcloud.cacheModule.utils.CmLog;
/* loaded from: classes3.dex */
public class PlayTaskKeyManager {
    private static final String TAG;

    /* loaded from: classes3.dex */
    private static class PlayTaskKeyManagerInner {
        private static final PlayTaskKeyManager sInstance = new PlayTaskKeyManager();

        private PlayTaskKeyManagerInner() {
        }
    }

    static {
        CacheModuleLoader.loadLibrary();
        TAG = PlayTaskKeyManager.class.getSimpleName();
    }

    private native void _removePlayTask(String str);

    private native void _savePlayNodeInfo(String str);

    public static PlayTaskKeyManager getInstance() {
        return PlayTaskKeyManagerInner.sInstance;
    }

    public void onPlayTaskOpen(String str) {
        if (CacheModuleLoader.inited) {
            try {
                _savePlayNodeInfo(str);
            } catch (UnsatisfiedLinkError e10) {
                String str2 = TAG;
                CmLog.w(str2, "api-native not match: " + e10.getMessage());
            }
        }
    }

    public void removePlayTask(String str) {
        if (CacheModuleLoader.inited) {
            try {
                _removePlayTask(str);
            } catch (UnsatisfiedLinkError e10) {
                String str2 = TAG;
                CmLog.w(str2, "api-native not match: " + e10.getMessage());
            }
        }
    }
}
