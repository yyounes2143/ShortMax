package com.ss.ttm.player;

import android.media.AudioTrack;
/* compiled from: AudioTrackPool.java */
/* loaded from: classes6.dex */
class AudioTrackBuffer {
    AudioTrack AudioTrack;
    int audioFormat;
    int channelsLayout;
    int contentType;
    int sampleRate;
    int sessionId;
    int streamType;
    int trackBufferSize;

    public AudioTrackBuffer(AudioTrack audioTrack, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.AudioTrack = audioTrack;
        this.streamType = i10;
        this.sampleRate = i11;
        this.channelsLayout = i12;
        this.audioFormat = i13;
        this.trackBufferSize = i14;
        this.sessionId = i15;
        this.contentType = i16;
    }
}
