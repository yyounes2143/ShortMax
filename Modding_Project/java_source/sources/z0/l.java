package z0;

import com.airbnb.lottie.LottieDrawable;
import t0.r;
/* compiled from: ShapePath.java */
/* loaded from: classes2.dex */
public class l implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f71213a;

    /* renamed from: b  reason: collision with root package name */
    private final int f71214b;

    /* renamed from: c  reason: collision with root package name */
    private final y0.h f71215c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f71216d;

    public l(String str, int i10, y0.h hVar, boolean z10) {
        this.f71213a = str;
        this.f71214b = i10;
        this.f71215c = hVar;
        this.f71216d = z10;
    }

    @Override // z0.c
    public t0.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.i iVar, com.airbnb.lottie.model.layer.a aVar) {
        return new r(lottieDrawable, aVar, this);
    }

    public String b() {
        return this.f71213a;
    }

    public y0.h c() {
        return this.f71215c;
    }

    public boolean d() {
        return this.f71216d;
    }

    public String toString() {
        return "ShapePath{name=" + this.f71213a + ", index=" + this.f71214b + '}';
    }
}
