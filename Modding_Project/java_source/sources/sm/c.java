package sm;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
/* loaded from: classes7.dex */
public class c extends Drawable implements Animatable {
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private static final Interpolator f66405g = new LinearInterpolator();
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private static final Interpolator f66406h = new a();

    /* renamed from: i  reason: collision with root package name */
    private static final int[] f66407i = {ViewCompat.MEASURED_STATE_MASK};
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Resources f66408a;
    @NonNull
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final d f66409b;

    /* renamed from: c  reason: collision with root package name */
    private float f66410c;

    /* renamed from: d  reason: collision with root package name */
    private Animator f66411d;

    /* renamed from: e  reason: collision with root package name */
    private float f66412e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f66413f;

    /* loaded from: classes7.dex */
    class a implements Interpolator {

        /* renamed from: a  reason: collision with root package name */
        private final float[] f66414a = {0.0f, 1.0E-4f, 2.0E-4f, 5.0E-4f, 9.0E-4f, 0.0014f, 0.002f, 0.0027f, 0.0036f, 0.0046f, 0.0058f, 0.0071f, 0.0085f, 0.0101f, 0.0118f, 0.0137f, 0.0158f, 0.018f, 0.0205f, 0.0231f, 0.0259f, 0.0289f, 0.0321f, 0.0355f, 0.0391f, 0.043f, 0.0471f, 0.0514f, 0.056f, 0.0608f, 0.066f, 0.0714f, 0.0771f, 0.083f, 0.0893f, 0.0959f, 0.1029f, 0.1101f, 0.1177f, 0.1257f, 0.1339f, 0.1426f, 0.1516f, 0.161f, 0.1707f, 0.1808f, 0.1913f, 0.2021f, 0.2133f, 0.2248f, 0.2366f, 0.2487f, 0.2611f, 0.2738f, 0.2867f, 0.2998f, 0.3131f, 0.3265f, 0.34f, 0.3536f, 0.3673f, 0.381f, 0.3946f, 0.4082f, 0.4217f, 0.4352f, 0.4485f, 0.4616f, 0.4746f, 0.4874f, 0.5f, 0.5124f, 0.5246f, 0.5365f, 0.5482f, 0.5597f, 0.571f, 0.582f, 0.5928f, 0.6033f, 0.6136f, 0.6237f, 0.6335f, 0.6431f, 0.6525f, 0.6616f, 0.6706f, 0.6793f, 0.6878f, 0.6961f, 0.7043f, 0.7122f, 0.7199f, 0.7275f, 0.7349f, 0.7421f, 0.7491f, 0.7559f, 0.7626f, 0.7692f, 0.7756f, 0.7818f, 0.7879f, 0.7938f, 0.7996f, 0.8053f, 0.8108f, 0.8162f, 0.8215f, 0.8266f, 0.8317f, 0.8366f, 0.8414f, 0.8461f, 0.8507f, 0.8551f, 0.8595f, 0.8638f, 0.8679f, 0.872f, 0.876f, 0.8798f, 0.8836f, 0.8873f, 0.8909f, 0.8945f, 0.8979f, 0.9013f, 0.9046f, 0.9078f, 0.9109f, 0.9139f, 0.9169f, 0.9198f, 0.9227f, 0.9254f, 0.9281f, 0.9307f, 0.9333f, 0.9358f, 0.9382f, 0.9406f, 0.9429f, 0.9452f, 0.9474f, 0.9495f, 0.9516f, 0.9536f, 0.9556f, 0.9575f, 0.9594f, 0.9612f, 0.9629f, 0.9646f, 0.9663f, 0.9679f, 0.9695f, 0.971f, 0.9725f, 0.9739f, 0.9753f, 0.9766f, 0.9779f, 0.9791f, 0.9803f, 0.9815f, 0.9826f, 0.9837f, 0.9848f, 0.9858f, 0.9867f, 0.9877f, 0.9885f, 0.9894f, 0.9902f, 0.991f, 0.9917f, 0.9924f, 0.9931f, 0.9937f, 0.9944f, 0.9949f, 0.9955f, 0.996f, 0.9964f, 0.9969f, 0.9973f, 0.9977f, 0.998f, 0.9984f, 0.9986f, 0.9989f, 0.9991f, 0.9993f, 0.9995f, 0.9997f, 0.9998f, 0.9999f, 0.9999f, 1.0f, 1.0f};

        /* renamed from: b  reason: collision with root package name */
        private final float f66415b = 1.0f / 200;

