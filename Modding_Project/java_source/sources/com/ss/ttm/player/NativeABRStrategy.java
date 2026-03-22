package com.ss.ttm.player;

import android.util.AndroidRuntimeException;
@JNINamespace("PLAYER")
/* loaded from: classes6.dex */
public class NativeABRStrategy extends ABRStrategy {
    public NativeABRStrategy(long j10) {
        setWeakNativeObj(j10);
    }

    @CalledByNative
    public static boolean isNativeABRStrategy(ABRStrategy aBRStrategy) {
        return aBRStrategy instanceof NativeABRStrategy;
    }

    @Override // com.ss.ttm.player.ABRStrategy
    protected int probeBitrate(int i10) {
        throw new AndroidRuntimeException("Should not be here");
    }

    @Override // com.ss.ttm.player.ABRStrategy
    protected String probeBitrate(String str) {
        throw new AndroidRuntimeException("Should not be here");
    }
}
