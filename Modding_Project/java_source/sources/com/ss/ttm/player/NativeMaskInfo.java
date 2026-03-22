package com.ss.ttm.player;

import android.util.AndroidRuntimeException;
@JNINamespace("PLAYER")
/* loaded from: classes6.dex */
public class NativeMaskInfo extends MaskInfo {
    @CalledByNative
    private static boolean isNativeMaskInfo(MaskInfo maskInfo) {
        return maskInfo instanceof NativeMaskInfo;
    }

    @Override // com.ss.ttm.player.MaskInfo
    protected void onMaskInfoCallback(int i10, int i11, String str) {
        throw new AndroidRuntimeException("Should not be here");
    }
}
