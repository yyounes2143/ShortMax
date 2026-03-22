package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public final class K4 extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    public I4 f23771a;

    /* renamed from: b  reason: collision with root package name */
    public float f23772b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f23773c;

    /* renamed from: d  reason: collision with root package name */
    public String f23774d;

    public K4(Context context) {
        super(context, null);
        this.f23772b = 1.0f;
        this.f23773c = true;
        this.f23774d = "unspecified";
        setLayerType(1, null);
    }

    private final int getDensity() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (getContext() instanceof Activity) {
            Context context = getContext();
            Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
            ((Activity) context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            return displayMetrics.densityDpi;
        }
        return 240;
    }

    private final float getScale() {
        float density = getContext().getResources().getDisplayMetrics().densityDpi / getDensity();
        this.f23772b = density;
        if (density < 0.1f) {
            this.f23772b = 0.1f;
        }
        if (this.f23772b > 5.0f) {
            this.f23772b = 5.0f;
        }
        return this.f23772b;
    }

    public final void a(Canvas canvas) {
        int i10;
        int i11;
        float f10;
        float f11;
        float f12;
        canvas.save();
        float f13 = this.f23772b;
        canvas.scale(f13, f13);
        float width = getWidth();
        float height = getHeight();
        I4 i42 = this.f23771a;
        if (i42 != null) {
            i10 = i42.c();
        } else {
            i10 = 0;
        }
        float f14 = i10 * this.f23772b;
        I4 i43 = this.f23771a;
        if (i43 != null) {
            i11 = i43.a();
        } else {
            i11 = 0;
        }
        float f15 = i11 * this.f23772b;
        String str = this.f23774d;
        if (Intrinsics.areEqual(str, "aspectFill")) {
            f10 = Math.max(height / f15, width / f14);
            float f16 = width - (f14 * f10);
            float f17 = 2;
            float f18 = this.f23772b * f10;
            f11 = (f16 / f17) / f18;
            f12 = ((height - (f15 * f10)) / f17) / f18;
            canvas.scale(f10, f10);
        } else if (Intrinsics.areEqual(str, "aspectFit")) {
            f10 = Math.min(height / f15, width / f14);
            float f19 = width - (f14 * f10);
            float f20 = 2;
            float f21 = this.f23772b * f10;
            f11 = (f19 / f20) / f21;
            f12 = ((height - (f15 * f10)) / f20) / f21;
            canvas.scale(f10, f10);
        } else {
            f10 = height / f15;
            canvas.scale(width / f14, f10);
            f11 = 0.0f;
            f12 = 0.0f;
        }
        float[] fArr = {f11, f12, f10};
        I4 i44 = this.f23771a;
        if (i44 != null) {
            i44.a(canvas, fArr[0], fArr[1]);
        }
        canvas.restore();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        I4 i42 = this.f23771a;
        if (i42 != null) {
            if (i42.b()) {
                i42.d();
                a(canvas);
                if (this.f23773c) {
                    postInvalidateOnAnimation();
                    return;
                }
                return;
            }
            a(canvas);
        }
    }

    @Override // android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean z11;
        super.onLayout(z10, i10, i11, i12, i13);
        if (getVisibility() == 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.f23773c = z11;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i10, int i11) {
        int i12;
        this.f23772b = getScale();
        Drawable drawable = getDrawable();
        I4 i42 = this.f23771a;
        int i13 = 1;
        if (drawable != null) {
            i12 = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (i12 <= 0) {
                i12 = 1;
            }
            if (intrinsicHeight > 0) {
                i13 = intrinsicHeight;
            }
        } else if (i42 != null) {
            int c10 = i42.c();
            int a10 = i42.a();
            if (c10 <= 0) {
                c10 = 1;
            }
            if (a10 > 0) {
                i13 = a10;
            }
            i12 = c10;
        } else {
            i13 = 0;
            i12 = 0;
        }
        setMeasuredDimension(View.resolveSize(Math.max(getPaddingLeft() + getPaddingRight() + i12, getSuggestedMinimumWidth()), i10), View.resolveSize(Math.max(getPaddingTop() + getPaddingBottom() + i13, getSuggestedMinimumHeight()), i11));
    }

    @Override // android.view.View
    public final void onScreenStateChanged(int i10) {
        super.onScreenStateChanged(i10);
        boolean z10 = true;
        if (i10 != 1) {
            z10 = false;
        }
        this.f23773c = z10;
        if (z10) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View changedView, int i10) {
        boolean z10;
        Intrinsics.checkNotNullParameter(changedView, "changedView");
        super.onVisibilityChanged(changedView, i10);
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f23773c = z10;
        if (z10) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i10) {
        boolean z10;
        super.onWindowVisibilityChanged(i10);
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f23773c = z10;
        if (z10) {
            postInvalidateOnAnimation();
        }
    }

    public final void setContentMode(@NotNull String contentMode) {
        Intrinsics.checkNotNullParameter(contentMode, "contentMode");
        this.f23774d = contentMode;
    }

    public final void setGifImpl(@Nullable I4 i42) {
        this.f23771a = i42;
        if (i42 != null) {
            i42.a(this);
            i42.start();
        }
        requestLayout();
    }

    public final void setPaused(boolean z10) {
        I4 i42 = this.f23771a;
        if (i42 != null) {
            i42.a(z10);
        }
    }

    private static /* synthetic */ void getMContentMode$annotations() {
    }
}
