package d1;

import android.view.Choreographer;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
/* compiled from: LottieValueAnimator.java */
/* loaded from: classes2.dex */
public class i extends c implements Choreographer.FrameCallback {
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private com.airbnb.lottie.i f49785l;

    /* renamed from: d  reason: collision with root package name */
    private float f49777d = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    private boolean f49778e = false;

    /* renamed from: f  reason: collision with root package name */
    private long f49779f = 0;

    /* renamed from: g  reason: collision with root package name */
    private float f49780g = 0.0f;

    /* renamed from: h  reason: collision with root package name */
    private float f49781h = 0.0f;

    /* renamed from: i  reason: collision with root package name */
    private int f49782i = 0;

    /* renamed from: j  reason: collision with root package name */
    private float f49783j = -2.14748365E9f;

    /* renamed from: k  reason: collision with root package name */
    private float f49784k = 2.14748365E9f;
    @VisibleForTesting

    /* renamed from: m  reason: collision with root package name */
    protected boolean f49786m = false;

    /* renamed from: n  reason: collision with root package name */
    private boolean f49787n = false;

    private void H() {
        if (this.f49785l == null) {
            return;
        }
        float f10 = this.f49781h;
        if (f10 >= this.f49783j && f10 <= this.f49784k) {
            return;
        }
        throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f49783j), Float.valueOf(this.f49784k), Float.valueOf(this.f49781h)));
    }

    private void j(float f10) {
        if (!this.f49787n || this.f49780g != f10) {
            i();
        }
    }

    private float o() {
        com.airbnb.lottie.i iVar = this.f49785l;
        if (iVar == null) {
            return Float.MAX_VALUE;
        }
        return (1.0E9f / iVar.i()) / Math.abs(this.f49777d);
    }

    private boolean s() {
        if (r() < 0.0f) {
            return true;
        }
        return false;
    }

    public void A(com.airbnb.lottie.i iVar) {
        boolean z10;
        if (this.f49785l == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f49785l = iVar;
        if (z10) {
            D(Math.max(this.f49783j, iVar.p()), Math.min(this.f49784k, iVar.f()));
        } else {
            D((int) iVar.p(), (int) iVar.f());
        }
        float f10 = this.f49781h;
        this.f49781h = 0.0f;
        this.f49780g = 0.0f;
        B((int) f10);
        i();
    }

    public void B(float f10) {
        if (this.f49780g == f10) {
            return;
        }
        float b10 = k.b(f10, q(), p());
        this.f49780g = b10;
        if (this.f49787n) {
            b10 = (float) Math.floor(b10);
        }
        this.f49781h = b10;
        this.f49779f = 0L;
        i();
    }

    public void C(float f10) {
        D(this.f49783j, f10);
    }

    public void D(float f10, float f11) {
        float p10;
        float f12;
        if (f10 <= f11) {
            com.airbnb.lottie.i iVar = this.f49785l;
            if (iVar == null) {
                p10 = -3.4028235E38f;
            } else {
                p10 = iVar.p();
            }
            com.airbnb.lottie.i iVar2 = this.f49785l;
            if (iVar2 == null) {
                f12 = Float.MAX_VALUE;
            } else {
                f12 = iVar2.f();
            }
            float b10 = k.b(f10, p10, f12);
            float b11 = k.b(f11, p10, f12);
            if (b10 != this.f49783j || b11 != this.f49784k) {
                this.f49783j = b10;
                this.f49784k = b11;
                B((int) k.b(this.f49781h, b10, b11));
                return;
            }
            return;
        }
        throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f10), Float.valueOf(f11)));
    }

    public void E(int i10) {
        D(i10, (int) this.f49784k);
    }

    public void F(float f10) {
        this.f49777d = f10;
    }

    public void G(boolean z10) {
        this.f49787n = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // d1.c
    public void a() {
        super.a();
        b(s());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    @MainThread
    public void cancel() {
        a();
        w();
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j10) {
        float q10;
        float p10;
        v();
        if (this.f49785l != null && isRunning()) {
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.b("LottieValueAnimator#doFrame");
            }
            long j11 = this.f49779f;
            long j12 = 0;
            if (j11 != 0) {
                j12 = j10 - j11;
            }
            float o10 = ((float) j12) / o();
            float f10 = this.f49780g;
            if (s()) {
                o10 = -o10;
            }
            float f11 = f10 + o10;
            boolean d10 = k.d(f11, q(), p());
            float f12 = this.f49780g;
            float b10 = k.b(f11, q(), p());
            this.f49780g = b10;
            if (this.f49787n) {
                b10 = (float) Math.floor(b10);
            }
            this.f49781h = b10;
            this.f49779f = j10;
            if (!d10) {
                if (getRepeatCount() != -1 && this.f49782i >= getRepeatCount()) {
                    if (this.f49777d < 0.0f) {
                        p10 = q();
                    } else {
                        p10 = p();
                    }
                    this.f49780g = p10;
                    this.f49781h = p10;
                    w();
                    j(f12);
                    b(s());
                } else {
                    if (getRepeatMode() == 2) {
                        this.f49778e = !this.f49778e;
                        z();
                    } else {
                        if (s()) {
                            q10 = p();
                        } else {
                            q10 = q();
                        }
                        this.f49780g = q10;
                        this.f49781h = q10;
                    }
                    this.f49779f = j10;
                    j(f12);
                    e();
                    this.f49782i++;
                }
            } else {
                j(f12);
            }
            H();
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.c("LottieValueAnimator#doFrame");
            }
        }
    }

    @Override // android.animation.ValueAnimator
    @FloatRange(from = 0.0d, to = 1.0d)
    public float getAnimatedFraction() {
        float q10;
        float p10;
        float q11;
        if (this.f49785l == null) {
            return 0.0f;
        }
        if (s()) {
            q10 = p() - this.f49781h;
            p10 = p();
            q11 = q();
        } else {
            q10 = this.f49781h - q();
            p10 = p();
            q11 = q();
        }
        return q10 / (p10 - q11);
    }

    @Override // android.animation.ValueAnimator
    public Object getAnimatedValue() {
        return Float.valueOf(m());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getDuration() {
        com.airbnb.lottie.i iVar = this.f49785l;
        if (iVar == null) {
            return 0L;
        }
        return iVar.d();
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public boolean isRunning() {
        return this.f49786m;
    }

    public void k() {
        this.f49785l = null;
        this.f49783j = -2.14748365E9f;
        this.f49784k = 2.14748365E9f;
    }

    @MainThread
    public void l() {
        w();
        b(s());
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float m() {
        com.airbnb.lottie.i iVar = this.f49785l;
        if (iVar == null) {
            return 0.0f;
        }
        return (this.f49781h - iVar.p()) / (this.f49785l.f() - this.f49785l.p());
    }

    public float n() {
        return this.f49781h;
    }

    public float p() {
        com.airbnb.lottie.i iVar = this.f49785l;
        if (iVar == null) {
            return 0.0f;
        }
        float f10 = this.f49784k;
        if (f10 == 2.14748365E9f) {
            return iVar.f();
        }
        return f10;
    }

    public float q() {
        com.airbnb.lottie.i iVar = this.f49785l;
        if (iVar == null) {
            return 0.0f;
        }
        float f10 = this.f49783j;
        if (f10 == -2.14748365E9f) {
            return iVar.p();
        }
        return f10;
    }

    public float r() {
        return this.f49777d;
    }

    @Override // android.animation.ValueAnimator
    public void setRepeatMode(int i10) {
        super.setRepeatMode(i10);
        if (i10 != 2 && this.f49778e) {
            this.f49778e = false;
            z();
        }
    }

    @MainThread
    public void t() {
        w();
        c();
    }

    @MainThread
    public void u() {
        float q10;
        this.f49786m = true;
        g(s());
        if (s()) {
            q10 = p();
        } else {
            q10 = q();
        }
        B((int) q10);
        this.f49779f = 0L;
        this.f49782i = 0;
        v();
    }

    protected void v() {
        if (isRunning()) {
            x(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    @MainThread
    protected void w() {
        x(true);
    }

    @MainThread
    protected void x(boolean z10) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z10) {
            this.f49786m = false;
        }
    }

    @MainThread
    public void y() {
        this.f49786m = true;
        v();
        this.f49779f = 0L;
        if (s() && n() == q()) {
            B(p());
        } else if (!s() && n() == p()) {
            B(q());
        }
        f();
    }

    public void z() {
        F(-r());
    }
}
