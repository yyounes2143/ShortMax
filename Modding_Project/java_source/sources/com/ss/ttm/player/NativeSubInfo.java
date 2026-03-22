package com.ss.ttm.player;

import android.util.AndroidRuntimeException;
@JNINamespace("PLAYER")
/* loaded from: classes6.dex */
public class NativeSubInfo extends SubInfo {
    @CalledByNative
    private static boolean isNativeSubInfo(SubInfo subInfo) {
        return subInfo instanceof NativeSubInfo;
    }

    @Override // com.ss.ttm.player.SubInfo
    protected void onSubInfoCallback(int i10, int i11, String str) {
        throw new AndroidRuntimeException("Should not be here");
    }

    @Override // com.ss.ttm.player.SubInfo
    protected void onSubInfoCallback2(int i10, String str) {
        throw new AndroidRuntimeException("Should not be here");
    }

    @Override // com.ss.ttm.player.SubInfo
    protected void onSubLoadFinished(int i10) {
        throw new AndroidRuntimeException("Should not be here");
    }

    @Override // com.ss.ttm.player.SubInfo
    protected void onSubLoadFinished2(int i10, String str) {
        throw new AndroidRuntimeException("Should not be here");
    }

    @Override // com.ss.ttm.player.SubInfo
    protected void onSubSwitchCompleted(int i10, int i11) {
        throw new AndroidRuntimeException("Should not be here");
    }
}
