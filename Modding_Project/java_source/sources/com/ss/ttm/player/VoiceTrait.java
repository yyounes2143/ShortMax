package com.ss.ttm.player;

import java.nio.ByteBuffer;
@JNINamespace("PLAYER")
/* loaded from: classes6.dex */
public abstract class VoiceTrait extends TraitObject {
    public static final int AV_PCM_FMT_DBL = 4;
    public static final int AV_PCM_FMT_DBLP = 9;
    public static final int AV_PCM_FMT_FLT = 3;
    public static final int AV_PCM_FMT_FLTP = 8;
    public static final int AV_PCM_FMT_NONE = -1;
    public static final int AV_PCM_FMT_S16 = 1;
    public static final int AV_PCM_FMT_S16P = 6;
    public static final int AV_PCM_FMT_S32 = 2;
    public static final int AV_PCM_FMT_S32P = 7;
    public static final int AV_PCM_FMT_U8 = 0;
    public static final int AV_PCM_FMT_U8P = 5;
    public static final int Version0 = 0;

    /* loaded from: classes6.dex */
    public static class AudioFrameInfo {
        public ByteBuffer[] mBuffers;
        public int mSamples;
        public long mTimestamp;
    }

    /* loaded from: classes6.dex */
    public static class AudioMediaInfo {
        public int mBytePerSample;
        public int mChannels;
        public int mDuration;
        public int mFormat;
        public int mFrameSampleNB;
        public int mIsPacked;
        public int mSampleRate;

        @CalledByNative
        public AudioMediaInfo(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            this.mSampleRate = i10;
            this.mFrameSampleNB = i11;
            this.mBytePerSample = i12;
            this.mChannels = i13;
            this.mFormat = i14;
            this.mIsPacked = i15;
            this.mDuration = i16;
        }
    }

    public VoiceTrait(int i10, long j10) {
        super(i10, j10);
    }

    @CalledByNative
    public abstract void audioClose();

    @CalledByNative
    public abstract void audioFlush();

    @CalledByNative
    public abstract int audioOpen(AudioMediaInfo audioMediaInfo);

    @CalledByNative
    public abstract void audioPause();

    @CalledByNative
    public abstract void audioResume();

    @CalledByNative
    public abstract int audioWrite(AudioFrameInfo audioFrameInfo);

    @CalledByNative
    public abstract int getLatency();

    public VoiceTrait(int i10, int i11, long j10) {
        super(i10, i11, j10);
    }
}
