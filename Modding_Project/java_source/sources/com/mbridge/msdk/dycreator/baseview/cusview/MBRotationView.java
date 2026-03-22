package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
/* loaded from: classes5.dex */
public class MBRotationView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private Camera f26259a;

    /* renamed from: b  reason: collision with root package name */
    private Matrix f26260b;

    /* renamed from: c  reason: collision with root package name */
    private int f26261c;

    /* renamed from: d  reason: collision with root package name */
    private int f26262d;

    /* renamed from: e  reason: collision with root package name */
    private int f26263e;

    /* renamed from: f  reason: collision with root package name */
    private int f26264f;

    /* renamed from: g  reason: collision with root package name */
    private int f26265g;

    /* renamed from: h  reason: collision with root package name */
    private int f26266h;

    /* renamed from: i  reason: collision with root package name */
    private int f26267i;

    /* renamed from: j  reason: collision with root package name */
    private int f26268j;

    /* renamed from: k  reason: collision with root package name */
    private float f26269k;

    /* renamed from: l  reason: collision with root package name */
    private float f26270l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f26271m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f26272n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f26273o;

    /* renamed from: p  reason: collision with root package name */
    Runnable f26274p;

    public MBRotationView(Context context) {
        super(context);
        this.f26263e = 40;
        this.f26264f = 20;
        this.f26265g = 0;
        this.f26266h = 0;
        this.f26268j = 0;
        this.f26269k = 0.5f;
        this.f26270l = 0.9f;
        this.f26271m = true;
        this.f26272n = false;
        this.f26273o = false;
        this.f26274p = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBRotationView.1
            @Override // java.lang.Runnable
            public void run() {
                MBRotationView.this.b();
            }
        };
        a();
    }

    private void b(Canvas canvas) {
        int height = getHeight() / 2;
        int i10 = ((this.f26265g * this.f26261c) / 2) / this.f26263e;
        a(canvas, i10, height, 0);
        a(canvas, i10, height, 1);
        if (Math.abs(this.f26265g) > this.f26263e / 2) {
            a(canvas, i10, height, 3);
            a(canvas, i10, height, 2);
            return;
        }
        a(canvas, i10, height, 2);
        a(canvas, i10, height, 3);
    }

    private int c(int i10) {
        int i11;
        int i12;
        int i13;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        i11 = 0;
                    } else {
                        i11 = this.f26266h;
                    }
                } else if (this.f26273o) {
                    i12 = this.f26266h;
                    i11 = i12 - 1;
                } else {
                    i13 = this.f26266h;
                    i11 = i13 + 1;
                }
            } else if (this.f26273o) {
                i13 = this.f26266h;
                i11 = i13 + 1;
            } else {
                i12 = this.f26266h;
                i11 = i12 - 1;
            }
        } else if (this.f26273o) {
            i11 = this.f26266h - 2;
        } else {
            i11 = this.f26266h + 2;
        }
        int childCount = i11 % getChildCount();
        if (childCount >= 0) {
            return childCount;
        }
        return childCount + getChildCount();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (getChildCount() == 0) {
            return;
        }
        if (this.f26272n) {
            b(canvas);
        } else {
            a(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14 = i12 - i10;
        float f10 = i14;
        float f11 = this.f26269k;
        int i15 = (int) (((1.0f - f11) * f10) / 2.0f);
        int i16 = i13 - i11;
        float f12 = i16;
        float f13 = this.f26270l;
        int i17 = (int) (((1.0f - f13) * f12) / 2.0f);
        this.f26261c = (int) (f12 * f13);
        this.f26262d = (int) (f10 * f11);
        int childCount = getChildCount();
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt = getChildAt(i18);
            childAt.layout(i15, i17, i14 - i15, i16 - i17);
            childAt.setClickable(true);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            int i19 = layoutParams.width;
            int i20 = this.f26262d;
            if (i19 != i20) {
                layoutParams.width = i20;
                layoutParams.height = this.f26261c;
                childAt.setLayoutParams(layoutParams);
            }
        }
    }

    public void setAutoscroll(boolean z10) {
        if (z10) {
            postDelayed(this.f26274p, 1000 / this.f26264f);
        }
        this.f26271m = z10;
    }

    public void setHeightRatio(float f10) {
        this.f26270l = f10;
    }

    public void setRotateV(boolean z10) {
        this.f26272n = z10;
        invalidate();
    }

    public void setWidthRatio(float f10) {
        this.f26269k = f10;
    }

    private void a() {
        this.f26259a = new Camera();
        this.f26260b = new Matrix();
        setWillNotDraw(false);
    }

    private void a(Canvas canvas) {
        int width = getWidth() / 2;
        int i10 = ((this.f26265g * this.f26262d) / 2) / this.f26263e;
        b(canvas, i10, width, 0);
        b(canvas, i10, width, 1);
        if (Math.abs(this.f26265g) > this.f26263e / 2) {
            b(canvas, i10, width, 3);
            b(canvas, i10, width, 2);
            return;
        }
        b(canvas, i10, width, 2);
        b(canvas, i10, width, 3);
    }

    private void b(int i10, int i11, int i12) {
        float f10 = (-i10) / 2.0f;
        if (i12 == 0) {
            this.f26259a.translate(0.0f, f10, 0.0f);
            float f11 = -i11;
            this.f26259a.rotateX(f11);
            this.f26259a.translate(0.0f, f10, 0.0f);
            this.f26259a.translate(0.0f, f10, 0.0f);
            this.f26259a.rotateX(f11);
            this.f26259a.translate(0.0f, f10, 0.0f);
        } else if (i12 == 1) {
            this.f26259a.translate(0.0f, f10, 0.0f);
            this.f26259a.rotateX(i11);
            this.f26259a.translate(0.0f, f10, 0.0f);
        } else if (i12 != 2) {
            if (i12 != 3) {
                return;
            }
            this.f26259a.rotateX(0.0f);
        } else {
            this.f26259a.translate(0.0f, f10, 0.0f);
            this.f26259a.rotateX(-i11);
            this.f26259a.translate(0.0f, f10, 0.0f);
        }
    }

    public MBRotationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26263e = 40;
        this.f26264f = 20;
        this.f26265g = 0;
        this.f26266h = 0;
        this.f26268j = 0;
        this.f26269k = 0.5f;
        this.f26270l = 0.9f;
        this.f26271m = true;
        this.f26272n = false;
        this.f26273o = false;
        this.f26274p = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBRotationView.1
            @Override // java.lang.Runnable
            public void run() {
                MBRotationView.this.b();
            }
        };
        a();
    }

    private void a(Canvas canvas, int i10, int i11, int i12) {
        canvas.save();
        this.f26259a.save();
        this.f26260b.reset();
        float f10 = i10;
        this.f26259a.translate(0.0f, f10, 0.0f);
        this.f26259a.rotateX(this.f26265g);
        this.f26259a.translate(0.0f, f10, 0.0f);
        if (i10 == 0) {
            if (this.f26273o) {
                b(this.f26261c, this.f26263e, i12);
            } else {
                b(-this.f26261c, -this.f26263e, i12);
            }
        } else if (i10 > 0) {
            b(this.f26261c, this.f26263e, i12);
        } else if (i10 < 0) {
            b(-this.f26261c, -this.f26263e, i12);
        }
        this.f26259a.getMatrix(this.f26260b);
        this.f26259a.restore();
        this.f26260b.preTranslate((-getWidth()) / 2, -i11);
        this.f26260b.postTranslate(getWidth() / 2, i11);
        canvas.concat(this.f26260b);
        View childAt = getChildAt(c(i12));
        if (childAt != null) {
            drawChild(canvas, childAt, 0L);
        }
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (getChildCount() == 0) {
            return;
        }
        int i10 = this.f26265g - 1;
        this.f26265g = i10;
        this.f26267i = this.f26266h;
        a(i10);
        if (this.f26271m) {
            postDelayed(this.f26274p, 1000 / this.f26264f);
        }
    }

    public MBRotationView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f26263e = 40;
        this.f26264f = 20;
        this.f26265g = 0;
        this.f26266h = 0;
        this.f26268j = 0;
        this.f26269k = 0.5f;
        this.f26270l = 0.9f;
        this.f26271m = true;
        this.f26272n = false;
        this.f26273o = false;
        this.f26274p = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBRotationView.1
            @Override // java.lang.Runnable
            public void run() {
                MBRotationView.this.b();
            }
        };
        a();
    }

    private void b(Canvas canvas, int i10, int i11, int i12) {
        canvas.save();
        this.f26259a.save();
        this.f26260b.reset();
        float f10 = i10;
        this.f26259a.translate(f10, 0.0f, 0.0f);
        this.f26259a.rotateY(this.f26265g);
        this.f26259a.translate(f10, 0.0f, 0.0f);
        if (i10 == 0) {
            if (this.f26273o) {
                a(this.f26262d, this.f26263e, i12);
            } else {
                a(-this.f26262d, -this.f26263e, i12);
            }
        } else if (i10 > 0) {
            a(this.f26262d, this.f26263e, i12);
        } else if (i10 < 0) {
            a(-this.f26262d, -this.f26263e, i12);
        }
        this.f26259a.getMatrix(this.f26260b);
        this.f26259a.restore();
        this.f26260b.preTranslate(-i11, (-getHeight()) / 2);
        this.f26260b.postTranslate(i11, getHeight() / 2);
        canvas.concat(this.f26260b);
        View childAt = getChildAt(c(i12));
        if (childAt != null) {
            drawChild(canvas, childAt, 0L);
        }
        canvas.restore();
    }

    private void a(int i10) {
        int i11 = this.f26263e;
        int i12 = this.f26267i;
        this.f26265g = i10 % i11;
        b(i12 - (i10 / i11));
        invalidate();
    }

    private void a(int i10, int i11, int i12) {
        if (i12 == 0) {
            float f10 = (-i10) / 2;
            this.f26259a.translate(f10, 0.0f, 0.0f);
            float f11 = -i11;
            this.f26259a.rotateY(f11);
            this.f26259a.translate(f10, 0.0f, 0.0f);
            this.f26259a.translate(f10, 0.0f, 0.0f);
            this.f26259a.rotateY(f11);
            this.f26259a.translate(f10, 0.0f, 0.0f);
        } else if (i12 == 1) {
            float f12 = i10 / 2;
            this.f26259a.translate(f12, 0.0f, 0.0f);
            this.f26259a.rotateY(i11);
            this.f26259a.translate(f12, 0.0f, 0.0f);
        } else if (i12 != 2) {
            if (i12 != 3) {
                return;
            }
            this.f26259a.rotateY(0.0f);
        } else {
            float f13 = (-i10) / 2;
            this.f26259a.translate(f13, 0.0f, 0.0f);
            this.f26259a.rotateY(-i11);
            this.f26259a.translate(f13, 0.0f, 0.0f);
        }
    }

    private void b(int i10) {
        int c10;
        this.f26266h = i10;
        if (Math.abs(this.f26265g) > this.f26263e / 2) {
            c10 = c(2);
        } else {
            c10 = c(3);
        }
        if (this.f26268j != c10) {
            this.f26268j = c10;
        }
    }
}
