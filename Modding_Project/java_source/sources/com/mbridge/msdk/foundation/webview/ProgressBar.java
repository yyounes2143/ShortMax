package com.mbridge.msdk.foundation.webview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes5.dex */
public class ProgressBar extends View {

    /* renamed from: a  reason: collision with root package name */
    Runnable f27544a;

    /* renamed from: b  reason: collision with root package name */
    private float f27545b;

    /* renamed from: c  reason: collision with root package name */
    private float f27546c;

    /* renamed from: d  reason: collision with root package name */
    private float f27547d;

    /* renamed from: e  reason: collision with root package name */
    private Drawable f27548e;

    /* renamed from: f  reason: collision with root package name */
    private float f27549f;

    /* renamed from: g  reason: collision with root package name */
    private long f27550g;

    /* renamed from: h  reason: collision with root package name */
    private Handler f27551h;

    /* renamed from: i  reason: collision with root package name */
    private Drawable f27552i;

    /* renamed from: j  reason: collision with root package name */
    private int f27553j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f27554k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f27555l;

    /* renamed from: m  reason: collision with root package name */
    private long f27556m;

    /* renamed from: n  reason: collision with root package name */
    private float f27557n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f27558o;

    /* renamed from: p  reason: collision with root package name */
    private Drawable f27559p;

    /* renamed from: q  reason: collision with root package name */
    private Rect f27560q;

    /* renamed from: r  reason: collision with root package name */
    private Drawable f27561r;

    /* renamed from: s  reason: collision with root package name */
    private float f27562s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f27563t;

    /* renamed from: u  reason: collision with root package name */
    private int f27564u;

    /* renamed from: v  reason: collision with root package name */
    private int f27565v;

    /* renamed from: w  reason: collision with root package name */
    private int f27566w;

