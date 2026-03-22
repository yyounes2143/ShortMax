package com.ss.ttvideoengine;
/* loaded from: classes6.dex */
public interface PlayerEventListener {
    void onAudioDecoderOpened(int i10, long j10, long j11);

    void onAudioInputFormatChanged(VideoFormatInfo videoFormatInfo);

    void onAudioRenderOpened(int i10, long j10, long j11);

    void onMediaOpened(VideoFormatInfo videoFormatInfo, long j10, long j11);

    void onVideoDecodedFirstFrame(long j10);

    void onVideoDecoderOpened(int i10, long j10, long j11);

    void onVideoInputFormatChanged(VideoFormatInfo videoFormatInfo);

    void onVideoRenderOpened(int i10, long j10, long j11);
}
