package yd;

import android.graphics.SurfaceTexture;
import android.view.TextureView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SurfaceTextureAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public class g implements TextureView.SurfaceTextureListener {
    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(@NotNull SurfaceTexture surface) {
        Intrinsics.checkNotNullParameter(surface, "surface");
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(@NotNull SurfaceTexture surface, int i10, int i11) {
        Intrinsics.checkNotNullParameter(surface, "surface");
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(@NotNull SurfaceTexture surface) {
        Intrinsics.checkNotNullParameter(surface, "surface");
    }
}
