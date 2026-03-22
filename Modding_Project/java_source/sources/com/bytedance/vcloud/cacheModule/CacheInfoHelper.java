package com.bytedance.vcloud.cacheModule;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes3.dex */
public class CacheInfoHelper {
    private static CacheInfoHelper cacheInfoHelper;
    private CacheModuleInfoListener mCacheModuleInfoListener = null;
    private final Object mListenerLock = new Object();
    private Handler mMainHandler;

    private CacheInfoHelper() {
        this.mMainHandler = null;
        this.mMainHandler = new Handler(Looper.getMainLooper()) { // from class: com.bytedance.vcloud.cacheModule.CacheInfoHelper.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i10 = message.arg1;
                String str = (String) message.obj;
                synchronized (CacheInfoHelper.this.mListenerLock) {
                    try {
                        if (CacheInfoHelper.this.mCacheModuleInfoListener != null) {
                            CacheInfoHelper.this.mCacheModuleInfoListener.onInfoListener(i10, str);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                super.handleMessage(message);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CacheInfoHelper getInstance() {
        if (cacheInfoHelper == null) {
            synchronized (CacheInfoHelper.class) {
                try {
                    if (cacheInfoHelper == null) {
                        cacheInfoHelper = new CacheInfoHelper();
                    }
                } finally {
                }
            }
        }
        return cacheInfoHelper;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onInfo(int i10, String str) {
        Message message = new Message();
        message.arg1 = i10;
        message.obj = str;
        this.mMainHandler.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCacheModuleInfoListener(CacheModuleInfoListener cacheModuleInfoListener) {
        synchronized (this.mListenerLock) {
            this.mCacheModuleInfoListener = cacheModuleInfoListener;
        }
    }
}
