package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public final class AspectRatioFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final c f18567a;

    /* renamed from: b  reason: collision with root package name */
    private float f18568b;

    /* renamed from: c  reason: collision with root package name */
    private int f18569c;

    /* loaded from: classes4.dex */
    public interface b {
    }

    /* loaded from: classes4.dex */
    private final class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private float f18570a;

        /* renamed from: b  reason: collision with root package name */
        private float f18571b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f18572c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f18573d;

        private c() {
        }

        public void a(float f10, float f11, boolean z10) {
            this.f18570a = f10;
            this.f18571b = f11;
            this.f18572c = z10;
            if (!this.f18573d) {
                this.f18573d = true;
                AspectRatioFrameLayout.this.post(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f18573d = false;
            AspectRatioFrameLayout.a(AspectRatioFrameLayout.this);
        }
    }

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    static /* synthetic */ b a(AspectRatioFrameLayout aspectRatioFrameLayout) {
        aspectRatioFrameLayout.getClass();
        return null;
    }

    public int getResizeMode() {
        return this.f18569c;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        float f10;
        float f11;
        super.onMeasure(i10, i11);
        if (this.f18568b <= 0.0f) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f12 = measuredWidth;
        float f13 = measuredHeight;
        float f14 = f12 / f13;
        float f15 = (this.f18568b / f14) - 1.0f;
        if (Math.abs(f15) <= 0.01f) {
            this.f18567a.a(this.f18568b, f14, false);
            return;
        }
        int i12 = this.f18569c;
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 == 4) {
                        if (f15 > 0.0f) {
                            f10 = this.f18568b;
                        } else {
                            f11 = this.f18568b;
                        }
                    }
                } else {
                    f10 = this.f18568b;
                }
                measuredWidth = (int) (f13 * f10);
            } else {
                f11 = this.f18568b;
            }
            measuredHeight = (int) (f12 / f11);
        } else if (f15 > 0.0f) {
            f11 = this.f18568b;
            measuredHeight = (int) (f12 / f11);
        } else {
            f10 = this.f18568b;
            measuredWidth = (int) (f13 * f10);
        }
        this.f18567a.a(this.f18568b, f14, true);
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
    }

    public void setAspectRatio(float f10) {
        if (this.f18568b != f10) {
            this.f18568b = f10;
            requestLayout();
        }
    }

    public void setResizeMode(int i10) {
        if (this.f18569c != i10) {
            this.f18569c = i10;
            requestLayout();
        }
    }

    public AspectRatioFrameLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f18569c = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, u.f18968a, 0, 0);
            try {
                this.f18569c = obtainStyledAttributes.getInt(u.f18970b, 0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f18567a = new c();
    }

    public void setAspectRatioListener(@Nullable b bVar) {
    }
}
