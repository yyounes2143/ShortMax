package com.bytedance.sdk.component.adexpress.ba;

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
import android.widget.ImageView;
/* loaded from: classes3.dex */
public class Xe extends ImageView {
    private int ZYk;
    private Matrix ex;
    private Paint oJ;
    private int tB;

    public Xe(Context context) {
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
        Drawable drawable = getDrawable();
        if (Build.VERSION.SDK_INT >= 28 && b.a(drawable)) {
            super.onDraw(canvas);
        } else if (drawable != null) {
            Bitmap oJ = oJ(drawable);
            if (oJ != null) {
                Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                BitmapShader bitmapShader = new BitmapShader(oJ, tileMode, tileMode);
                float f10 = 1.0f;
                if (oJ.getWidth() != getWidth() || oJ.getHeight() != getHeight()) {
                    f10 = Math.max((getWidth() * 1.0f) / oJ.getWidth(), (getHeight() * 1.0f) / oJ.getHeight());
                }
                this.ex.setScale(f10, f10);
                bitmapShader.setLocalMatrix(this.ex);
                this.oJ.setShader(bitmapShader);
                canvas.drawRoundRect(new RectF(0.0f, 0.0f, getWidth(), getHeight()), this.ZYk, this.tB, this.oJ);
                return;
            }
            super.onDraw(canvas);
        } else {
            super.onDraw(canvas);
        }
    }

    public void setXRound(int i10) {
        this.ZYk = i10;
        postInvalidate();
    }

    public void setYRound(int i10) {
        this.tB = i10;
        postInvalidate();
    }

    public Xe(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Xe(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.ZYk = 25;
        this.tB = 25;
        Paint paint = new Paint();
        this.oJ = paint;
        paint.setAntiAlias(true);
        this.oJ.setFilterBitmap(true);
        this.ex = new Matrix();
    }
}
