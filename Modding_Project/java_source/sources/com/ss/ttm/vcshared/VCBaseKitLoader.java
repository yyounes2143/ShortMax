package com.ss.ttm.vcshared;

import com.ss.ttm.annotations.Keep;
@Deprecated
/* loaded from: classes6.dex */
public class VCBaseKitLoader {
    private VCBaseKitLoader() {
    }

    @Keep
    @Deprecated
    public static synchronized boolean loadLibrary() {
        boolean loadLibrary;
        synchronized (VCBaseKitLoader.class) {
            loadLibrary = com.ss.vcbkit.VCBaseKitLoader.loadLibrary();
        }
        return loadLibrary;
    }
}
