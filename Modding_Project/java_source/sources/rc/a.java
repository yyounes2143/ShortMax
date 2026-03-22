package rc;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import java.util.ArrayList;
import java.util.List;
/* compiled from: MaterialProgressDrawable.java */
/* loaded from: classes6.dex */
public class a extends Drawable implements Animatable {

    /* renamed from: k  reason: collision with root package name */
    private static final Interpolator f65713k = new LinearInterpolator();

    /* renamed from: l  reason: collision with root package name */
    static final Interpolator f65714l = new FastOutSlowInInterpolator();

    /* renamed from: m  reason: collision with root package name */
    private static final int[] f65715m = {ViewCompat.MEASURED_STATE_MASK};

    /* renamed from: a  reason: collision with root package name */
    private final List<Animation> f65716a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final c f65717b = new c();

    /* renamed from: c  reason: collision with root package name */
    private float f65718c;

    /* renamed from: d  reason: collision with root package name */
    private View f65719d;

    /* renamed from: e  reason: collision with root package name */
    private Animation f65720e;

    /* renamed from: f  reason: collision with root package name */
    float f65721f;

    /* renamed from: g  reason: collision with root package name */
    private float f65722g;

    /* renamed from: h  reason: collision with root package name */
    private float f65723h;

    /* renamed from: i  reason: collision with root package name */
    boolean f65724i;

    /* renamed from: j  reason: collision with root package name */
    boolean f65725j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaterialProgressDrawable.java */
    /* renamed from: rc.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class C0915a extends Animation {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f65726a;

        C0915a(c cVar) {
            this.f65726a = cVar;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            a aVar = a.this;
            if (aVar.f65724i) {
                aVar.a(f10, this.f65726a);
                return;
            }
            float c10 = aVar.c(this.f65726a);
            c cVar = this.f65726a;
            float f11 = cVar.f65741l;
            float f12 = cVar.f65740k;
            float f13 = cVar.f65742m;
            a.this.l(f10, cVar);
            if (f10 <= 0.5f) {
                this.f65726a.f65733d = f12 + ((0.8f - c10) * a.f65714l.getInterpolation(f10 / 0.5f));
            }
            if (f10 > 0.5f) {
                this.f65726a.f65734e = f11 + ((0.8f - c10) * a.f65714l.getInterpolation((f10 - 0.5f) / 0.5f));
            }
            a.this.f(f13 + (0.25f * f10));
            a aVar2 = a.this;
            aVar2.g((f10 * 216.0f) + ((aVar2.f65721f / 5.0f) * 1080.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MaterialProgressDrawable.java */
    /* loaded from: classes6.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        final RectF f65730a = new RectF();

        /* renamed from: b  reason: collision with root package name */
        final Paint f65731b;

        /* renamed from: c  reason: collision with root package name */
        final Paint f65732c;

        /* renamed from: d  reason: collision with root package name */
        float f65733d;

        /* renamed from: e  reason: collision with root package name */
        float f65734e;

        /* renamed from: f  reason: collision with root package name */
        float f65735f;

        /* renamed from: g  reason: collision with root package name */
        float f65736g;

        /* renamed from: h  reason: collision with root package name */
        float f65737h;

        /* renamed from: i  reason: collision with root package name */
        int[] f65738i;

        /* renamed from: j  reason: collision with root package name */
        int f65739j;

        /* renamed from: k  reason: collision with root package name */
        float f65740k;

        /* renamed from: l  reason: collision with root package name */
        float f65741l;

        /* renamed from: m  reason: collision with root package name */
        float f65742m;

        /* renamed from: n  reason: collision with root package name */
        boolean f65743n;

        /* renamed from: o  reason: collision with root package name */
        Path f65744o;

        /* renamed from: p  reason: collision with root package name */
        float f65745p;

        /* renamed from: q  reason: collision with root package name */
        double f65746q;

        /* renamed from: r  reason: collision with root package name */
        int f65747r;

        /* renamed from: s  reason: collision with root package name */
        int f65748s;

        /* renamed from: t  reason: collision with root package name */
        int f65749t;

