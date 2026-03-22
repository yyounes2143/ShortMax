package com.ss.ttvideoengine.metrics;

import android.os.Bundle;
import com.ss.ttvideoengine.log.VideoEventOnePlay;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class FirstFrameMetrics implements IMediaMetrics {
    private long mFirstFrameDecodedDuration;
    private long mFirstFrameRenderDuration;
    private int mFreeLastDuration;
    private Bundle mMetrics = new Bundle();
    private long mPlaybackBufferEndDuration;
    private long mPlayerFirstFrameRenderDuration;
    private long mReadFirstVideoPktDuration;
    private long mReadHeaderDuration;
    private int mType;

    public FirstFrameMetrics(int i10) {
        this.mType = i10;
    }

    @Override // com.ss.ttvideoengine.metrics.IMediaMetrics
    public int getType() {
        return this.mType;
    }

    @Override // com.ss.ttvideoengine.metrics.IMediaMetrics
    public void logMetric(String str, int i10) {
        this.mMetrics.putInt(str, i10);
    }

    @Override // com.ss.ttvideoengine.metrics.IMediaMetrics
    public boolean popMetricBoolean(String str) {
        return this.mMetrics.getBoolean(str);
    }

    @Override // com.ss.ttvideoengine.metrics.IMediaMetrics
    public float popMetricFloat(String str) {
        return this.mMetrics.getFloat(str);
    }

    @Override // com.ss.ttvideoengine.metrics.IMediaMetrics
    public int popMetricInt(String str) {
        return this.mMetrics.getInt(str);
    }

    @Override // com.ss.ttvideoengine.metrics.IMediaMetrics
    public long popMetricLong(String str) {
        return this.mMetrics.getLong(str);
    }

    @Override // com.ss.ttvideoengine.metrics.IMediaMetrics
    public Bundle popMetrics() {
        return this.mMetrics;
    }

    @Override // com.ss.ttvideoengine.metrics.IMediaMetrics
    public String printf() {
        return this.mMetrics.toString();
    }

    @Override // com.ss.ttvideoengine.metrics.IMediaMetrics
    public void logMetric(String str, float f10) {
        this.mMetrics.putFloat(str, f10);
    }

    @Override // com.ss.ttvideoengine.metrics.IMediaMetrics
    public void logMetric(String str, String str2) {
        this.mMetrics.putString(str, str2);
    }

    @Override // com.ss.ttvideoengine.metrics.IMediaMetrics
    public void logMetric(String str, boolean z10) {
        this.mMetrics.putBoolean(str, z10);
    }

    @Override // com.ss.ttvideoengine.metrics.IMediaMetrics
    public void logMetric(VideoEventOnePlay videoEventOnePlay) {
        if (videoEventOnePlay == null) {
            return;
        }
        long j10 = videoEventOnePlay.tranFirstPacketT;
        long j11 = j10 > 0 ? j10 - videoEventOnePlay.prepare_start_time : 0L;
        this.mReadHeaderDuration = j11;
        long j12 = videoEventOnePlay.receiveFirstVideoFrameT;
        long j13 = videoEventOnePlay.prepare_start_time;
        this.mReadFirstVideoPktDuration = j12 - j13;
        this.mFirstFrameDecodedDuration = videoEventOnePlay.decodeFirstVideoFrameT - j13;
        this.mFirstFrameRenderDuration = videoEventOnePlay.f37082vt - j13;
        this.mPlayerFirstFrameRenderDuration = videoEventOnePlay.playerFirstFrameT - j13;
        long j14 = videoEventOnePlay.playbackBufferEndT;
        this.mPlaybackBufferEndDuration = j14 > 0 ? j14 - j13 : 0L;
        this.mMetrics.putLong(IMediaMetrics.KEY_METRICS_READ_HEAD_DURATION, j11);
        this.mMetrics.putLong(IMediaMetrics.KEY_METRICS_READ_FIRST_DATA_DURATION, this.mReadFirstVideoPktDuration);
        this.mMetrics.putLong(IMediaMetrics.KEY_METRICS_FIRST_FRAME_DECODE_DURATION, this.mFirstFrameDecodedDuration);
        this.mMetrics.putLong(IMediaMetrics.KEY_METRICS_FIRST_RENDER_DURATION, this.mFirstFrameRenderDuration);
        this.mMetrics.putLong(IMediaMetrics.KEY_METRICS_PLAYBACK_BUFFERING_DURATION, this.mPlaybackBufferEndDuration);
        this.mMetrics.putLong(IMediaMetrics.KEY_METRICS_FIRST_FRAME_PLAYER_DURATION, this.mPlayerFirstFrameRenderDuration);
    }
}