    /* renamed from: x  reason: collision with root package name */
    private long f27567x;

    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressBar.this.invalidate();
        }
    }

    public ProgressBar(Context context) {
        super(context);
        this.f27544a = new a();
        this.f27550g = 25L;
        this.f27551h = new Handler(Looper.getMainLooper());
        this.f27554k = false;
        this.f27557n = 0.95f;
        this.f27558o = false;
        this.f27560q = new Rect();
        a(context);
    }

    private void a(Context context) {
        setWillNotDraw(false);
    }

    private float getVelocity() {
        if (!this.f27563t) {
            if (this.f27567x >= 2000) {
                return 0.05f;
            }
            if (this.f27565v == 1) {
                if (this.f27555l) {
                    return 1.0f;
                }
                return 0.4f;
            } else if (this.f27564u == 1) {
                if (this.f27555l) {
                    return 0.4f;
                }
                return 0.2f;
            } else if (!this.f27555l) {
                return 0.05f;
            } else {
                return 0.2f;
            }
        } else if (this.f27555l) {
            return 1.0f;
        } else {
            return 0.4f;
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        long j10;
        if (!this.f27554k) {
            this.f27554k = true;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (this.f27558o) {
            j10 = 0;
        } else {
            j10 = currentTimeMillis - this.f27556m;
        }
        this.f27547d = Math.abs(((float) j10) / 1000.0f);
        this.f27556m = currentTimeMillis;
        this.f27567x += j10;
        float velocity = getVelocity();
        this.f27546c = velocity;
        float f10 = this.f27545b + (velocity * this.f27547d);
        this.f27545b = f10;
        if (!this.f27563t) {
            float f11 = this.f27557n;
            if (f10 > f11) {
                this.f27545b = f11;
            }
        }
        this.f27560q.right = (int) (this.f27545b * this.f27562s);
        this.f27551h.removeCallbacksAndMessages(null);
        this.f27551h.postDelayed(this.f27544a, this.f27550g);
        super.draw(canvas);
        a(canvas, this.f27547d);
    }

    @Override // android.view.View
    public Bitmap getDrawingCache(boolean z10) {
        return null;
    }

    public float getProgress() {
        return this.f27545b;
    }

    public void initResource(boolean z10) {
        if (!z10 && (this.f27552i != null || this.f27559p != null || this.f27561r != null || this.f27548e != null)) {
            return;
        }
        Drawable drawable = getResources().getDrawable(getResources().getIdentifier("mbridge_cm_highlight", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        this.f27552i = drawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.f27552i.getIntrinsicHeight());
        }
        Drawable drawable2 = getResources().getDrawable(getResources().getIdentifier("mbridge_cm_head", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        this.f27559p = drawable2;
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), this.f27559p.getIntrinsicHeight());
        }
        this.f27561r = getResources().getDrawable(getResources().getIdentifier("mbridge_cm_tail", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        this.f27548e = getResources().getDrawable(getResources().getIdentifier("mbridge_cm_end_animation", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f27562s = getMeasuredWidth();
    }

    public void onThemeChange() {
        if (this.f27554k) {
            initResource(true);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        Drawable drawable = this.f27552i;
        if (drawable != null) {
            drawable.setBounds(0, 0, (int) (drawable.getIntrinsicWidth() * 1.5d), getHeight());
        }
        Drawable drawable2 = this.f27559p;
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, getWidth(), getHeight());
        }
    }

    public void setPaused(boolean z10) {
        this.f27558o = z10;
        if (!z10) {
            this.f27556m = System.currentTimeMillis();
        }
    }

    public void setProgress(float f10, boolean z10) {
        if (z10 && f10 >= 1.0f) {
            startEndAnimation();
        }
    }

    public void setProgressState(int i10) {
        if (i10 != 5) {
            if (i10 != 6) {
                if (i10 != 7) {
                    if (i10 == 8) {
                        this.f27566w = 1;
                        if (this.f27565v == 1) {
                            startEndAnimation();
                            return;
                        }
                        return;
                    }
                    return;
                }
                startEndAnimation();
                return;
            }
            this.f27565v = 1;
            if (this.f27566w == 1) {
                startEndAnimation();
            }
            this.f27567x = 0L;
            return;
        }
        this.f27564u = 1;
        this.f27565v = 0;
        this.f27566w = 0;
        this.f27567x = 0L;
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
    }

    public void setVisible(boolean z10) {
        if (z10) {
            this.f27555l = true;
            this.f27556m = System.currentTimeMillis();
            this.f27547d = 0.0f;
            this.f27567x = 0L;
            this.f27563t = false;
            this.f27549f = 0.0f;
            this.f27545b = 0.0f;
            this.f27562s = getMeasuredWidth();
            this.f27558o = false;
            this.f27564u = 0;
            this.f27565v = 0;
            this.f27566w = 0;
            Drawable drawable = this.f27552i;
            if (drawable != null) {
                this.f27553j = -drawable.getIntrinsicWidth();
            } else {
                this.f27553j = 0;
            }
            Drawable drawable2 = this.f27561r;
            if (drawable2 != null) {
                drawable2.setAlpha(255);
            }
            Drawable drawable3 = this.f27548e;
            if (drawable3 != null) {
                drawable3.setAlpha(255);
            }
            Drawable drawable4 = this.f27559p;
            if (drawable4 != null) {
                drawable4.setAlpha(255);
            }
            setVisibility(0);
            invalidate();
            return;
        }
        setVisibility(4);
    }

    public void startEndAnimation() {
        if (!this.f27563t) {
            this.f27563t = true;
            this.f27549f = 0.0f;
        }
    }

    private void a(Canvas canvas, float f10) {
        Drawable drawable;
        Drawable drawable2;
        if (this.f27563t) {
            float f11 = this.f27549f;
            float f12 = this.f27562s * 0.5f;
            int i10 = (int) ((1.0f - (f11 / f12)) * 255.0f);
            if (i10 < 0) {
                i10 = 0;
            }
            if (f11 > f12) {
                setVisible(false);
            }
            Drawable drawable3 = this.f27561r;
            if (drawable3 != null) {
                drawable3.setAlpha(i10);
            }
            Drawable drawable4 = this.f27548e;
            if (drawable4 != null) {
                drawable4.setAlpha(i10);
            }
            Drawable drawable5 = this.f27559p;
            if (drawable5 != null) {
                drawable5.setAlpha(i10);
            }
            canvas.save();
            canvas.translate(this.f27549f, 0.0f);
        }
        if (this.f27561r != null && this.f27559p != null) {
            Drawable drawable6 = this.f27561r;
            drawable6.setBounds(0, 0, (int) (this.f27560q.width() - (this.f27559p.getIntrinsicWidth() * 0.05f)), drawable6.getIntrinsicHeight());
            this.f27561r.draw(canvas);
        }
        if (this.f27563t && (drawable2 = this.f27548e) != null && this.f27559p != null) {
            int intrinsicWidth = drawable2.getIntrinsicWidth();
            Drawable drawable7 = this.f27548e;
            drawable7.setBounds(0, 0, intrinsicWidth, drawable7.getIntrinsicHeight());
            canvas.save();
            canvas.translate(-intrinsicWidth, 0.0f);
            this.f27548e.draw(canvas);
            canvas.restore();
        }
        if (this.f27559p != null) {
            canvas.save();
            canvas.translate(this.f27560q.width() - getWidth(), 0.0f);
            this.f27559p.draw(canvas);
            canvas.restore();
        }
        if (!this.f27563t && Math.abs(this.f27545b - this.f27557n) < 1.0E-5f && (drawable = this.f27552i) != null) {
            int i11 = (int) (this.f27553j + (f10 * 0.2f * this.f27562s));
            this.f27553j = i11;
            if (i11 + drawable.getIntrinsicWidth() >= this.f27560q.width()) {
                this.f27553j = -this.f27552i.getIntrinsicWidth();
            }
            canvas.save();
            canvas.translate(this.f27553j, 0.0f);
            this.f27552i.draw(canvas);
            canvas.restore();
        }
        if (this.f27563t) {
            canvas.restore();
        }
    }

    public ProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27544a = new a();
        this.f27550g = 25L;
        this.f27551h = new Handler(Looper.getMainLooper());
        this.f27554k = false;
        this.f27557n = 0.95f;
        this.f27558o = false;
        this.f27560q = new Rect();
        a(context);
    }

    public void setProgressBarListener(c cVar) {
    }
}
