package com.bykv.vk.openvk.oJ.oJ.oJ.ba;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.openvk.oJ.oJ.oJ.ba.ZYk;
/* loaded from: classes3.dex */
public class ex extends TextureView implements TextureView.SurfaceTextureListener, ZYk {
    private ZYk.oJ ZYk;
    private oJ oJ;

    public ex(Context context) {
        this(context, null);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ba.ZYk
    public SurfaceHolder getHolder() {
        return null;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ba.ZYk
    public void oJ(oJ oJVar) {
        this.oJ = oJVar;
        setSurfaceTextureListener(this);
    }

    @Override // android.view.TextureView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.TextureView, android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
        oJ oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.oJ(surfaceTexture, i10, i11);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        oJ oJVar = this.oJ;
        if (oJVar != null) {
            return oJVar.oJ(surfaceTexture);
        }
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        oJ oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.ZYk(surfaceTexture);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
    }

    public void setWindowVisibilityChangedListener(ZYk.oJ oJVar) {
        this.ZYk = oJVar;
    }

    public ex(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ba.ZYk
    public void oJ(int i10, int i11) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i11;
        layoutParams.width = i10;
        setLayoutParams(layoutParams);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ba.ZYk
    public View getView() {
        return this;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
    }
}
