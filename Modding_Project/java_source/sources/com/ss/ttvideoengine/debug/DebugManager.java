package com.ss.ttvideoengine.debug;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.lang.ref.WeakReference;
/* loaded from: classes6.dex */
public class DebugManager {
    private static WeakReference<DebugListener> sListener;

    public static void enginePlay(TTVideoEngineInterface tTVideoEngineInterface) {
        DebugListener debugListener;
        WeakReference<DebugListener> weakReference = sListener;
        if (weakReference != null && (debugListener = weakReference.get()) != null) {
            debugListener.enginePlay(tTVideoEngineInterface);
        }
    }

    public static void setListener(DebugListener debugListener) {
        if (debugListener == null) {
            sListener = null;
        } else {
            sListener = new WeakReference<>(debugListener);
        }
    }
}
