package com.ss.ttm.player;

import android.util.AndroidRuntimeException;
import com.ss.ttm.player.MediaTransport;
@JNINamespace("PLAYER")
/* loaded from: classes6.dex */
public class NativeMediaTransport extends MediaTransport {
    @CalledByNative
    private static boolean isNativeMediaTransport(MediaTransport mediaTransport) {
        return mediaTransport instanceof NativeMediaTransport;
    }

    @Override // com.ss.ttm.player.MediaTransport
    protected void sendPacket(MediaTransport.MediaPacket mediaPacket) {
        throw new AndroidRuntimeException("Should not be here");
    }
}
