package u0;

import android.graphics.Color;
import android.graphics.Matrix;
import androidx.annotation.Nullable;
import u0.a;
/* compiled from: DropShadowKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class c implements a.b {

    /* renamed from: a  reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f67719a;

    /* renamed from: b  reason: collision with root package name */
    private final a.b f67720b;

    /* renamed from: c  reason: collision with root package name */
    private final u0.a<Integer, Integer> f67721c;

    /* renamed from: d  reason: collision with root package name */
    private final d f67722d;

    /* renamed from: e  reason: collision with root package name */
    private final d f67723e;

    /* renamed from: f  reason: collision with root package name */
    private final d f67724f;

    /* renamed from: g  reason: collision with root package name */
    private final d f67725g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Matrix f67726h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DropShadowKeyframeAnimation.java */
    /* loaded from: classes2.dex */
    public class a extends e1.c<Float> {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ e1.c f67727d;

        a(e1.c cVar) {
            this.f67727d = cVar;
        }

        @Override // e1.c
        @Nullable
        /* renamed from: d */
        public Float a(e1.b<Float> bVar) {
            Float f10 = (Float) this.f67727d.a(bVar);
            if (f10 == null) {
                return null;
            }
            return Float.valueOf(f10.floatValue() * 2.55f);
        }
    }

    public c(a.b bVar, com.airbnb.lottie.model.layer.a aVar, c1.j jVar) {
        this.f67720b = bVar;
        this.f67719a = aVar;
        u0.a<Integer, Integer> a10 = jVar.a().a();
        this.f67721c = a10;
        a10.a(this);
        aVar.j(a10);
        d a11 = jVar.d().a();
        this.f67722d = a11;
        a11.a(this);
        aVar.j(a11);
        d a12 = jVar.b().a();
        this.f67723e = a12;
        a12.a(this);
        aVar.j(a12);
        d a13 = jVar.c().a();
        this.f67724f = a13;
        a13.a(this);
        aVar.j(a13);
        d a14 = jVar.e().a();
        this.f67725g = a14;
        a14.a(this);
        aVar.j(a14);
    }

    public com.airbnb.lottie.utils.a a(Matrix matrix, int i10) {
        float floatValue = this.f67724f.h().floatValue();
        double r10 = this.f67723e.r() * 0.017453292f;
        float sin = ((float) Math.sin(r10)) * floatValue;
        float cos = ((float) Math.cos(r10 + 3.141592653589793d)) * floatValue;
        float floatValue2 = this.f67725g.h().floatValue();
        int intValue = this.f67721c.h().intValue();
        com.airbnb.lottie.utils.a aVar = new com.airbnb.lottie.utils.a(floatValue2 * 0.33f, sin, cos, Color.argb(Math.round((this.f67722d.h().floatValue() * i10) / 255.0f), Color.red(intValue), Color.green(intValue), Color.blue(intValue)));
        aVar.k(matrix);
        if (this.f67726h == null) {
            this.f67726h = new Matrix();
        }
        this.f67719a.f4649x.i().invert(this.f67726h);
        aVar.k(this.f67726h);
        return aVar;
    }

    public void b(@Nullable e1.c<Integer> cVar) {
        this.f67721c.o(cVar);
    }

    public void c(@Nullable e1.c<Float> cVar) {
        this.f67723e.o(cVar);
    }

    public void d(@Nullable e1.c<Float> cVar) {
        this.f67724f.o(cVar);
    }

    public void e(@Nullable e1.c<Float> cVar) {
        if (cVar == null) {
            this.f67722d.o(null);
        } else {
            this.f67722d.o(new a(cVar));
        }
    }

    @Override // u0.a.b
    public void f() {
        this.f67720b.f();
    }

    public void g(@Nullable e1.c<Float> cVar) {
        this.f67725g.o(cVar);
    }
}
