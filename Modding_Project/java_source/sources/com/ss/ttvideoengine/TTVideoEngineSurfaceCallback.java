package com.ss.ttvideoengine;

import android.view.Surface;
import android.view.SurfaceHolder;
import com.ss.texturerender.VideoSurface;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.lang.ref.WeakReference;
/* loaded from: classes6.dex */
public class TTVideoEngineSurfaceCallback implements SurfaceHolder.Callback {
    private static final String TAG = "TTVideoEngineSurfaceCallback";
    private WeakReference<TTVideoEngine> mEngine;

    public TTVideoEngineSurfaceCallback(TTVideoEngine tTVideoEngine) {
        this.mEngine = new WeakReference<>(tTVideoEngine);
        TTVideoEngineLog.d(TAG, "new surface callback:" + this);
    }

    public void reset() {
        this.mEngine.clear();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
        VideoSurface textureSurface;
        TTVideoEngineLog.d(TAG, "surfaceChanged, " + surfaceHolder + ", i:" + i10 + ",i1:" + i11 + ", i2:" + i12);
        TTVideoEngine tTVideoEngine = this.mEngine.get();
        if (tTVideoEngine != null && (textureSurface = tTVideoEngine.getTextureSurface()) != null) {
            textureSurface.setSurfaceDimensions(i11, i12);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        TTVideoEngineLog.d(TAG, "surfaceCreated, " + surfaceHolder);
        TTVideoEngine tTVideoEngine = this.mEngine.get();
        if (tTVideoEngine != null) {
            tTVideoEngine.getLogger().setSurfaceSourceType(IVideoEventLogger.SET_SURFACE_TYPE_SURFACE_CREATED);
            Surface surface = surfaceHolder.getSurface();
            VideoSurface textureSurface = tTVideoEngine.getTextureSurface();
            if (textureSurface != null) {
                textureSurface.setIntOption(9, 1);
                textureSurface.updateRenderSurface(surface);
                textureSurface.setIntOption(9, 0);
                textureSurface.setIntOption(25, 1);
                TTVideoEngineLog.d(TAG, "set texturerender force draw");
                return;
            }
            long j10 = TTVideoEngineConfig.setSurfaceTimeoutForCreated;
            if (j10 == Long.MIN_VALUE) {
                j10 = tTVideoEngine.getLongOption(950);
            }
            tTVideoEngine.setSurfaceSync(surface, j10);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        TTVideoEngineLog.d(TAG, "surfaceDestroyed, " + surfaceHolder);
        TTVideoEngine tTVideoEngine = this.mEngine.get();
        if (tTVideoEngine != null) {
            tTVideoEngine.getLogger().setSurfaceSourceType(IVideoEventLogger.SET_SURFACE_TYPE_SURFACE_DESTROYED);
            VideoSurface textureSurface = tTVideoEngine.getTextureSurface();
            if (textureSurface != null) {
                textureSurface.setIntOption(9, 1);
                textureSurface.updateRenderSurface(null);
                textureSurface.setIntOption(9, 0);
                return;
            }
            long j10 = TTVideoEngineConfig.setSurfaceTimeoutForDestroy;
            if (j10 == Long.MIN_VALUE) {
                j10 = tTVideoEngine.getLongOption(950);
            }
            tTVideoEngine.setSurfaceSync(null, j10);
        }
    }
}