        c() {
            Paint paint = new Paint();
            this.f65731b = paint;
            Paint paint2 = new Paint();
            this.f65732c = paint2;
            this.f65733d = 0.0f;
            this.f65734e = 0.0f;
            this.f65735f = 0.0f;
            this.f65736g = 5.0f;
            this.f65737h = 2.5f;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
        }

        private void b(Canvas canvas, float f10, float f11, Rect rect) {
            if (this.f65743n) {
                Path path = this.f65744o;
                if (path == null) {
                    Path path2 = new Path();
                    this.f65744o = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float f12 = (((int) this.f65737h) / 2) * this.f65745p;
                float sin = (float) ((this.f65746q * Math.sin(0.0d)) + rect.exactCenterY());
                this.f65744o.moveTo(0.0f, 0.0f);
                this.f65744o.lineTo(this.f65747r * this.f65745p, 0.0f);
                Path path3 = this.f65744o;
                float f13 = this.f65745p;
                path3.lineTo((this.f65747r * f13) / 2.0f, this.f65748s * f13);
                this.f65744o.offset(((float) ((this.f65746q * Math.cos(0.0d)) + rect.exactCenterX())) - f12, sin);
                this.f65744o.close();
                this.f65732c.setColor(this.f65749t);
                canvas.rotate((f10 + f11) - 5.0f, rect.exactCenterX(), rect.exactCenterY());
                canvas.drawPath(this.f65744o, this.f65732c);
            }
        }

        private int d() {
            return (this.f65739j + 1) % this.f65738i.length;
        }

        public void a(Canvas canvas, Rect rect) {
            RectF rectF = this.f65730a;
            rectF.set(rect);
            float f10 = this.f65737h;
            rectF.inset(f10, f10);
            float f11 = this.f65733d;
            float f12 = this.f65735f;
            float f13 = (f11 + f12) * 360.0f;
            float f14 = ((this.f65734e + f12) * 360.0f) - f13;
            if (f14 != 0.0f) {
                this.f65731b.setColor(this.f65749t);
                canvas.drawArc(rectF, f13, f14, false, this.f65731b);
            }
            b(canvas, f13, f14, rect);
        }

        public int c() {
            return this.f65738i[d()];
        }

        public int e() {
            return this.f65738i[this.f65739j];
        }

        public void f() {
            h(d());
        }

        public void g() {
            this.f65740k = 0.0f;
            this.f65741l = 0.0f;
            this.f65742m = 0.0f;
            this.f65733d = 0.0f;
            this.f65734e = 0.0f;
            this.f65735f = 0.0f;
        }

        public void h(int i10) {
            this.f65739j = i10;
            this.f65749t = this.f65738i[i10];
        }

        public void i(int i10, int i11) {
            double ceil;
            float min = Math.min(i10, i11);
            double d10 = this.f65746q;
            if (d10 > 0.0d && min >= 0.0f) {
                ceil = (min / 2.0f) - d10;
            } else {
                ceil = Math.ceil(this.f65736g / 2.0f);
            }
            this.f65737h = (float) ceil;
        }

        public void j() {
            this.f65740k = this.f65733d;
            this.f65741l = this.f65734e;
            this.f65742m = this.f65735f;
        }
    }

    public a(View view) {
        this.f65719d = view;
        e(f65715m);
        m(1);
        j();
    }

    private int b(float f10, int i10, int i11) {
        int i12 = (i10 >> 24) & 255;
        int i13 = (i10 >> 16) & 255;
        int i14 = (i10 >> 8) & 255;
        int i15 = i10 & 255;
        return ((i12 + ((int) ((((i11 >> 24) & 255) - i12) * f10))) << 24) | ((i13 + ((int) ((((i11 >> 16) & 255) - i13) * f10))) << 16) | ((i14 + ((int) ((((i11 >> 8) & 255) - i14) * f10))) << 8) | (i15 + ((int) (f10 * ((i11 & 255) - i15))));
    }

