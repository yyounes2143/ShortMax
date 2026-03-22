package com.ss.ttvideoengine;

import android.view.Surface;
import androidx.annotation.RestrictTo;
import com.ss.texturerender.VideoSurface;
import com.ss.ttvideoengine.utils.Error;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes6.dex */
public final class ListenerCompact implements VideoEngineCallback {
    private ABRListener mABRListener;
    private VideoBufferDetailListener mBufferDetailListener;
    private VideoBufferListener mBufferListener;
    private VideoEngineCallback mEngineCallback;
    private final CopyOnWriteArrayList<VideoEngineCallback> mEngineCallbacks = new CopyOnWriteArrayList<>();
    private VideoEngineListener mEngineListener;
    private SARChangeListener mSARChangeListener;
    private StreamInfoListener mStreamInfoListener;
    private VideoURLRouteListener mURLRouteListener;

    public void addVideoEngineCallback(VideoEngineCallback videoEngineCallback) {
        this.mEngineCallbacks.addIfAbsent(videoEngineCallback);
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public String getEncryptedLocalTime() {
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            return videoEngineCallback.getEncryptedLocalTime();
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onABRPredictBitrate(int i10, int i11) {
        ABRListener aBRListener = this.mABRListener;
        if (aBRListener != null) {
            aBRListener.onPredictBitrate(i10, i11);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onABRPredictBitrate(i10, i11);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onABRPredictBitrate(i10, i11);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onAVBadInterlaced(Map map) {
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onAVBadInterlaced(map);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onAVBadInterlaced(map);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onBufferEnd(int i10) {
        VideoBufferListener videoBufferListener = this.mBufferListener;
        if (videoBufferListener != null) {
            videoBufferListener.onBufferEnd(i10);
        }
        VideoBufferDetailListener videoBufferDetailListener = this.mBufferDetailListener;
        if (videoBufferDetailListener != null) {
            videoBufferDetailListener.onBufferEnd(i10);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onBufferEnd(i10);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onBufferEnd(i10);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onBufferStart(int i10, int i11, int i12) {
        VideoBufferListener videoBufferListener = this.mBufferListener;
        if (videoBufferListener != null) {
            videoBufferListener.onBufferStart(i10);
        }
        VideoBufferDetailListener videoBufferDetailListener = this.mBufferDetailListener;
        if (videoBufferDetailListener != null) {
            videoBufferDetailListener.onBufferStart(i10, i11, i12);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onBufferStart(i10, i11, i12);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onBufferStart(i10, i11, i12);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onBufferingUpdate(TTVideoEngine tTVideoEngine, int i10) {
        VideoEngineListener videoEngineListener = this.mEngineListener;
        if (videoEngineListener != null) {
            videoEngineListener.onBufferingUpdate(tTVideoEngine, i10);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onBufferingUpdate(tTVideoEngine, i10);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onBufferingUpdate(tTVideoEngine, i10);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onCompletion(TTVideoEngine tTVideoEngine) {
        VideoEngineListener videoEngineListener = this.mEngineListener;
        if (videoEngineListener != null) {
            videoEngineListener.onCompletion(tTVideoEngine);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onCompletion(tTVideoEngine);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onCompletion(tTVideoEngine);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onCurrentPlaybackTimeUpdate(TTVideoEngine tTVideoEngine, int i10) {
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onCurrentPlaybackTimeUpdate(tTVideoEngine, i10);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onCurrentPlaybackTimeUpdate(tTVideoEngine, i10);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onError(Error error) {
        VideoEngineListener videoEngineListener = this.mEngineListener;
        if (videoEngineListener != null) {
            videoEngineListener.onError(error);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onError(error);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onError(error);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onFirstAVSyncFrame(TTVideoEngine tTVideoEngine) {
        VideoEngineListener videoEngineListener = this.mEngineListener;
        if (videoEngineListener != null) {
            videoEngineListener.onFirstAVSyncFrame(tTVideoEngine);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onFirstAVSyncFrame(tTVideoEngine);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onFirstAVSyncFrame(tTVideoEngine);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onFrameAboutToBeRendered(TTVideoEngine tTVideoEngine, int i10, long j10, long j11, Map<Integer, String> map) {
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onFrameAboutToBeRendered(tTVideoEngine, i10, j10, j11, map);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onFrameAboutToBeRendered(tTVideoEngine, i10, j10, j11, map);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onFrameDraw(int i10, Map map) {
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onFrameDraw(i10, map);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onFrameDraw(i10, map);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onInfoIdChanged(int i10) {
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onInfoIdChanged(i10);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onInfoIdChanged(i10);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onLoadStateChanged(TTVideoEngine tTVideoEngine, int i10) {
        VideoEngineListener videoEngineListener = this.mEngineListener;
        if (videoEngineListener != null) {
            videoEngineListener.onLoadStateChanged(tTVideoEngine, i10);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onLoadStateChanged(tTVideoEngine, i10);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onLoadStateChanged(tTVideoEngine, i10);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onPlaybackStateChanged(TTVideoEngine tTVideoEngine, int i10) {
        VideoEngineListener videoEngineListener = this.mEngineListener;
        if (videoEngineListener != null) {
            videoEngineListener.onPlaybackStateChanged(tTVideoEngine, i10);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onPlaybackStateChanged(tTVideoEngine, i10);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onPlaybackStateChanged(tTVideoEngine, i10);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onPrepare(TTVideoEngine tTVideoEngine) {
        VideoEngineListener videoEngineListener = this.mEngineListener;
        if (videoEngineListener != null) {
            videoEngineListener.onPrepare(tTVideoEngine);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onPrepare(tTVideoEngine);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onPrepare(tTVideoEngine);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onPrepared(TTVideoEngine tTVideoEngine) {
        VideoEngineListener videoEngineListener = this.mEngineListener;
        if (videoEngineListener != null) {
            videoEngineListener.onPrepared(tTVideoEngine);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onPrepared(tTVideoEngine);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onPrepared(tTVideoEngine);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onReadyForDisplay(TTVideoEngine tTVideoEngine) {
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onReadyForDisplay(tTVideoEngine);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onReadyForDisplay(tTVideoEngine);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onRefreshSurface(TTVideoEngine tTVideoEngine) {
        VideoEngineListener videoEngineListener = this.mEngineListener;
        if (videoEngineListener != null) {
            videoEngineListener.onRefreshSurface(tTVideoEngine);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onRefreshSurface(tTVideoEngine);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onRefreshSurface(tTVideoEngine);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onRenderStart(TTVideoEngine tTVideoEngine) {
        VideoEngineListener videoEngineListener = this.mEngineListener;
        if (videoEngineListener != null) {
            videoEngineListener.onRenderStart(tTVideoEngine);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onRenderStart(tTVideoEngine);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onRenderStart(tTVideoEngine);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onSARChanged(int i10, int i11) {
        SARChangeListener sARChangeListener = this.mSARChangeListener;
        if (sARChangeListener != null) {
            sARChangeListener.onSARChanged(i10, i11);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onSARChanged(i10, i11);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onSARChanged(i10, i11);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public int onSetSurface(TTVideoEngine tTVideoEngine, VideoSurface videoSurface, Surface surface) {
        VideoEngineListener videoEngineListener = this.mEngineListener;
        if (videoEngineListener != null) {
            videoEngineListener.onSetSurface(tTVideoEngine, videoSurface, surface);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            return videoEngineCallback.onSetSurface(tTVideoEngine, videoSurface, surface);
        }
        return 0;
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onStreamChanged(TTVideoEngine tTVideoEngine, int i10) {
        VideoEngineListener videoEngineListener = this.mEngineListener;
        if (videoEngineListener != null) {
            videoEngineListener.onStreamChanged(tTVideoEngine, i10);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onStreamChanged(tTVideoEngine, i10);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onStreamChanged(tTVideoEngine, i10);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onVideoSecondFrame(TTVideoEngine tTVideoEngine) {
        VideoEngineListener videoEngineListener = this.mEngineListener;
        if (videoEngineListener != null) {
            videoEngineListener.onVideoSecondFrame(tTVideoEngine);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onVideoSecondFrame(tTVideoEngine);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onVideoSecondFrame(tTVideoEngine);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onVideoSizeChanged(TTVideoEngine tTVideoEngine, int i10, int i11) {
        VideoEngineListener videoEngineListener = this.mEngineListener;
        if (videoEngineListener != null) {
            videoEngineListener.onVideoSizeChanged(tTVideoEngine, i10, i11);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onVideoSizeChanged(tTVideoEngine, i10, i11);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onVideoSizeChanged(tTVideoEngine, i10, i11);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onVideoStatusException(int i10) {
        VideoEngineListener videoEngineListener = this.mEngineListener;
        if (videoEngineListener != null) {
            videoEngineListener.onVideoStatusException(i10);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onVideoStatusException(i10);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onVideoStatusException(i10);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onVideoStreamBitrateChanged(Resolution resolution, int i10) {
        StreamInfoListener streamInfoListener = this.mStreamInfoListener;
        if (streamInfoListener != null) {
            streamInfoListener.onVideoStreamBitrateChanged(resolution, i10);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onVideoStreamBitrateChanged(resolution, i10);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onVideoStreamBitrateChanged(resolution, i10);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onVideoURLRouteFailed(Error error, String str) {
        VideoURLRouteListener videoURLRouteListener = this.mURLRouteListener;
        if (videoURLRouteListener != null) {
            videoURLRouteListener.onFailed(error, str);
        }
        VideoEngineCallback videoEngineCallback = this.mEngineCallback;
        if (videoEngineCallback != null) {
            videoEngineCallback.onVideoURLRouteFailed(error, str);
        }
        Iterator<VideoEngineCallback> it = this.mEngineCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onVideoURLRouteFailed(error, str);
        }
    }

    public void removeVideoEngineCallback(VideoEngineCallback videoEngineCallback) {
        this.mEngineCallbacks.remove(videoEngineCallback);
    }

    public void setABRListener(ABRListener aBRListener) {
        this.mABRListener = aBRListener;
    }

    public void setSARChangeListener(SARChangeListener sARChangeListener) {
        this.mSARChangeListener = sARChangeListener;
    }

    public void setStreamInfoListener(StreamInfoListener streamInfoListener) {
        this.mStreamInfoListener = streamInfoListener;
    }

    public void setVideoBufferDetailListener(VideoBufferDetailListener videoBufferDetailListener) {
        this.mBufferDetailListener = videoBufferDetailListener;
    }

    public void setVideoBufferListener(VideoBufferListener videoBufferListener) {
        this.mBufferListener = videoBufferListener;
    }

    public void setVideoEngineCallback(VideoEngineCallback videoEngineCallback) {
        this.mEngineCallback = videoEngineCallback;
    }

    public void setVideoEngineListener(VideoEngineListener videoEngineListener) {
        this.mEngineListener = videoEngineListener;
    }

    public void setVideoURLRouteListener(VideoURLRouteListener videoURLRouteListener) {
        this.mURLRouteListener = videoURLRouteListener;
    }
}
