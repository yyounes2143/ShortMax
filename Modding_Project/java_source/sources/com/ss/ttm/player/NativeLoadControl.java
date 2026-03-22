package com.ss.ttm.player;

import android.util.AndroidRuntimeException;
@JNINamespace("PLAYER")
/* loaded from: classes6.dex */
public class NativeLoadControl extends LoadControl {
    @CalledByNative
    private static boolean isNativeLoadControl(LoadControl loadControl) {
        return loadControl instanceof NativeLoadControl;
    }

    @Override // com.ss.ttm.player.LoadControl
    protected int onCodecStackSelected(int i10) {
        throw new AndroidRuntimeException("Should not be here");
    }

    @Override // com.ss.ttm.player.LoadControl
    protected int onFilterStackSelected(int i10) {
        throw new AndroidRuntimeException("Should not be here");
    }

    @Override // com.ss.ttm.player.LoadControl
    protected int onTrackSelected(int i10) {
        throw new AndroidRuntimeException("Should not be here");
    }

    @Override // com.ss.ttm.player.LoadControl
    protected boolean shouldStartPlayback(long j10, float f10, boolean z10) {
        throw new AndroidRuntimeException("Should not be here");
    }
}
