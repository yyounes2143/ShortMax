package com.ss.ttm.player;

import android.util.AndroidRuntimeException;
import java.nio.ByteBuffer;
@JNINamespace("PLAYER")
/* loaded from: classes6.dex */
public class NativeAudioProcessor extends AudioProcessor {
    protected long mNativeWrapper = 0;

    @CalledByNative
    private long getNativeWrapper() {
        return this.mNativeWrapper;
    }

    @CalledByNative
    public static boolean isNativeAudioProcessor(AudioProcessor audioProcessor) {
        return audioProcessor instanceof NativeAudioProcessor;
    }

    @Override // com.ss.ttm.player.AudioProcessor
    public void audioClose() {
        throw new AndroidRuntimeException("Should not be here");
    }

    @Override // com.ss.ttm.player.AudioProcessor
    public void audioOpen(int i10, int i11, int i12, int i13) {
        throw new AndroidRuntimeException("Should not be here");
    }

    @Override // com.ss.ttm.player.AudioProcessor
    public void audioProcess(ByteBuffer[] byteBufferArr, int i10, long j10) {
        throw new AndroidRuntimeException("Should not be here");
    }

    @Override // com.ss.ttm.player.AudioProcessor
    public void audioRelease(int i10) {
        throw new AndroidRuntimeException("Should not be here");
    }

    @CalledByNative
    public void setNativeWrapper(long j10) {
        this.mNativeWrapper = j10;
    }
}