    private void h(int i10, int i11, float f10, float f11, float f12, float f13) {
        float f14 = Resources.getSystem().getDisplayMetrics().density;
        this.f65722g = i10 * f14;
        this.f65723h = i11 * f14;
        this.f65717b.h(0);
        float f15 = f11 * f14;
        this.f65717b.f65731b.setStrokeWidth(f15);
        c cVar = this.f65717b;
        cVar.f65736g = f15;
        cVar.f65746q = f10 * f14;
        cVar.f65747r = (int) (f12 * f14);
        cVar.f65748s = (int) (f13 * f14);
        cVar.i((int) this.f65722g, (int) this.f65723h);
        invalidateSelf();
    }

    private void j() {
        c cVar = this.f65717b;
        C0915a c0915a = new C0915a(cVar);
        c0915a.setRepeatCount(-1);
        c0915a.setRepeatMode(1);
        c0915a.setInterpolator(f65713k);
        c0915a.setAnimationListener(new b(cVar));
        this.f65720e = c0915a;
    }

    void a(float f10, c cVar) {
        l(f10, cVar);
        float c10 = c(cVar);
        float f11 = cVar.f65740k;
        float f12 = cVar.f65741l;
        i(f11 + (((f12 - c10) - f11) * f10), f12);
        float f13 = cVar.f65742m;
        f(f13 + ((((float) (Math.floor(cVar.f65742m / 0.8f) + 1.0d)) - f13) * f10));
    }

    float c(c cVar) {
        return (float) Math.toRadians(cVar.f65736g / (cVar.f65746q * 6.283185307179586d));
    }

    public void d(float f10) {
        c cVar = this.f65717b;
        if (cVar.f65745p != f10) {
            cVar.f65745p = f10;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int save = canvas.save();
        canvas.rotate(this.f65718c, bounds.exactCenterX(), bounds.exactCenterY());
        this.f65717b.a(canvas, bounds);
        canvas.restoreToCount(save);
    }

    public void e(@ColorInt int... iArr) {
        c cVar = this.f65717b;
        cVar.f65738i = iArr;
        cVar.h(0);
    }

    public void f(float f10) {
        this.f65717b.f65735f = f10;
        invalidateSelf();
    }

    void g(float f10) {
        this.f65718c = f10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f65723h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) this.f65722g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void i(float f10, float f11) {
        c cVar = this.f65717b;
        cVar.f65733d = f10;
        cVar.f65734e = f11;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f65725j;
    }

    public void k(boolean z10) {
        c cVar = this.f65717b;
        if (cVar.f65743n != z10) {
            cVar.f65743n = z10;
            invalidateSelf();
        }
    }

    void l(float f10, c cVar) {
        if (f10 > 0.75f) {
            cVar.f65749t = b((f10 - 0.75f) / 0.25f, cVar.e(), cVar.c());
        }
    }

    public void m(int i10) {
        if (i10 == 0) {
            h(56, 56, 12.5f, 3.0f, 12.0f, 6.0f);
        } else {
            h(40, 40, 8.75f, 2.5f, 10.0f, 5.0f);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f65717b.f65731b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (!this.f65725j) {
            this.f65720e.reset();
            this.f65717b.j();
            c cVar = this.f65717b;
            if (cVar.f65734e != cVar.f65733d) {
                this.f65724i = true;
                this.f65720e.setDuration(666L);
                this.f65719d.startAnimation(this.f65720e);
            } else {
                cVar.h(0);
                this.f65717b.g();
                this.f65720e.setDuration(1332L);
                this.f65719d.startAnimation(this.f65720e);
            }
            this.f65725j = true;
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.f65725j) {
            this.f65719d.clearAnimation();
            this.f65717b.h(0);
            this.f65717b.g();
            k(false);
            g(0.0f);
            this.f65725j = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaterialProgressDrawable.java */
    /* loaded from: classes6.dex */
    public class b implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f65728a;

        b(c cVar) {
            this.f65728a = cVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            this.f65728a.j();
            this.f65728a.f();
            c cVar = this.f65728a;
            cVar.f65733d = cVar.f65734e;
            a aVar = a.this;
            if (aVar.f65724i) {
                aVar.f65724i = false;
                animation.setDuration(1332L);
                a.this.k(false);
                return;
            }
            aVar.f65721f = (aVar.f65721f + 1.0f) % 5.0f;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            a.this.f65721f = 0.0f;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
    }
}
