package com.inmobi.media;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.k9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class TextureView$SurfaceTextureListenerC3034k9 implements TextureView.SurfaceTextureListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3050l9 f24931a;

    public TextureView$SurfaceTextureListenerC3034k9(C3050l9 c3050l9) {
        this.f24931a = c3050l9;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture texture, int i10, int i11) {
        Intrinsics.checkNotNullParameter(texture, "texture");
        this.f24931a.f24963b = new Surface(texture);
        this.f24931a.e();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture texture) {
        Intrinsics.checkNotNullParameter(texture, "texture");
        Surface surface = this.f24931a.f24963b;
        if (surface != null) {
            surface.release();
        }
        C3050l9 c3050l9 = this.f24931a;
        c3050l9.f24963b = null;
        C2938e9 c2938e9 = c3050l9.f24975n;
        if (c2938e9 != null) {
            c2938e9.c();
        }
        this.f24931a.g();
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surface, int i10, int i11) {
        boolean z10;
        G8 g82;
        Intrinsics.checkNotNullParameter(surface, "surface");
        G8 mediaPlayer = this.f24931a.getMediaPlayer();
        boolean z11 = false;
        if (mediaPlayer != null && mediaPlayer.f23683b == 3) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (i10 > 0 && i11 > 0) {
            z11 = true;
        }
        if (z10 && z11) {
            Object tag = this.f24931a.getTag();
            if (tag instanceof C2904c9) {
                Object obj = ((C2904c9) tag).f24597t.get("seekPosition");
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
                int intValue = ((Integer) obj).intValue();
                if (intValue != 0) {
                    C3050l9 c3050l9 = this.f24931a;
                    if (c3050l9.a() && (g82 = c3050l9.f24964c) != null) {
                        g82.seekTo(intValue);
                    }
                }
            }
            this.f24931a.start();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture texture) {
        Intrinsics.checkNotNullParameter(texture, "texture");
    }
}
