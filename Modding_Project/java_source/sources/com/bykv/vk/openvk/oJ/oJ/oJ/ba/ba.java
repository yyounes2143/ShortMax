package com.bykv.vk.openvk.oJ.oJ.oJ.ba;

import android.view.SurfaceHolder;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class ba implements SurfaceHolder.Callback {
    private final WeakReference<SurfaceHolder.Callback> oJ;

    public ba(SurfaceHolder.Callback callback) {
        this.oJ = new WeakReference<>(callback);
    }

    public SurfaceHolder.Callback oJ() {
        return this.oJ.get();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
        SurfaceHolder.Callback callback = this.oJ.get();
        if (callback != null) {
            callback.surfaceChanged(surfaceHolder, i10, i11, i12);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        SurfaceHolder.Callback callback = this.oJ.get();
        if (callback != null) {
            callback.surfaceCreated(surfaceHolder);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        SurfaceHolder.Callback callback = this.oJ.get();
        if (callback != null) {
            callback.surfaceDestroyed(surfaceHolder);
        }
    }
}
