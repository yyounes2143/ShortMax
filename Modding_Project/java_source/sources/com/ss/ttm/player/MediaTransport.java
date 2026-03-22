package com.ss.ttm.player;

import java.nio.ByteBuffer;
@JNINamespace("PLAYER")
/* loaded from: classes6.dex */
public abstract class MediaTransport extends NativeObject {
    public static final int FILTER_AUDIO = 2;
    public static final int FILTER_VIDEO = 1;

    @Keep
    /* loaded from: classes6.dex */
    public static class MediaPacket {
        public static final int CODEC_ID_AAC = 2;
        public static final int CODEC_ID_BYTE_VC1 = 1;
        public static final int CODEC_ID_H264 = 0;
        public static final int FLAG_CONFIG_FRAME = 1;
        public static final int FLAG_IS_DECODED_ONLY = 3;
        public static final int FLAG_KEY_FRAME = 2;
        public ByteBuffer mBuffer;
        public int mCodecId;
        public int mFlags;
        public boolean mIsAccessUnit;
        public boolean mIsVideo;
        public int mOffset;
        public long mPresentationTimeMs;
        public int mSize;

        @CalledByNative("MediaPacket")
        public void set(ByteBuffer byteBuffer, boolean z10, boolean z11, int i10, int i11, long j10, int i12, int i13) {
            this.mBuffer = byteBuffer;
            this.mOffset = i10;
            this.mSize = i11;
            this.mPresentationTimeMs = j10;
            this.mFlags = i12;
            this.mIsVideo = z10;
            this.mCodecId = i13;
            this.mIsAccessUnit = z11;
        }
    }

    private native void nativeSetFilterType(int i10);

    @CalledByNative
    protected abstract void sendPacket(MediaPacket mediaPacket);

    public void setFilterType(int i10) {
        nativeSetFilterType(i10);
    }
}
