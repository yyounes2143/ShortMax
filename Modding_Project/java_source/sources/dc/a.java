package dc;

import android.content.Context;
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
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import java.util.ArrayList;
/* compiled from: MaterialProgressDrawable.java */
/* loaded from: classes5.dex */
public class a extends Drawable implements Animatable {

    /* renamed from: m  reason: collision with root package name */
    private static final Interpolator f50294m = new LinearInterpolator();

    /* renamed from: n  reason: collision with root package name */
    private static final Interpolator f50295n = new FastOutSlowInInterpolator();

    /* renamed from: a  reason: collision with root package name */
    private final int[] f50296a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<Animation> f50297b;

    /* renamed from: c  reason: collision with root package name */
    private final d f50298c;

    /* renamed from: d  reason: collision with root package name */
    private float f50299d;

    /* renamed from: e  reason: collision with root package name */
    private Resources f50300e;

    /* renamed from: f  reason: collision with root package name */
    private View f50301f;

    /* renamed from: g  reason: collision with root package name */
    private Animation f50302g;

    /* renamed from: h  reason: collision with root package name */
    private float f50303h;

    /* renamed from: i  reason: collision with root package name */
    private double f50304i;

    /* renamed from: j  reason: collision with root package name */
    private double f50305j;

    /* renamed from: k  reason: collision with root package name */
    boolean f50306k;

