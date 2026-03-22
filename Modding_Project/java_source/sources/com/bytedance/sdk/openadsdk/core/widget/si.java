package com.bytedance.sdk.openadsdk.core.widget;

import ai.turbolink.sdk.campaign.b;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
/* loaded from: classes3.dex */
public class si extends com.bytedance.sdk.openadsdk.core.Pfn.ex {
    private final RectF Pfn;
    private int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private BitmapShader f13321ba;
    private final Matrix ex;
    private final Paint oJ;
    private int tB;

    public si(Context context) {
        this(context, null);
    }

    private Bitmap oJ(Drawable drawable) {
        int intrinsicWidth;
        int intrinsicHeight;
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        if (drawable.getIntrinsicWidth() <= 0) {
            intrinsicWidth = getWidth();
        } else {
            intrinsicWidth = drawable.getIntrinsicWidth();
        }
        if (drawable.getIntrinsicHeight() <= 0) {
            intrinsicHeight = getHeight();
        } else {
            intrinsicHeight = drawable.getIntrinsicHeight();
        }
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        drawable.draw(canvas);
        return createBitmap;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap oJ;
        Drawable drawable = getDrawable();
        if (drawable == null) {
            super.onDraw(canvas);
        } else if (Build.VERSION.SDK_INT >= 28 && b.a(drawable)) {
            super.onDraw(canvas);
        } else {
            if (this.f13321ba == null && (oJ = oJ(drawable)) != null) {
                Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                this.f13321ba = new BitmapShader(oJ, tileMode, tileMode);
                float f10 = 1.0f;
                if (oJ.getWidth() != getWidth() || oJ.getHeight() != getHeight()) {
                    f10 = Math.max((getWidth() * 1.0f) / oJ.getWidth(), (getHeight() * 1.0f) / oJ.getHeight());
                }
                this.ex.setScale(f10, f10);
                this.f13321ba.setLocalMatrix(this.ex);
            }
            BitmapShader bitmapShader = this.f13321ba;
            if (bitmapShader != null) {
                this.oJ.setShader(bitmapShader);
                canvas.drawRoundRect(this.Pfn, this.ZYk, this.tB, this.oJ);
                return;
            }
            super.onDraw(canvas);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.Pfn.set(0.0f, 0.0f, i10, i11);
    }

    public void setXRound(int i10) {
        this.ZYk = i10;
        postInvalidate();
    }

    public void setYRound(int i10) {
        this.tB = i10;
        postInvalidate();
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        super.unscheduleDrawable(drawable);
        this.f13321ba = null;
    }

    public si(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public si(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.ZYk = 25;
        this.tB = 25;
        this.Pfn = new RectF();
        Paint paint = new Paint();
        this.oJ = paint;
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        this.ex = new Matrix();
    }
}
