package com.ss.ttvideoengine.abr;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.vcloud.abrmodule.DefaultABRModule;
import com.bytedance.vcloud.abrmodule.IABRModule;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes6.dex */
public class ABRPool {
    private static final int MAX_COUNT = 8;
    private static boolean mEnabled = false;
    private static ABRPool singleton;
    private int mCreated = 0;
    private final Lock mLock = new ReentrantLock();
    private final List<IABRModule> mListCache = new ArrayList();
    private final Map<String, IABRModule> mMapCache = new HashMap();
    private final List<String> mMapOrder = new ArrayList();

    private ABRPool() {
    }

    public static void clear() {
        getInstance().clearPool();
    }

    private void clearPool() {
        ArrayList<IABRModule> arrayList = new ArrayList();
        this.mLock.lock();
        arrayList.addAll(this.mListCache);
        arrayList.addAll(this.mMapCache.values());
        this.mListCache.clear();
        this.mMapCache.clear();
        this.mMapOrder.clear();
        this.mLock.unlock();
        for (IABRModule iABRModule : arrayList) {
            iABRModule.release();
        }
        arrayList.clear();
    }

    public static ABRPool getInstance() {
        if (singleton == null) {
            synchronized (ABRPool.class) {
                try {
                    if (singleton == null) {
                        singleton = new ABRPool();
                    }
                } finally {
                }
            }
        }
        return singleton;
    }

    public static void setEnabled(boolean z10) {
        mEnabled = z10;
    }

    @Nullable
    public IABRModule getFromCache() {
        IABRModule iABRModule = null;
        if (!mEnabled) {
            return null;
        }
        this.mLock.lock();
        if (this.mListCache.size() > 0) {
            iABRModule = this.mListCache.remove(0);
        } else if (this.mCreated < 8) {
            iABRModule = new DefaultABRModule();
            this.mCreated++;
        } else if (this.mMapOrder.size() >= 6) {
            iABRModule = this.mMapCache.remove(this.mMapOrder.remove(0));
        }
        this.mLock.unlock();
        return iABRModule;
    }

    @Nullable
    public IABRModule getFromPreloaded(String str) {
        if (!mEnabled || TextUtils.isEmpty(str)) {
            return null;
        }
        this.mLock.lock();
        IABRModule remove = this.mMapCache.remove(str);
        this.mMapOrder.remove(str);
        this.mLock.unlock();
        return remove;
    }

    public void giveBack(@NonNull IABRModule iABRModule) {
        this.mLock.lock();
        iABRModule.stop();
        this.mListCache.add(iABRModule);
        this.mLock.unlock();
    }

    public void preloadDone(@NonNull String str, @NonNull IABRModule iABRModule) {
        this.mLock.lock();
        iABRModule.stop();
        this.mMapCache.put(str, iABRModule);
        this.mMapOrder.remove(str);
        this.mMapOrder.add(str);
        this.mLock.unlock();
    }
}