    /* renamed from: l  reason: collision with root package name */
    private final Drawable.Callback f50307l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaterialProgressDrawable.java */
    /* renamed from: dc.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0706a extends Animation {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f50308a;

        C0706a(d dVar) {
            this.f50308a = dVar;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            a aVar = a.this;
            if (aVar.f50306k) {
                aVar.g(f10, this.f50308a);
                return;
            }
            float i10 = aVar.i(this.f50308a);
            float j10 = this.f50308a.j();
            float l10 = this.f50308a.l();
            float k10 = this.f50308a.k();
            a.this.r(f10, this.f50308a);
            if (f10 <= 0.5f) {
                Interpolator interpolator = a.f50295n;
                this.f50308a.D(l10 + ((0.8f - i10) * interpolator.getInterpolation(f10 / 0.5f)));
            }
            if (f10 > 0.5f) {
                Interpolator interpolator2 = a.f50295n;
                this.f50308a.z(j10 + ((0.8f - i10) * interpolator2.getInterpolation((f10 - 0.5f) / 0.5f)));
            }
            this.f50308a.B(k10 + (0.25f * f10));
            a.this.n((f10 * 216.0f) + ((a.this.f50303h / 5.0f) * 1080.0f));
        }
    }

    /* compiled from: MaterialProgressDrawable.java */
    /* loaded from: classes5.dex */
    class c implements Drawable.Callback {
        c() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            a.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
            a.this.scheduleSelf(runnable, j10);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            a.this.unscheduleSelf(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MaterialProgressDrawable.java */
    /* loaded from: classes5.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private final RectF f50313a = new RectF();

        /* renamed from: b  reason: collision with root package name */
        private final Paint f50314b;

        /* renamed from: c  reason: collision with root package name */
        private final Paint f50315c;

        /* renamed from: d  reason: collision with root package name */
        private final Drawable.Callback f50316d;

        /* renamed from: e  reason: collision with root package name */
        private float f50317e;

        /* renamed from: f  reason: collision with root package name */
        private float f50318f;

        /* renamed from: g  reason: collision with root package name */
        private float f50319g;

        /* renamed from: h  reason: collision with root package name */
        private float f50320h;

        /* renamed from: i  reason: collision with root package name */
        private float f50321i;

        /* renamed from: j  reason: collision with root package name */
        private int[] f50322j;

        /* renamed from: k  reason: collision with root package name */
        private int f50323k;

        /* renamed from: l  reason: collision with root package name */
        private float f50324l;

        /* renamed from: m  reason: collision with root package name */
        private float f50325m;

        /* renamed from: n  reason: collision with root package name */
        private float f50326n;

        /* renamed from: o  reason: collision with root package name */
        private boolean f50327o;

        /* renamed from: p  reason: collision with root package name */
        private Path f50328p;

        /* renamed from: q  reason: collision with root package name */
        private float f50329q;

        /* renamed from: r  reason: collision with root package name */
        private double f50330r;

        /* renamed from: s  reason: collision with root package name */
        private int f50331s;

        /* renamed from: t  reason: collision with root package name */
        private int f50332t;

        /* renamed from: u  reason: collision with root package name */
        private int f50333u;

        /* renamed from: v  reason: collision with root package name */
        private final Paint f50334v;

        /* renamed from: w  reason: collision with root package name */
        private int f50335w;

        /* renamed from: x  reason: collision with root package name */
        private int f50336x;

        public d(Drawable.Callback callback) {
            Paint paint = new Paint();
            this.f50314b = paint;
            Paint paint2 = new Paint();
            this.f50315c = paint2;
            this.f50317e = 0.0f;
            this.f50318f = 0.0f;
            this.f50319g = 0.0f;
            this.f50320h = 5.0f;
            this.f50321i = 2.5f;
            this.f50334v = new Paint(1);
            this.f50316d = callback;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
        }

        private void b(Canvas canvas, float f10, float f11, Rect rect) {
            if (this.f50327o) {
                Path path = this.f50328p;
                if (path == null) {
                    Path path2 = new Path();
                    this.f50328p = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float f12 = (((int) this.f50321i) / 2) * this.f50329q;
                float sin = (float) ((this.f50330r * Math.sin(0.0d)) + rect.exactCenterY());
                this.f50328p.moveTo(0.0f, 0.0f);
                this.f50328p.lineTo(this.f50331s * this.f50329q, 0.0f);
                Path path3 = this.f50328p;
                float f13 = this.f50329q;
                path3.lineTo((this.f50331s * f13) / 2.0f, this.f50332t * f13);
                this.f50328p.offset(((float) ((this.f50330r * Math.cos(0.0d)) + rect.exactCenterX())) - f12, sin);
                this.f50328p.close();
                this.f50315c.setColor(this.f50336x);
                canvas.rotate((f10 + f11) - 5.0f, rect.exactCenterX(), rect.exactCenterY());
                canvas.drawPath(this.f50328p, this.f50315c);
            }
        }

        private int g() {
            return (this.f50323k + 1) % this.f50322j.length;
        }

        private void o() {
            this.f50316d.invalidateDrawable(null);
        }

        public void A(int i10, int i11) {
            double ceil;
            float min = Math.min(i10, i11);
            double d10 = this.f50330r;
            if (d10 > 0.0d && min >= 0.0f) {
                ceil = (min / 2.0f) - d10;
            } else {
                ceil = Math.ceil(this.f50320h / 2.0f);
            }
            this.f50321i = (float) ceil;
        }

        public void B(float f10) {
            this.f50319g = f10;
            o();
        }

        public void C(boolean z10) {
            if (this.f50327o != z10) {
                this.f50327o = z10;
                o();
            }
        }

        public void D(float f10) {
            this.f50317e = f10;
            o();
        }

        public void E(float f10) {
            this.f50320h = f10;
            this.f50314b.setStrokeWidth(f10);
            o();
        }

        public void F() {
            this.f50324l = this.f50317e;
            this.f50325m = this.f50318f;
            this.f50326n = this.f50319g;
        }

        public void a(Canvas canvas, Rect rect) {
            RectF rectF = this.f50313a;
            rectF.set(rect);
            float f10 = this.f50321i;
            rectF.inset(f10, f10);
            float f11 = this.f50317e;
            float f12 = this.f50319g;
            float f13 = (f11 + f12) * 360.0f;
            float f14 = ((this.f50318f + f12) * 360.0f) - f13;
            this.f50314b.setColor(this.f50336x);
            canvas.drawArc(rectF, f13, f14, false, this.f50314b);
            b(canvas, f13, f14, rect);
            if (this.f50333u < 255) {
                this.f50334v.setColor(this.f50335w);
                this.f50334v.setAlpha(255 - this.f50333u);
                canvas.drawCircle(rect.exactCenterX(), rect.exactCenterY(), rect.width() / 2, this.f50334v);
            }
        }

        public int c() {
            return this.f50333u;
        }

        public double d() {
            return this.f50330r;
        }

        public float e() {
            return this.f50318f;
        }

        public int f() {
            return this.f50322j[g()];
        }

        public float h() {
            return this.f50317e;
        }

        public int i() {
            return this.f50322j[this.f50323k];
        }

        public float j() {
            return this.f50325m;
        }

        public float k() {
            return this.f50326n;
        }

        public float l() {
            return this.f50324l;
        }

        public float m() {
            return this.f50320h;
        }

        public void n() {
            x(g());
        }

        public void p() {
            this.f50324l = 0.0f;
            this.f50325m = 0.0f;
            this.f50326n = 0.0f;
            D(0.0f);
            z(0.0f);
            B(0.0f);
        }

        public void q(int i10) {
            this.f50333u = i10;
        }

        public void r(float f10, float f11) {
            this.f50331s = (int) f10;
            this.f50332t = (int) f11;
        }

        public void s(float f10) {
            if (f10 != this.f50329q) {
                this.f50329q = f10;
                o();
            }
        }

        public void t(int i10) {
            this.f50335w = i10;
        }

        public void u(double d10) {
            this.f50330r = d10;
        }

        public void v(int i10) {
            this.f50336x = i10;
        }

        public void w(ColorFilter colorFilter) {
            this.f50314b.setColorFilter(colorFilter);
            o();
        }

        public void x(int i10) {
            this.f50323k = i10;
            this.f50336x = this.f50322j[i10];
        }

        public void y(@NonNull int[] iArr) {
            this.f50322j = iArr;
            x(0);
        }

        public void z(float f10) {
            this.f50318f = f10;
            o();
        }
    }

    public a(Context context, View view) {
        int[] iArr = {ViewCompat.MEASURED_STATE_MASK};
        this.f50296a = iArr;
        this.f50297b = new ArrayList<>();
        c cVar = new c();
        this.f50307l = cVar;
        this.f50301f = view;
        this.f50300e = context.getResources();
        d dVar = new d(cVar);
        this.f50298c = dVar;
        dVar.y(iArr);
        s(1);
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(float f10, d dVar) {
        r(f10, dVar);
        dVar.D(dVar.l() + (((dVar.j() - i(dVar)) - dVar.l()) * f10));
        dVar.z(dVar.j());
        dVar.B(dVar.k() + ((((float) (Math.floor(dVar.k() / 0.8f) + 1.0d)) - dVar.k()) * f10));
    }

    private int h(float f10, int i10, int i11) {
        int i12 = (i10 >> 24) & 255;
        int i13 = (i10 >> 16) & 255;
        int i14 = (i10 >> 8) & 255;
        int i15 = i10 & 255;
        return ((i12 + ((int) ((((i11 >> 24) & 255) - i12) * f10))) << 24) | ((i13 + ((int) ((((i11 >> 16) & 255) - i13) * f10))) << 16) | ((i14 + ((int) ((((i11 >> 8) & 255) - i14) * f10))) << 8) | (i15 + ((int) (f10 * ((i11 & 255) - i15))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float i(d dVar) {
        return (float) Math.toRadians(dVar.m() / (dVar.d() * 6.283185307179586d));
    }

    private void o(double d10, double d11, double d12, double d13, float f10, float f11) {
        d dVar = this.f50298c;
        float f12 = this.f50300e.getDisplayMetrics().density;
        double d14 = f12;
        this.f50304i = d10 * d14;
        this.f50305j = d11 * d14;
        dVar.E(((float) d13) * f12);
        dVar.u(d12 * d14);
        dVar.x(0);
        dVar.r(f10 * f12, f11 * f12);
        dVar.A((int) this.f50304i, (int) this.f50305j);
    }

    private void q() {
        d dVar = this.f50298c;
        C0706a c0706a = new C0706a(dVar);
        c0706a.setRepeatCount(-1);
        c0706a.setRepeatMode(1);
        c0706a.setInterpolator(f50294m);
        c0706a.setAnimationListener(new b(dVar));
        this.f50302g = c0706a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(float f10, d dVar) {
        if (f10 > 0.75f) {
            dVar.v(h((f10 - 0.75f) / 0.25f, dVar.i(), dVar.f()));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int save = canvas.save();
        canvas.rotate(this.f50299d, bounds.exactCenterX(), bounds.exactCenterY());
        this.f50298c.a(canvas, bounds);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f50298c.c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f50305j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) this.f50304i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        ArrayList<Animation> arrayList = this.f50297b;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            Animation animation = arrayList.get(i10);
            if (animation.hasStarted() && !animation.hasEnded()) {
                return true;
            }
        }
        return false;
    }

    public void j(float f10) {
        this.f50298c.s(f10);
    }

    public void k(int i10) {
        this.f50298c.t(i10);
    }

    public void l(int... iArr) {
        this.f50298c.y(iArr);
        this.f50298c.x(0);
    }

    public void m(float f10) {
        this.f50298c.B(f10);
    }

    void n(float f10) {
        this.f50299d = f10;
        invalidateSelf();
    }

    public void p(float f10, float f11) {
        this.f50298c.D(f10);
        this.f50298c.z(f11);
    }

    public void s(int i10) {
        if (i10 == 0) {
            o(56.0d, 56.0d, 12.5d, 3.0d, 12.0f, 6.0f);
        } else {
            o(40.0d, 40.0d, 8.75d, 2.5d, 10.0f, 5.0f);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f50298c.q(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f50298c.w(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f50302g.reset();
        this.f50298c.F();
        if (this.f50298c.e() != this.f50298c.h()) {
            this.f50306k = true;
            this.f50302g.setDuration(666L);
            this.f50301f.startAnimation(this.f50302g);
            return;
        }
        this.f50298c.x(0);
        this.f50298c.p();
        this.f50302g.setDuration(1332L);
        this.f50301f.startAnimation(this.f50302g);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f50301f.clearAnimation();
        n(0.0f);
        this.f50298c.C(false);
        this.f50298c.x(0);
        this.f50298c.p();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaterialProgressDrawable.java */
    /* loaded from: classes5.dex */
    public class b implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f50310a;

        b(d dVar) {
            this.f50310a = dVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            this.f50310a.F();
            this.f50310a.n();
            d dVar = this.f50310a;
            dVar.D(dVar.e());
            a aVar = a.this;
            if (!aVar.f50306k) {
                aVar.f50303h = (aVar.f50303h + 1.0f) % 5.0f;
                return;
            }
            aVar.f50306k = false;
            animation.setDuration(1332L);
            this.f50310a.C(false);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            a.this.f50303h = 0.0f;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }
    }
}
