package e1;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.airbnb.lottie.i;
/* compiled from: Keyframe.java */
/* loaded from: classes2.dex */
public class a<T> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final i f50723a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final T f50724b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public T f50725c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final Interpolator f50726d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final Interpolator f50727e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final Interpolator f50728f;

    /* renamed from: g  reason: collision with root package name */
    public final float f50729g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public Float f50730h;

    /* renamed from: i  reason: collision with root package name */
    private float f50731i;

    /* renamed from: j  reason: collision with root package name */
    private float f50732j;

    /* renamed from: k  reason: collision with root package name */
    private int f50733k;

    /* renamed from: l  reason: collision with root package name */
    private int f50734l;

    /* renamed from: m  reason: collision with root package name */
    private float f50735m;

    /* renamed from: n  reason: collision with root package name */
    private float f50736n;

    /* renamed from: o  reason: collision with root package name */
    public PointF f50737o;

    /* renamed from: p  reason: collision with root package name */
    public PointF f50738p;

    public a(i iVar, @Nullable T t10, @Nullable T t11, @Nullable Interpolator interpolator, float f10, @Nullable Float f11) {
        this.f50731i = -3987645.8f;
        this.f50732j = -3987645.8f;
        this.f50733k = 784923401;
        this.f50734l = 784923401;
        this.f50735m = Float.MIN_VALUE;
        this.f50736n = Float.MIN_VALUE;
        this.f50737o = null;
        this.f50738p = null;
        this.f50723a = iVar;
        this.f50724b = t10;
        this.f50725c = t11;
        this.f50726d = interpolator;
        this.f50727e = null;
        this.f50728f = null;
        this.f50729g = f10;
        this.f50730h = f11;
    }

    public boolean a(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        if (f10 >= f() && f10 < c()) {
            return true;
        }
        return false;
    }

    public a<T> b(T t10, T t11) {
        return new a<>(t10, t11);
    }

    public float c() {
        if (this.f50723a == null) {
            return 1.0f;
        }
        if (this.f50736n == Float.MIN_VALUE) {
            if (this.f50730h == null) {
                this.f50736n = 1.0f;
            } else {
                float f10 = f();
                this.f50736n = (float) (f10 + ((this.f50730h.floatValue() - this.f50729g) / this.f50723a.e()));
            }
        }
        return this.f50736n;
    }

    public float d() {
        if (this.f50732j == -3987645.8f) {
            this.f50732j = ((Float) this.f50725c).floatValue();
        }
        return this.f50732j;
    }

    public int e() {
        if (this.f50734l == 784923401) {
            this.f50734l = ((Integer) this.f50725c).intValue();
        }
        return this.f50734l;
    }

    public float f() {
        i iVar = this.f50723a;
        if (iVar == null) {
            return 0.0f;
        }
        if (this.f50735m == Float.MIN_VALUE) {
            this.f50735m = (this.f50729g - iVar.p()) / this.f50723a.e();
        }
        return this.f50735m;
    }

    public float g() {
        if (this.f50731i == -3987645.8f) {
            this.f50731i = ((Float) this.f50724b).floatValue();
        }
        return this.f50731i;
    }

    public int h() {
        if (this.f50733k == 784923401) {
            this.f50733k = ((Integer) this.f50724b).intValue();
        }
        return this.f50733k;
    }

    public boolean i() {
        if (this.f50726d == null && this.f50727e == null && this.f50728f == null) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.f50724b + ", endValue=" + this.f50725c + ", startFrame=" + this.f50729g + ", endFrame=" + this.f50730h + ", interpolator=" + this.f50726d + '}';
    }

    public a(i iVar, @Nullable T t10, @Nullable T t11, @Nullable Interpolator interpolator, @Nullable Interpolator interpolator2, float f10, @Nullable Float f11) {
        this.f50731i = -3987645.8f;
        this.f50732j = -3987645.8f;
        this.f50733k = 784923401;
        this.f50734l = 784923401;
        this.f50735m = Float.MIN_VALUE;
        this.f50736n = Float.MIN_VALUE;
        this.f50737o = null;
        this.f50738p = null;
        this.f50723a = iVar;
        this.f50724b = t10;
        this.f50725c = t11;
        this.f50726d = null;
        this.f50727e = interpolator;
        this.f50728f = interpolator2;
        this.f50729g = f10;
        this.f50730h = f11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(i iVar, @Nullable T t10, @Nullable T t11, @Nullable Interpolator interpolator, @Nullable Interpolator interpolator2, @Nullable Interpolator interpolator3, float f10, @Nullable Float f11) {
        this.f50731i = -3987645.8f;
        this.f50732j = -3987645.8f;
        this.f50733k = 784923401;
        this.f50734l = 784923401;
        this.f50735m = Float.MIN_VALUE;
        this.f50736n = Float.MIN_VALUE;
        this.f50737o = null;
        this.f50738p = null;
        this.f50723a = iVar;
        this.f50724b = t10;
        this.f50725c = t11;
        this.f50726d = interpolator;
        this.f50727e = interpolator2;
        this.f50728f = interpolator3;
        this.f50729g = f10;
        this.f50730h = f11;
    }

    public a(T t10) {
        this.f50731i = -3987645.8f;
        this.f50732j = -3987645.8f;
        this.f50733k = 784923401;
        this.f50734l = 784923401;
        this.f50735m = Float.MIN_VALUE;
        this.f50736n = Float.MIN_VALUE;
        this.f50737o = null;
        this.f50738p = null;
        this.f50723a = null;
        this.f50724b = t10;
        this.f50725c = t10;
        this.f50726d = null;
        this.f50727e = null;
        this.f50728f = null;
        this.f50729g = Float.MIN_VALUE;
        this.f50730h = Float.valueOf(Float.MAX_VALUE);
    }

    private a(T t10, T t11) {
        this.f50731i = -3987645.8f;
        this.f50732j = -3987645.8f;
        this.f50733k = 784923401;
        this.f50734l = 784923401;
        this.f50735m = Float.MIN_VALUE;
        this.f50736n = Float.MIN_VALUE;
        this.f50737o = null;
        this.f50738p = null;
        this.f50723a = null;
        this.f50724b = t10;
        this.f50725c = t11;
        this.f50726d = null;
        this.f50727e = null;
        this.f50728f = null;
        this.f50729g = Float.MIN_VALUE;
        this.f50730h = Float.valueOf(Float.MAX_VALUE);
    }
}
