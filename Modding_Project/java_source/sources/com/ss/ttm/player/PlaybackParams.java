package com.ss.ttm.player;
/* loaded from: classes6.dex */
public final class PlaybackParams {
    protected static final int DEFAULT_VALUE = -1;
    private int mDescribeContents = -1;
    private int mAudioFallbackMode = -1;
    private float mPitch = -1.0f;
    private float mSpeed = -1.0f;

    public int describeContents() {
        return this.mDescribeContents;
    }

    public int getAudioFallbackMode() {
        return this.mAudioFallbackMode;
    }

    public float getPitch() {
        return this.mPitch;
    }

    public float getSpeed() {
        return this.mSpeed;
    }

    public PlaybackParams setAudioFallbackMode(int i10) {
        this.mAudioFallbackMode = i10;
        return this;
    }

    public PlaybackParams setPitch(float f10) {
        this.mPitch = f10;
        return this;
    }

    public PlaybackParams setSpeed(float f10) {
        this.mSpeed = f10;
        return this;
    }

    public PlaybackParams allowDefaults() {
        return this;
    }
}
