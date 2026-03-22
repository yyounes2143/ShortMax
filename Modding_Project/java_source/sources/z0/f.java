package z0;

import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import y0.o;
/* compiled from: RectangleShape.java */
/* loaded from: classes2.dex */
public class f implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f71189a;

    /* renamed from: b  reason: collision with root package name */
    private final o<PointF, PointF> f71190b;

    /* renamed from: c  reason: collision with root package name */
    private final o<PointF, PointF> f71191c;

    /* renamed from: d  reason: collision with root package name */
    private final y0.b f71192d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f71193e;

    public f(String str, o<PointF, PointF> oVar, o<PointF, PointF> oVar2, y0.b bVar, boolean z10) {
        this.f71189a = str;
        this.f71190b = oVar;
        this.f71191c = oVar2;
        this.f71192d = bVar;
        this.f71193e = z10;
    }

    @Override // z0.c
    public t0.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.i iVar, com.airbnb.lottie.model.layer.a aVar) {
        return new t0.o(lottieDrawable, aVar, this);
    }

    public y0.b b() {
        return this.f71192d;
    }

    public String c() {
        return this.f71189a;
    }

    public o<PointF, PointF> d() {
        return this.f71190b;
    }

    public o<PointF, PointF> e() {
        return this.f71191c;
    }

    public boolean f() {
        return this.f71193e;
    }

    public String toString() {
        return "RectangleShape{position=" + this.f71190b + ", size=" + this.f71191c + '}';
    }
}
