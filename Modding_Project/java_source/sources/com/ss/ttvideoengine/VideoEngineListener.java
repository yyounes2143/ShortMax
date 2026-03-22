package com.ss.ttvideoengine;

import android.view.Surface;
import com.ss.texturerender.VideoSurface;
import com.ss.ttvideoengine.utils.Error;
@Deprecated
/* loaded from: classes6.dex */
public interface VideoEngineListener {
    @Deprecated
    void onBufferingUpdate(TTVideoEngine tTVideoEngine, int i10);

    @Deprecated
    void onCompletion(TTVideoEngine tTVideoEngine);

    @Deprecated
    void onError(Error error);

    @Deprecated
    void onLoadStateChanged(TTVideoEngine tTVideoEngine, int i10);

    @Deprecated
    void onPlaybackStateChanged(TTVideoEngine tTVideoEngine, int i10);

    @Deprecated
    void onPrepare(TTVideoEngine tTVideoEngine);

    @Deprecated
    void onPrepared(TTVideoEngine tTVideoEngine);

    @Deprecated
    void onRenderStart(TTVideoEngine tTVideoEngine);

    @Deprecated
    default int onSetSurface(TTVideoEngine tTVideoEngine, VideoSurface videoSurface, Surface surface) {
        return 0;
    }

    @Deprecated
    void onStreamChanged(TTVideoEngine tTVideoEngine, int i10);

    @Deprecated
    void onVideoSizeChanged(TTVideoEngine tTVideoEngine, int i10, int i11);

    @Deprecated
    void onVideoStatusException(int i10);

    @Deprecated
    default void onFirstAVSyncFrame(TTVideoEngine tTVideoEngine) {
    }

    @Deprecated
    default void onRefreshSurface(TTVideoEngine tTVideoEngine) {
    }

    @Deprecated
    default void onVideoSecondFrame(TTVideoEngine tTVideoEngine) {
    }
}
