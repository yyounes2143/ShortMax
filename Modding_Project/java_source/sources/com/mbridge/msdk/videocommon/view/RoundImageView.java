package com.mbridge.msdk.videocommon.view;

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
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.widget.MBImageView;
/* loaded from: classes6.dex */
public class RoundImageView extends MBImageView {

    /* renamed from: c  reason: collision with root package name */
    private int f31716c;

    /* renamed from: d  reason: collision with root package name */
    private int f31717d;

    /* renamed from: e  reason: collision with root package name */
    private Paint f31718e;

    /* renamed from: f  reason: collision with root package name */
    private int f31719f;

    /* renamed from: g  reason: collision with root package name */
    private Matrix f31720g;

    /* renamed from: h  reason: collision with root package name */
    private BitmapShader f31721h;

    /* renamed from: i  reason: collision with root package name */
    private int f31722i;

    /* renamed from: j  reason: collision with root package name */
    private RectF f31723j;

    public RoundImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f31720g = new Matrix();
        Paint paint = new Paint();
        this.f31718e = paint;
        paint.setAntiAlias(true);
        this.f31717d = (int) TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics());
        this.f31716c = 1;
    }

    private Bitmap a(Drawable drawable) {
        try {
            if (drawable instanceof BitmapDrawable) {
                return ((BitmapDrawable) drawable).getBitmap();
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_4444);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable.draw(canvas);
            return createBitmap;
        } catch (Throwable th2) {
            p0.b("View", th2.getMessage());
            return null;
        }
    }

    private void b() {
        Bitmap a10;
        try {
            Drawable drawable = getDrawable();
            if (drawable != null && (a10 = a(drawable)) != null && !a10.isRecycled()) {
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                this.f31721h = new BitmapShader(a10, tileMode, tileMode);
                int i10 = this.f31716c;
                float f10 = 1.0f;
                if (i10 == 0) {
                    f10 = (this.f31722i * 1.0f) / Math.min(a10.getWidth(), a10.getHeight());
                } else if (i10 == 1) {
                    f10 = Math.max((getWidth() * 1.0f) / a10.getWidth(), (getHeight() * 1.0f) / a10.getHeight());
                }
                this.f31720g.setScale(f10, f10);
                this.f31721h.setLocalMatrix(this.f31720g);
                this.f31718e.setShader(this.f31721h);
            }
        } catch (Throwable th2) {
            p0.b("RoundImageView", th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.widget.MBImageView, android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        try {
            if (getDrawable() == null) {
                return;
            }
            b();
            if (this.f31716c == 1) {
                RectF rectF = this.f31723j;
                float f10 = this.f31717d;
                canvas.drawRoundRect(rectF, f10, f10, this.f31718e);
            } else {
                float f11 = this.f31719f;
                canvas.drawCircle(f11, f11, f11, this.f31718e);
            }
        } catch (Throwable th2) {
            p0.b("RoundImageView", th2.getMessage());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f31716c == 0) {
            int min = Math.min(getMeasuredWidth(), getMeasuredHeight());
            this.f31722i = min;
            this.f31719f = min / 2;
            setMeasuredDimension(min, min);
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            super.onRestoreInstanceState(bundle.getParcelable("state_instance"));
            this.f31716c = bundle.getInt("state_type");
            this.f31717d = bundle.getInt("state_border_radius");
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("state_instance", super.onSaveInstanceState());
        bundle.putInt("state_type", this.f31716c);
        bundle.putInt("state_border_radius", this.f31717d);
        return bundle;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (this.f31716c == 1) {
            this.f31723j = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        }
    }

    public void setBorderRadius(int i10) {
        int a10 = u0.a(getContext(), i10);
        if (this.f31717d != a10) {
            this.f31717d = a10;
            invalidate();
        }
    }

    public void setType(int i10) {
        if (this.f31716c != i10) {
            this.f31716c = i10;
            if (i10 != 1 && i10 != 0) {
                this.f31716c = 0;
            }
            requestLayout();
        }
    }

    public RoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f31720g = new Matrix();
        Paint paint = new Paint();
        this.f31718e = paint;
        paint.setAntiAlias(true);
        this.f31717d = (int) TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics());
        this.f31716c = 1;
    }

    public RoundImageView(Context context) {
        super(context);
        this.f31720g = new Matrix();
        Paint paint = new Paint();
        this.f31718e = paint;
        paint.setAntiAlias(true);
        this.f31717d = (int) TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics());
        this.f31716c = 1;
    }
}
