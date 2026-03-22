package com.ss.ttm.player;
@JNINamespace("PLAYER")
/* loaded from: classes6.dex */
public abstract class ABRStrategy extends NativeObject {
    @CalledByNative
    protected abstract int probeBitrate(int i10);

    @CalledByNative
    protected abstract String probeBitrate(String str);
}
