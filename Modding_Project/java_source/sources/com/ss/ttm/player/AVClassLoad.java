package com.ss.ttm.player;
@JNINamespace("UTILS")
/* loaded from: classes6.dex */
class AVClassLoad {
    AVClassLoad() {
    }

    @CalledByNative
    static Object getClassLoader() {
        return AVClassLoad.class.getClassLoader();
    }
}
