package com.ss.ttvideoengine.log;

import com.ss.ttvideoengine.TTVideoEngine;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes6.dex */
public final class EngineInstanceHolder {
    private static volatile EngineInstanceHolder sInstance;
    private Map<Integer, WeakReference<TTVideoEngine>> mEngineMap = new ConcurrentHashMap();

    private EngineInstanceHolder() {
    }

    public static EngineInstanceHolder getInstance() {
        if (sInstance == null) {
            synchronized (EngineInstanceHolder.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new EngineInstanceHolder();
                    }
                } finally {
                }
            }
        }
        return sInstance;
    }

    public void add(TTVideoEngine tTVideoEngine) {
        if (tTVideoEngine != null && !this.mEngineMap.containsKey(Integer.valueOf(tTVideoEngine.hashCode()))) {
            this.mEngineMap.put(Integer.valueOf(tTVideoEngine.hashCode()), new WeakReference<>(tTVideoEngine));
        }
    }

    public Map<Integer, WeakReference<TTVideoEngine>> get() {
        return this.mEngineMap;
    }

    public void remove(TTVideoEngine tTVideoEngine) {
        if (tTVideoEngine == null) {
            return;
        }
        this.mEngineMap.remove(Integer.valueOf(tTVideoEngine.hashCode()));
    }
}
