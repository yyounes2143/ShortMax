package com.ss.ttm.player;

import com.ss.ttm.player.MediaPlayer;
@JNINamespace("PLAYER")
/* loaded from: classes6.dex */
public class StreamInfo {
    private int mBitrate;
    private int mChannels;
    private String mCodecName;
    private long mDuration;
    private int mFrameRate;
    private int mHeight;
    private int mRotation;
    private int mSampleRate;
    private int mStreamIndex;
    private int mStreamType;
    private int mWidth;

    @CalledByNative
    public StreamInfo(int i10, int i11, String str, int i12, int i13, int i14, int i15, int i16, int i17, long j10, int i18) {
        this.mStreamType = i10;
        this.mStreamIndex = i11;
        this.mCodecName = str;
        this.mFrameRate = i12;
        this.mBitrate = i13;
        this.mWidth = i14;
        this.mHeight = i15;
        this.mSampleRate = i16;
        this.mChannels = i17;
        this.mDuration = j10;
        this.mRotation = i18;
    }

    public MediaPlayer.TrackInfo convertToTrackInfo() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setInteger(MediaFormat.KEY_TRACK_ID, this.mStreamIndex);
        mediaFormat.setInteger(MediaFormat.KEY_FRAME_RATE, this.mFrameRate);
        mediaFormat.setInteger("bitrate", this.mBitrate);
        mediaFormat.setInteger("width", this.mWidth);
        mediaFormat.setInteger("height", this.mHeight);
        mediaFormat.setInteger(MediaFormat.KEY_SAMPLE_RATE, this.mSampleRate);
        mediaFormat.setInteger(MediaFormat.KEY_CHANNEL_COUNT, this.mChannels);
        mediaFormat.setLong("duration", this.mDuration);
        mediaFormat.setLong("rotation", this.mRotation);
        mediaFormat.setString(MediaFormat.KEY_CODEC_NAME, this.mCodecName);
        return new MediaPlayer.TrackInfo(this.mStreamType, mediaFormat);
    }

    public String toString() {
        return "StreamInfo{mStreamType=" + this.mStreamType + ", mStreamIndex=" + this.mStreamIndex + ", mCodecName='" + this.mCodecName + "', mFrameRate=" + this.mFrameRate + ", mBitrate=" + this.mBitrate + ", mWidth=" + this.mWidth + ", mHeight=" + this.mHeight + ", mSampleRate=" + this.mSampleRate + ", mChannels=" + this.mChannels + ", mDuration=" + this.mDuration + ", mRotation=" + this.mRotation + '}';
    }
}
