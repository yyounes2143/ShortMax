package z0;

import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import y0.o;
/* compiled from: CircleShape.java */
/* loaded from: classes2.dex */
public class b implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f71172a;

    /* renamed from: b  reason: collision with root package name */
    private final o<PointF, PointF> f71173b;

    /* renamed from: c  reason: collision with root package name */
    private final y0.f f71174c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f71175d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f71176e;

    public b(String str, o<PointF, PointF> oVar, y0.f fVar, boolean z10, boolean z11) {
        this.f71172a = str;
        this.f71173b = oVar;
        this.f71174c = fVar;
        this.f71175d = z10;
        this.f71176e = z11;
    }

    @Override // z0.c
    public t0.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.i iVar, com.airbnb.lottie.model.layer.a aVar) {
        return new t0.f(lottieDrawable, aVar, this);
    }

    public String b() {
        return this.f71172a;
    }

    public o<PointF, PointF> c() {
        return this.f71173b;
    }

    public y0.f d() {
        return this.f71174c;
    }

    public boolean e() {
        return this.f71176e;
    }

    public boolean f() {
        return this.f71175d;
    }
}
