package com.bytedance.adsdk.ZYk.ba;

import android.view.Choreographer;
import com.bytedance.adsdk.ZYk.cFZ;
/* loaded from: classes3.dex */
public class tB extends oJ implements Choreographer.FrameCallback {
    private cFZ kkU;
    private float ZYk = 1.0f;
    private boolean tB = false;
    private long ex = 0;
    private float Pfn = 0.0f;

    /* renamed from: ba  reason: collision with root package name */
    private float f11500ba = 0.0f;
    private int cFZ = 0;

    /* renamed from: so  reason: collision with root package name */
    private float f11501so = -2.14748365E9f;
    private float jFA = 2.14748365E9f;
    protected boolean oJ = false;
    private boolean dLZ = false;

    private boolean QSm() {
        if (kkU() < 0.0f) {
            return true;
        }
        return false;
    }

    private float RZ() {
        cFZ cfz = this.kkU;
        if (cfz == null) {
            return Float.MAX_VALUE;
        }
        return (1.0E9f / cfz.BTZ()) / Math.abs(this.ZYk);
    }

    private void oq() {
        if (this.kkU == null) {
            return;
        }
        float f10 = this.f11500ba;
        if (f10 >= this.f11501so && f10 <= this.jFA) {
            return;
        }
        throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f11501so), Float.valueOf(this.jFA), Float.valueOf(this.f11500ba)));
    }

    public void BTZ() {
        Ry();
        ZYk(QSm());
    }

    public void PiB() {
        Ry();
        ex();
    }

    protected void Ry() {
        ex(true);
    }

    public void WcQ() {
        this.oJ = true;
        si();
        this.ex = 0L;
        if (QSm() && cFZ() == awB()) {
            oJ(eZI());
        } else if (!QSm() && cFZ() == eZI()) {
            oJ(awB());
        }
        Pfn();
    }

    public void ZYk(float f10) {
        oJ(this.f11501so, f10);
    }

    public float awB() {
        cFZ cfz = this.kkU;
        if (cfz == null) {
            return 0.0f;
        }
        float f10 = this.f11501so;
        if (f10 == -2.14748365E9f) {
            return cfz.ba();
        }
        return f10;
    }

    public float ba() {
        cFZ cfz = this.kkU;
        if (cfz == null) {
            return 0.0f;
        }
        return (this.f11500ba - cfz.ba()) / (this.kkU.cFZ() - this.kkU.ba());
    }

    public float cFZ() {
        return this.f11500ba;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void cancel() {
        ZYk();
        Ry();
    }

    public void dLZ() {
        float awB;
        this.oJ = true;
        oJ(QSm());
        if (QSm()) {
            awB = eZI();
        } else {
            awB = awB();
        }
        oJ((int) awB);
        this.ex = 0L;
        this.cFZ = 0;
        si();
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j10) {
        float awB;
        float eZI;
        si();
        if (this.kkU != null && isRunning()) {
            com.bytedance.adsdk.ZYk.Pfn.oJ("LottieValueAnimator#doFrame");
            long j11 = this.ex;
            long j12 = 0;
            if (j11 != 0) {
                j12 = j10 - j11;
            }
            float RZ = ((float) j12) / RZ();
            float f10 = this.Pfn;
            if (QSm()) {
                RZ = -RZ;
            }
            float f11 = f10 + RZ;
            boolean tB = Pfn.tB(f11, awB(), eZI());
            float f12 = this.Pfn;
            float ZYk = Pfn.ZYk(f11, awB(), eZI());
            this.Pfn = ZYk;
            if (this.dLZ) {
                ZYk = (float) Math.floor(ZYk);
            }
            this.f11500ba = ZYk;
            this.ex = j10;
            if (!this.dLZ || this.Pfn != f12) {
                tB();
            }
            if (!tB) {
                if (getRepeatCount() != -1 && this.cFZ >= getRepeatCount()) {
                    if (this.ZYk < 0.0f) {
                        eZI = awB();
                    } else {
                        eZI = eZI();
                    }
                    this.Pfn = eZI;
                    this.f11500ba = eZI;
                    Ry();
                    ZYk(QSm());
                } else {
                    oJ();
                    this.cFZ++;
                    if (getRepeatMode() == 2) {
                        this.tB = !this.tB;
                        jFA();
                    } else {
                        if (QSm()) {
                            awB = eZI();
                        } else {
                            awB = awB();
                        }
                        this.Pfn = awB;
                        this.f11500ba = awB;
                    }
                    this.ex = j10;
                }
            }
            oq();
            com.bytedance.adsdk.ZYk.Pfn.ZYk("LottieValueAnimator#doFrame");
        }
    }

    public float eZI() {
        cFZ cfz = this.kkU;
        if (cfz == null) {
            return 0.0f;
        }
        float f10 = this.jFA;
        if (f10 == 2.14748365E9f) {
            return cfz.cFZ();
        }
        return f10;
    }

    protected void ex(boolean z10) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z10) {
            this.oJ = false;
        }
    }

    @Override // android.animation.ValueAnimator
    public float getAnimatedFraction() {
        float awB;
        float eZI;
        float awB2;
        if (this.kkU == null) {
            return 0.0f;
        }
        if (QSm()) {
            awB = eZI() - this.f11500ba;
            eZI = eZI();
            awB2 = awB();
        } else {
            awB = this.f11500ba - awB();
            eZI = eZI();
            awB2 = awB();
        }
        return awB / (eZI - awB2);
    }

    @Override // android.animation.ValueAnimator
    public Object getAnimatedValue() {
        return Float.valueOf(ba());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getDuration() {
        cFZ cfz = this.kkU;
        if (cfz == null) {
            return 0L;
        }
        return cfz.Pfn();
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public boolean isRunning() {
        return this.oJ;
    }

    public void jFA() {
        tB(-kkU());
    }

    public float kkU() {
        return this.ZYk;
    }

    public void oJ(cFZ cfz) {
        boolean z10 = this.kkU == null;
        this.kkU = cfz;
        if (z10) {
            oJ(Math.max(this.f11501so, cfz.ba()), Math.min(this.jFA, cfz.cFZ()));
        } else {
            oJ((int) cfz.ba(), (int) cfz.cFZ());
        }
        float f10 = this.f11500ba;
        this.f11500ba = 0.0f;
        this.Pfn = 0.0f;
        oJ((int) f10);
        tB();
    }

    @Override // android.animation.ValueAnimator
    public void setRepeatMode(int i10) {
        super.setRepeatMode(i10);
        if (i10 != 2 && this.tB) {
            this.tB = false;
            jFA();
        }
    }

    protected void si() {
        if (isRunning()) {
            ex(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    public void so() {
        this.kkU = null;
        this.f11501so = -2.14748365E9f;
        this.jFA = 2.14748365E9f;
    }

    public void tB(boolean z10) {
        this.dLZ = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bytedance.adsdk.ZYk.ba.oJ
    public void ZYk() {
        super.ZYk();
        ZYk(QSm());
    }

    public void tB(float f10) {
        this.ZYk = f10;
    }

    public void oJ(float f10) {
        if (this.Pfn == f10) {
            return;
        }
        float ZYk = Pfn.ZYk(f10, awB(), eZI());
        this.Pfn = ZYk;
        if (this.dLZ) {
            ZYk = (float) Math.floor(ZYk);
        }
        this.f11500ba = ZYk;
        this.ex = 0L;
        tB();
    }

    public void oJ(int i10) {
        oJ(i10, (int) this.jFA);
    }

    public void oJ(float f10, float f11) {
        if (f10 <= f11) {
            cFZ cfz = this.kkU;
            float ba2 = cfz == null ? -3.4028235E38f : cfz.ba();
            cFZ cfz2 = this.kkU;
            float cFZ = cfz2 == null ? Float.MAX_VALUE : cfz2.cFZ();
            float ZYk = Pfn.ZYk(f10, ba2, cFZ);
            float ZYk2 = Pfn.ZYk(f11, ba2, cFZ);
            if (ZYk == this.f11501so && ZYk2 == this.jFA) {
                return;
            }
            this.f11501so = ZYk;
            this.jFA = ZYk2;
            oJ((int) Pfn.ZYk(this.f11500ba, ZYk, ZYk2));
            return;
        }
        throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f10), Float.valueOf(f11)));
    }
}
