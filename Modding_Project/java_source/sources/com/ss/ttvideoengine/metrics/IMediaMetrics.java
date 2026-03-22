package com.ss.ttvideoengine.metrics;

import android.os.Bundle;
import com.ss.ttvideoengine.log.VideoEventOnePlay;
/* loaded from: classes6.dex */
public interface IMediaMetrics {
    public static final String KEY_METRICS_FIRST_FRAME_DECODE_DURATION = "ffr_decode_duration";
    public static final String KEY_METRICS_FIRST_FRAME_PLAYER_DURATION = "ffr_prender_duration";
    public static final String KEY_METRICS_FIRST_RENDER_DURATION = "ffr_render_duration";
    public static final String KEY_METRICS_PLAYBACK_BUFFERING_DURATION = "ffr_playback_buffering_duration";
    public static final String KEY_METRICS_READ_FIRST_DATA_DURATION = "ffr_read_first_data_duration";
    public static final String KEY_METRICS_READ_HEAD_DURATION = "ffr_read_head_duration";
    public static final String KEY_METRICS_RELEASE_LAST = "ffr_free_duration";
    public static final int METRICS_TYPE_FIRST_FRAME = 0;

    int getType();

    void logMetric(VideoEventOnePlay videoEventOnePlay);

    void logMetric(String str, float f10);

    void logMetric(String str, int i10);

    void logMetric(String str, String str2);

    void logMetric(String str, boolean z10);

    boolean popMetricBoolean(String str);

    float popMetricFloat(String str);

    int popMetricInt(String str);

    long popMetricLong(String str);

    Bundle popMetrics();

    String printf();
}