        a() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            if (f10 >= 1.0f) {
                return 1.0f;
            }
            if (f10 <= 0.0f) {
                return 0.0f;
            }
            float[] fArr = this.f66414a;
            int min = Math.min((int) ((fArr.length - 1) * f10), fArr.length - 2);
            float f11 = this.f66415b;
            float f12 = (f10 - (min * f11)) / f11;
            float[] fArr2 = this.f66414a;
            float f13 = fArr2[min];
            return f13 + (f12 * (fArr2[min + 1] - f13));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f66416a;

        b(d dVar) {
            this.f66416a = dVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            c.this.k(floatValue, this.f66416a);
            c.this.g(floatValue, this.f66416a, false);
            c.this.invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes7.dex */
    public static class d {
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        final Paint f66421b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        final Paint f66422c;
        @NonNull

        /* renamed from: d  reason: collision with root package name */
        final Paint f66423d;
        @NonNull

        /* renamed from: e  reason: collision with root package name */
        final Paint f66424e;

        /* renamed from: j  reason: collision with root package name */
        int[] f66429j;

        /* renamed from: k  reason: collision with root package name */
        int f66430k;

        /* renamed from: l  reason: collision with root package name */
        float f66431l;

        /* renamed from: m  reason: collision with root package name */
        float f66432m;

        /* renamed from: n  reason: collision with root package name */
        float f66433n;

        /* renamed from: o  reason: collision with root package name */
        float f66434o;

        /* renamed from: q  reason: collision with root package name */
        int f66436q;

        /* renamed from: f  reason: collision with root package name */
        float f66425f = 0.0f;

        /* renamed from: g  reason: collision with root package name */
        float f66426g = 0.0f;

        /* renamed from: h  reason: collision with root package name */
        float f66427h = 0.0f;

        /* renamed from: i  reason: collision with root package name */
        float f66428i = 5.0f;

        /* renamed from: p  reason: collision with root package name */
        int f66435p = 255;
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        final RectF f66420a = new RectF();

        d() {
            Paint paint = new Paint();
            this.f66421b = paint;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.f66422c = paint2;
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            Paint paint3 = new Paint();
            this.f66423d = paint3;
            paint3.setColor(0);
            Paint paint4 = new Paint();
            this.f66424e = paint4;
            paint4.setColor(0);
        }

        int a() {
            return this.f66435p;
        }

        void b(float f10) {
            this.f66434o = f10;
        }

        void c(int i10) {
            this.f66435p = i10;
        }

        void d(@NonNull Canvas canvas, @NonNull Rect rect) {
            RectF rectF = this.f66420a;
            float f10 = this.f66434o;
            float f11 = (this.f66428i / 2.0f) + f10;
            if (f10 <= 0.0f) {
                f11 = (Math.min(rect.width(), rect.height()) / 2.0f) - (this.f66428i / 2.0f);
            }
            rectF.set(rect.centerX() - f11, rect.centerY() - f11, rect.centerX() + f11, rect.centerY() + f11);
            float f12 = this.f66425f;
            float f13 = this.f66427h;
            float f14 = (f12 + f13) * 360.0f;
            this.f66421b.setColor(this.f66436q);
            this.f66421b.setAlpha(this.f66435p);
            float f15 = this.f66428i / 2.0f;
            rectF.inset(f15, f15);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f66423d);
            float f16 = -f15;
            rectF.inset(f16, f16);
            canvas.drawArc(rectF, f14, ((this.f66426g + f13) * 360.0f) - f14, false, this.f66421b);
        }

        void e(ColorFilter colorFilter) {
            this.f66421b.setColorFilter(colorFilter);
        }

        void f(Paint.Cap cap) {
            this.f66421b.setStrokeCap(cap);
        }

        void g(@NonNull int[] iArr) {
            this.f66429j = iArr;
            n(0);
        }

        void h(float f10) {
            this.f66426g = f10;
        }

        float i() {
            return this.f66426g;
        }

        void j(float f10) {
            this.f66427h = f10;
        }

        void k(int i10) {
            this.f66436q = i10;
        }

        int l() {
            return this.f66429j[o()];
        }

        void m(float f10) {
            this.f66425f = f10;
        }

        void n(int i10) {
            this.f66430k = i10;
            this.f66436q = this.f66429j[i10];
        }

        int o() {
            return (this.f66430k + 1) % this.f66429j.length;
        }

        void p(float f10) {
            this.f66428i = f10;
            this.f66421b.setStrokeWidth(f10);
        }

        float q() {
            return this.f66425f;
        }

        int r() {
            return this.f66429j[this.f66430k];
        }

        float s() {
            return this.f66432m;
        }

        float t() {
            return this.f66433n;
        }

        float u() {
            return this.f66431l;
        }

        void v() {
            n(o());
        }

        void w() {
            this.f66431l = 0.0f;
            this.f66432m = 0.0f;
            this.f66433n = 0.0f;
            m(0.0f);
            h(0.0f);
            j(0.0f);
        }

        void x() {
            this.f66431l = this.f66425f;
            this.f66432m = this.f66426g;
            this.f66433n = this.f66427h;
        }
    }

