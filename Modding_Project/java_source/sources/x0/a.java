package x0;

import android.annotation.SuppressLint;
import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
/* compiled from: CubicCurveData.java */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final PointF f70362a;

    /* renamed from: b  reason: collision with root package name */
    private final PointF f70363b;

    /* renamed from: c  reason: collision with root package name */
    private final PointF f70364c;

    public a() {
        this.f70362a = new PointF();
        this.f70363b = new PointF();
        this.f70364c = new PointF();
    }

    public PointF a() {
        return this.f70362a;
    }

    public PointF b() {
        return this.f70363b;
    }

    public PointF c() {
        return this.f70364c;
    }

    public void d(float f10, float f11) {
        this.f70362a.set(f10, f11);
    }

    public void e(float f10, float f11) {
        this.f70363b.set(f10, f11);
    }

    public void f(float f10, float f11) {
        this.f70364c.set(f10, f11);
    }

    @NonNull
    @SuppressLint({"DefaultLocale"})
    public String toString() {
        return String.format("v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f", Float.valueOf(this.f70364c.x), Float.valueOf(this.f70364c.y), Float.valueOf(this.f70362a.x), Float.valueOf(this.f70362a.y), Float.valueOf(this.f70363b.x), Float.valueOf(this.f70363b.y));
    }

    public a(PointF pointF, PointF pointF2, PointF pointF3) {
        this.f70362a = pointF;
        this.f70363b = pointF2;
        this.f70364c = pointF3;
    }
}
