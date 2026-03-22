package com.ss.ttvideoengine.metrics;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.log.VideoEventOnePlay;
/* loaded from: classes6.dex */
public final class MetricsFactory {
    private MetricsFactory() {
    }

    @Nullable
    public static IMediaMetrics createMetrics(int i10, VideoEventOnePlay videoEventOnePlay) {
        FirstFrameMetrics firstFrameMetrics;
        if (i10 != 0) {
            firstFrameMetrics = null;
        } else {
            firstFrameMetrics = new FirstFrameMetrics(i10);
        }
        if (firstFrameMetrics != null) {
            firstFrameMetrics.logMetric(videoEventOnePlay);
        }
        return firstFrameMetrics;
    }
}
