package com.ss.ttvideoengine;

import android.view.Surface;
import com.ss.texturerender.VideoSurface;
import com.ss.ttvideoengine.utils.Error;
import java.util.Map;
/* loaded from: classes6.dex */
public interface VideoEngineCallback {
    public static final int AFTER_FIRST_FRAME = 1;
    public static final int BEFORE_FIRST_FRAME = 0;
    public static final int BUFFERING_TYPE_DECODER = 1;
    public static final int BUFFERING_TYPE_NET = 0;
    public static final int BUFFER_START_ACTION_CHANG_RESOLUTION = 2;
    public static final int BUFFER_START_ACTION_NONE = 0;
    public static final int BUFFER_START_ACTION_SEEK = 1;

    default String getEncryptedLocalTime() {
        return null;
    }

    default int onSetSurface(TTVideoEngine tTVideoEngine, VideoSurface videoSurface, Surface surface) {
        return 0;
    }

    default void onAVBadInterlaced(Map map) {
    }

    default void onBufferEnd(int i10) {
    }

    default void onCompletion(TTVideoEngine tTVideoEngine) {
    }

    default void onError(Error error) {
    }

    default void onFirstAVSyncFrame(TTVideoEngine tTVideoEngine) {
    }

    default void onInfoIdChanged(int i10) {
    }

    default void onPrepare(TTVideoEngine tTVideoEngine) {
    }

    default void onPrepared(TTVideoEngine tTVideoEngine) {
    }

    default void onReadyForDisplay(TTVideoEngine tTVideoEngine) {
    }

    default void onRefreshSurface(TTVideoEngine tTVideoEngine) {
    }

    default void onRenderStart(TTVideoEngine tTVideoEngine) {
    }

    default void onVideoSecondFrame(TTVideoEngine tTVideoEngine) {
    }

    default void onVideoStatusException(int i10) {
    }

    default void onABRPredictBitrate(int i10, int i11) {
    }

    default void onBufferingUpdate(TTVideoEngine tTVideoEngine, int i10) {
    }

    default void onCurrentPlaybackTimeUpdate(TTVideoEngine tTVideoEngine, int i10) {
    }

    default void onFrameDraw(int i10, Map map) {
    }

    default void onLoadStateChanged(TTVideoEngine tTVideoEngine, int i10) {
    }

    default void onPlaybackStateChanged(TTVideoEngine tTVideoEngine, int i10) {
    }

    default void onSARChanged(int i10, int i11) {
    }

    default void onStreamChanged(TTVideoEngine tTVideoEngine, int i10) {
    }

    default void onVideoStreamBitrateChanged(Resolution resolution, int i10) {
    }

    default void onVideoURLRouteFailed(Error error, String str) {
    }

    default void onBufferStart(int i10, int i11, int i12) {
    }

    default void onVideoSizeChanged(TTVideoEngine tTVideoEngine, int i10, int i11) {
    }

    default void onFrameAboutToBeRendered(TTVideoEngine tTVideoEngine, int i10, long j10, long j11, Map<Integer, String> map) {
    }
}
