package com.bytedance.sdk.component.adexpress.ba;

import ai.turbolink.sdk.campaign.b;
import ai.turbolink.sdk.campaign.c;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Movie;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.view.View;
import android.widget.ImageView;
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes3.dex */
public class PiB extends ImageView {
    private volatile boolean BTZ;
    private boolean Pfn;
    private boolean PiB;
    private boolean WcQ;
    private long ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private boolean f12646ba;
    private float cFZ;
    private int dLZ;
    private AnimatedImageDrawable ex;
    private float jFA;
    private int kkU;
    private Movie oJ;

    /* renamed from: so  reason: collision with root package name */
    private float f12647so;
    private int tB;

    public PiB(Context context) {
        super(context);
        boolean z10;
        if (Build.VERSION.SDK_INT >= 28) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Pfn = z10;
        this.f12646ba = false;
        this.PiB = true;
        this.WcQ = true;
        oJ();
    }

    private void ZYk() {
        if (this.oJ != null && !this.Pfn && this.PiB) {
            postInvalidateOnAnimation();
        }
    }

    private void setDrawable(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        setImageDrawable(drawable);
        if (Build.VERSION.SDK_INT >= 28 && b.a(drawable)) {
            AnimatedImageDrawable a10 = c.a(drawable);
            this.ex = a10;
            if (!this.BTZ) {
                a10.start();
            }
            if (!this.WcQ) {
                a10.setRepeatCount(0);
            }
        }
        ZYk();
    }

    private void tB() {
        if (this.oJ == null) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.ZYk == 0) {
            this.ZYk = uptimeMillis;
        }
        int duration = this.oJ.duration();
        if (duration == 0) {
            duration = 1000;
        }
        if (!this.WcQ && Math.abs(duration - this.tB) < 60) {
            this.tB = duration;
            this.BTZ = true;
            return;
        }
        this.tB = (int) ((uptimeMillis - this.ZYk) % duration);
    }

    void oJ() {
        if (this.Pfn) {
            return;
        }
        setLayerType(1, null);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.oJ != null && !this.Pfn) {
            try {
                if (!this.BTZ) {
                    tB();
                    oJ(canvas);
                    ZYk();
                    return;
                }
                oJ(canvas);
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean z11;
        super.onLayout(z10, i10, i11, i12, i13);
        if (this.oJ != null && !this.Pfn) {
            this.cFZ = (getWidth() - this.kkU) / 2.0f;
            this.f12647so = (getHeight() - this.dLZ) / 2.0f;
        }
        if (getVisibility() == 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.PiB = z11;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        Movie movie;
        float f10;
        float f11;
        int size;
        int size2;
        super.onMeasure(i10, i11);
        if (!this.Pfn && (movie = this.oJ) != null) {
            int width = movie.width();
            int height = this.oJ.height();
            if (View.MeasureSpec.getMode(i10) != 0 && width > (size2 = View.MeasureSpec.getSize(i10))) {
                f10 = width / size2;
            } else {
                f10 = 1.0f;
            }
            if (View.MeasureSpec.getMode(i11) != 0 && height > (size = View.MeasureSpec.getSize(i11))) {
                f11 = height / size;
            } else {
                f11 = 1.0f;
            }
            float max = 1.0f / Math.max(f10, f11);
            this.jFA = max;
            int i12 = (int) (width * max);
            this.kkU = i12;
            int i13 = (int) (height * max);
            this.dLZ = i13;
            setMeasuredDimension(i12, i13);
        }
    }

    @Override // android.view.View
    @SuppressLint({"NewApi"})
    public void onScreenStateChanged(int i10) {
        super.onScreenStateChanged(i10);
        if (this.oJ != null) {
            boolean z10 = true;
            if (i10 != 1) {
                z10 = false;
            }
            this.PiB = z10;
            ZYk();
        }
    }

    @Override // android.view.View
    @SuppressLint({"NewApi"})
    protected void onVisibilityChanged(View view, int i10) {
        boolean z10;
        super.onVisibilityChanged(view, i10);
        if (this.oJ != null) {
            if (i10 == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.PiB = z10;
            ZYk();
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        boolean z10;
        super.onWindowVisibilityChanged(i10);
        if (this.oJ != null) {
            if (i10 == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.PiB = z10;
            ZYk();
        }
    }

    public void setRepeatConfig(boolean z10) {
        AnimatedImageDrawable animatedImageDrawable;
        this.WcQ = z10;
        if (!z10) {
            try {
                if (Build.VERSION.SDK_INT >= 28 && (animatedImageDrawable = this.ex) != null) {
                    animatedImageDrawable.setRepeatCount(0);
                }
            } catch (Exception unused) {
            }
        }
    }

    private void oJ(Canvas canvas) {
        Movie movie = this.oJ;
        if (movie == null) {
            return;
        }
        movie.setTime(this.tB);
        float f10 = this.jFA;
        if (f10 == 0.0f) {
            canvas.scale(1.0f, 1.0f);
            this.oJ.draw(canvas, 0.0f, 0.0f);
        } else {
            canvas.scale(f10, f10);
            Movie movie2 = this.oJ;
            float f11 = this.cFZ;
            float f12 = this.jFA;
            movie2.draw(canvas, f11 / f12, this.f12647so / f12);
        }
        canvas.restore();
    }
}
