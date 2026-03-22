package com.facebook.ads.internal.api;

import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Keep;
import com.facebook.ads.MediaViewVideoRenderer;
import com.facebook.ads.VideoStartReason;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
@Keep
/* loaded from: classes3.dex */
public interface MediaViewVideoRendererApi extends AdComponentViewApiProvider {
    void destroy();

    void disengageSeek(VideoStartReason videoStartReason);

    void engageSeek();

    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)
    int getCurrentTimeMs();

    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)
    int getDuration();

    View getVideoView();

    @FloatRange(from = 0.0d, to = 1.0d)
    float getVolume();

    void initialize(AdViewConstructorParams adViewConstructorParams, MediaViewVideoRenderer mediaViewVideoRenderer);

    void pause(boolean z10);

    void play(VideoStartReason videoStartReason);

    void seekTo(@IntRange(from = 0) int i10);

    void setVolume(@FloatRange(from = 0.0d, to = 1.0d) float f10);

    boolean shouldAutoplay();
}