    public c(@NonNull Context context) {
        this.f66408a = context.getResources();
        d dVar = new d();
        this.f66409b = dVar;
        dVar.g(f66407i);
        q(2.5f);
        d();
    }

    private int c(float f10, int i10, int i11) {
        int i12 = (i10 >> 24) & 255;
        int i13 = (i10 >> 16) & 255;
        int i14 = (i10 >> 8) & 255;
        int i15 = i10 & 255;
        return ((i12 + ((int) ((((i11 >> 24) & 255) - i12) * f10))) << 24) | ((i13 + ((int) ((((i11 >> 16) & 255) - i13) * f10))) << 16) | ((i14 + ((int) ((((i11 >> 8) & 255) - i14) * f10))) << 8) | (i15 + ((int) (f10 * ((i11 & 255) - i15))));
    }

    private void d() {
        d dVar = this.f66409b;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new b(dVar));
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f66405g);
        ofFloat.addListener(new C0923c(dVar));
        this.f66411d = ofFloat;
    }

    private void e(float f10) {
        this.f66410c = f10;
    }

    private void f(float f10, d dVar) {
        k(f10, dVar);
        dVar.m(dVar.u() + (((dVar.s() - 0.01f) - dVar.u()) * f10));
        dVar.h(dVar.s());
        dVar.j(dVar.t() + ((((float) (Math.floor(dVar.t() / 0.8f) + 1.0d)) - dVar.t()) * f10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(float f10, d dVar, boolean z10) {
        float interpolation;
        float f11;
        if (this.f66413f) {
            f(f10, dVar);
        } else if (f10 != 1.0f || z10) {
            float t10 = dVar.t();
            if (f10 < 0.5f) {
                interpolation = dVar.u();
                f11 = (f66406h.getInterpolation(f10 / 0.5f) * 0.79f) + interpolation + 0.01f;
            } else {
                float u10 = dVar.u() + 0.79f;
                interpolation = u10 - (((1.0f - f66406h.getInterpolation((f10 - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                f11 = u10;
            }
            dVar.m(interpolation);
            dVar.h(f11);
            dVar.j(t10 + (0.20999998f * f10));
            e((f10 + this.f66412e) * 216.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(float f10, d dVar) {
        if (f10 > 0.75f) {
            dVar.k(c((f10 - 0.75f) / 0.25f, dVar.r(), dVar.l()));
        } else {
            dVar.k(dVar.r());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f66410c, bounds.exactCenterX(), bounds.exactCenterY());
        this.f66409b.d(canvas, bounds);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f66409b.a();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f66411d.isRunning();
    }

    public float m() {
        return this.f66409b.f66428i;
    }

    public void n(float f10) {
        this.f66409b.b(f10);
        invalidateSelf();
    }

    public void o(int... iArr) {
        this.f66409b.g(iArr);
        this.f66409b.n(0);
        invalidateSelf();
    }

    public void p(Paint.Cap cap) {
        this.f66409b.f(cap);
        invalidateSelf();
    }

    public void q(float f10) {
        this.f66409b.p(f10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f66409b.c(i10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f66409b.e(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f66411d.cancel();
        this.f66409b.x();
        if (this.f66409b.i() != this.f66409b.q()) {
            this.f66413f = true;
            this.f66411d.setDuration(666L);
            this.f66411d.start();
            return;
        }
        this.f66409b.n(0);
        this.f66409b.w();
        this.f66411d.setDuration(1332L);
        this.f66411d.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f66411d.cancel();
        e(0.0f);
        this.f66409b.n(0);
        this.f66409b.w();
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: sm.c$c  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public class C0923c implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f66418a;

        C0923c(d dVar) {
            this.f66418a = dVar;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(@NonNull Animator animator) {
            c.this.g(1.0f, this.f66418a, true);
            this.f66418a.x();
            this.f66418a.v();
            if (c.this.f66413f) {
                c.this.f66413f = false;
                animator.cancel();
                animator.setDuration(1332L);
                animator.start();
                return;
            }
            c.this.f66412e += 1.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(@NonNull Animator animator) {
            c.this.f66412e = 0.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(@NonNull Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@NonNull Animator animator) {
        }
    }
}
