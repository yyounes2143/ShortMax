package com.bytedance.adsdk.ZYk.cFZ;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.bytedance.adsdk.ZYk.cFZ;
/* loaded from: classes3.dex */
public class oJ<T> {
    private float BTZ;
    public final Interpolator Pfn;
    private int PiB;
    private int WcQ;
    public T ZYk;
    private float awB;

    /* renamed from: ba  reason: collision with root package name */
    public final float f11507ba;
    public Float cFZ;
    private float dLZ;
    private float eZI;
    public final Interpolator ex;
    public PointF jFA;
    private final cFZ kkU;
    public final T oJ;

    /* renamed from: so  reason: collision with root package name */
    public PointF f11508so;
    public final Interpolator tB;

    public oJ(cFZ cfz, T t10, T t11, Interpolator interpolator, float f10, Float f11) {
        this.dLZ = -3987645.8f;
        this.BTZ = -3987645.8f;
        this.PiB = 784923401;
        this.WcQ = 784923401;
        this.awB = Float.MIN_VALUE;
        this.eZI = Float.MIN_VALUE;
        this.f11508so = null;
        this.jFA = null;
        this.kkU = cfz;
        this.oJ = t10;
        this.ZYk = t11;
        this.tB = interpolator;
        this.ex = null;
        this.Pfn = null;
        this.f11507ba = f10;
        this.cFZ = f11;
    }

    public boolean Pfn() {
        if (this.tB == null && this.ex == null && this.Pfn == null) {
            return true;
        }
        return false;
    }

    public float ba() {
        if (this.dLZ == -3987645.8f) {
            this.dLZ = ((Float) this.oJ).floatValue();
        }
        return this.dLZ;
    }

    public float cFZ() {
        if (this.BTZ == -3987645.8f) {
            this.BTZ = ((Float) this.ZYk).floatValue();
        }
        return this.BTZ;
    }

    public float ex() {
        if (this.kkU == null) {
            return 1.0f;
        }
        if (this.eZI == Float.MIN_VALUE) {
            if (this.cFZ == null) {
                this.eZI = 1.0f;
            } else {
                this.eZI = tB() + ((this.cFZ.floatValue() - this.f11507ba) / this.kkU.si());
            }
        }
        return this.eZI;
    }

    public int jFA() {
        if (this.WcQ == 784923401) {
            this.WcQ = ((Integer) this.ZYk).intValue();
        }
        return this.WcQ;
    }

    public oJ<T> oJ(T t10, T t11) {
        return new oJ<>(t10, t11);
    }

    public int so() {
        if (this.PiB == 784923401) {
            this.PiB = ((Integer) this.oJ).intValue();
        }
        return this.PiB;
    }

    public float tB() {
        cFZ cfz = this.kkU;
        if (cfz == null) {
            return 0.0f;
        }
        if (this.awB == Float.MIN_VALUE) {
            this.awB = (this.f11507ba - cfz.ba()) / this.kkU.si();
        }
        return this.awB;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.oJ + ", endValue=" + this.ZYk + ", startFrame=" + this.f11507ba + ", endFrame=" + this.cFZ + ", interpolator=" + this.tB + '}';
    }

    public boolean oJ(float f10) {
        return f10 >= tB() && f10 < ex();
    }

    public oJ(cFZ cfz, T t10, T t11, Interpolator interpolator, Interpolator interpolator2, float f10, Float f11) {
        this.dLZ = -3987645.8f;
        this.BTZ = -3987645.8f;
        this.PiB = 784923401;
        this.WcQ = 784923401;
        this.awB = Float.MIN_VALUE;
        this.eZI = Float.MIN_VALUE;
        this.f11508so = null;
        this.jFA = null;
        this.kkU = cfz;
        this.oJ = t10;
        this.ZYk = t11;
        this.tB = null;
        this.ex = interpolator;
        this.Pfn = interpolator2;
        this.f11507ba = f10;
        this.cFZ = f11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public oJ(cFZ cfz, T t10, T t11, Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3, float f10, Float f11) {
        this.dLZ = -3987645.8f;
        this.BTZ = -3987645.8f;
        this.PiB = 784923401;
        this.WcQ = 784923401;
        this.awB = Float.MIN_VALUE;
        this.eZI = Float.MIN_VALUE;
        this.f11508so = null;
        this.jFA = null;
        this.kkU = cfz;
        this.oJ = t10;
        this.ZYk = t11;
        this.tB = interpolator;
        this.ex = interpolator2;
        this.Pfn = interpolator3;
        this.f11507ba = f10;
        this.cFZ = f11;
    }

    public oJ(T t10) {
        this.dLZ = -3987645.8f;
        this.BTZ = -3987645.8f;
        this.PiB = 784923401;
        this.WcQ = 784923401;
        this.awB = Float.MIN_VALUE;
        this.eZI = Float.MIN_VALUE;
        this.f11508so = null;
        this.jFA = null;
        this.kkU = null;
        this.oJ = t10;
        this.ZYk = t10;
        this.tB = null;
        this.ex = null;
        this.Pfn = null;
        this.f11507ba = Float.MIN_VALUE;
        this.cFZ = Float.valueOf(Float.MAX_VALUE);
    }

    private oJ(T t10, T t11) {
        this.dLZ = -3987645.8f;
        this.BTZ = -3987645.8f;
        this.PiB = 784923401;
        this.WcQ = 784923401;
        this.awB = Float.MIN_VALUE;
        this.eZI = Float.MIN_VALUE;
        this.f11508so = null;
        this.jFA = null;
        this.kkU = null;
        this.oJ = t10;
        this.ZYk = t11;
        this.tB = null;
        this.ex = null;
        this.Pfn = null;
        this.f11507ba = Float.MIN_VALUE;
        this.cFZ = Float.valueOf(Float.MAX_VALUE);
    }
}
