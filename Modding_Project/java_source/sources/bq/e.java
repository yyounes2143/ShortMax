package bq;

import android.graphics.SurfaceTexture;
import android.view.TextureView;
import androidx.annotation.NonNull;
/* loaded from: classes8.dex */
public interface e extends TextureView.SurfaceTextureListener {
    @Override // android.view.TextureView.SurfaceTextureListener
    default void onSurfaceTextureUpdated(@NonNull SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    default void onSurfaceTextureSizeChanged(@NonNull SurfaceTexture surfaceTexture, int i10, int i11) {
    }
}
