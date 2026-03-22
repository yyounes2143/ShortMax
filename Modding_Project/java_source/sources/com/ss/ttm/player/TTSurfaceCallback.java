package com.ss.ttm.player;

import android.view.SurfaceHolder;
import com.ss.ttm.utils.AVLogger;
/* loaded from: classes6.dex */
public class TTSurfaceCallback implements SurfaceHolder.Callback {
    private static final String TAG = "TTSurfaceCallback";
    private ISurfaceListener mListener;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TTSurfaceCallback(ISurfaceListener iSurfaceListener) {
        this.mListener = iSurfaceListener;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
        AVLogger.d(TAG, "surface is changed");
        ISurfaceListener iSurfaceListener = this.mListener;
        if (iSurfaceListener != null) {
            iSurfaceListener.onSurfaceChanged(surfaceHolder);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        AVLogger.d(TAG, "surface is create");
        ISurfaceListener iSurfaceListener = this.mListener;
        if (iSurfaceListener != null) {
            iSurfaceListener.onSurfaceCreated(surfaceHolder);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        AVLogger.d(TAG, "surface is destroyed");
        ISurfaceListener iSurfaceListener = this.mListener;
        if (iSurfaceListener != null) {
            iSurfaceListener.onSurfaceDestroyed(surfaceHolder);
        }
    }
}
