package com.ss.texturerender;
@JNINamespace("UTILS")
/* loaded from: classes6.dex */
class ClassLoad {
    ClassLoad() {
    }

    @CalledByNative
    static Object getClassLoader() {
        return ClassLoad.class.getClassLoader();
    }
}
