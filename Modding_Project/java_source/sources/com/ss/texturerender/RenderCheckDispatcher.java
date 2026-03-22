package com.ss.texturerender;

import android.os.Handler;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes6.dex */
public class RenderCheckDispatcher {
    private static final String TAG = "RenderCheckDispatcher";
    private ConcurrentHashMap<VideoSurfaceTexture, FrameRenderChecker> checkerMap = new ConcurrentHashMap<>();
    private volatile boolean isEnabled;
    private int mTexType;
    private final Handler msgHandler;
    private volatile int startCount;

    public RenderCheckDispatcher(Handler handler, int i10) {
        this.mTexType = -1;
        this.msgHandler = handler;
        this.mTexType = i10;
    }

    private void doStart() {
        TextureRenderLog.i(this.mTexType, TAG, "doStart");
        Handler handler = this.msgHandler;
        if (handler != null) {
            handler.sendEmptyMessage(38);
        }
    }

    private void doStop() {
        TextureRenderLog.i(this.mTexType, TAG, "doStop");
        Handler handler = this.msgHandler;
        if (handler != null) {
            handler.sendEmptyMessage(39);
        }
    }

    public void checkSurfaceTextureCallbackTime() {
        if (!this.isEnabled) {
            return;
        }
        for (Map.Entry<VideoSurfaceTexture, FrameRenderChecker> entry : this.checkerMap.entrySet()) {
            if (entry != null && entry.getValue() != null) {
                entry.getValue().checkSurfaceTextureCallbackTime();
            }
        }
    }

    public void decrease(VideoSurfaceTexture videoSurfaceTexture, FrameRenderChecker frameRenderChecker) {
        if (videoSurfaceTexture != null) {
            TextureRenderLog.i(videoSurfaceTexture.texType(), TAG, "decrease, VideoSurfaceTexture " + videoSurfaceTexture);
        }
        if (videoSurfaceTexture != null && frameRenderChecker != null) {
            this.checkerMap.remove(videoSurfaceTexture);
            if (this.startCount <= 0) {
                return;
            }
            this.startCount--;
            if (this.startCount == 0) {
                doStop();
            }
        }
    }

    public void increase(VideoSurfaceTexture videoSurfaceTexture, FrameRenderChecker frameRenderChecker) {
        if (videoSurfaceTexture != null) {
            TextureRenderLog.i(videoSurfaceTexture.texType(), TAG, "increase, VideoSurfaceTexture " + videoSurfaceTexture);
        }
        if (videoSurfaceTexture != null && frameRenderChecker != null) {
            this.checkerMap.put(videoSurfaceTexture, frameRenderChecker);
            if (this.startCount == 0) {
                doStart();
            }
            this.startCount++;
        }
    }

    public boolean isEnabled() {
        return this.isEnabled;
    }

    public boolean isStarted() {
        if (this.startCount > 0) {
            return true;
        }
        return false;
    }

    public void onDrawSucceed(VideoSurfaceTexture videoSurfaceTexture) {
        FrameRenderChecker frameRenderChecker;
        if (this.isEnabled && (frameRenderChecker = this.checkerMap.get(videoSurfaceTexture)) != null) {
            frameRenderChecker.onDrawSucceed();
        }
    }

    public void onFrameCome(VideoSurfaceTexture videoSurfaceTexture) {
        FrameRenderChecker frameRenderChecker;
        if (this.isEnabled && (frameRenderChecker = this.checkerMap.get(videoSurfaceTexture)) != null) {
            frameRenderChecker.onFrameCome();
        }
    }

    public void onSurfaceTextureCallbackCalled(VideoSurfaceTexture videoSurfaceTexture) {
        FrameRenderChecker frameRenderChecker;
        if (this.isEnabled && (frameRenderChecker = this.checkerMap.get(videoSurfaceTexture)) != null) {
            frameRenderChecker.onSurfaceTextureCallbackCalled();
        }
    }

    public void setEnabled(boolean z10) {
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, TAG, "setEnabled, " + z10);
        this.isEnabled = z10;
    }
}
