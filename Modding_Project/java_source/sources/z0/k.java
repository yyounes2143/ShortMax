package z0;

import com.airbnb.lottie.LottieDrawable;
import java.util.Arrays;
import java.util.List;
/* compiled from: ShapeGroup.java */
/* loaded from: classes2.dex */
public class k implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f71210a;

    /* renamed from: b  reason: collision with root package name */
    private final List<c> f71211b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f71212c;

    public k(String str, List<c> list, boolean z10) {
        this.f71210a = str;
        this.f71211b = list;
        this.f71212c = z10;
    }

    @Override // z0.c
    public t0.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.i iVar, com.airbnb.lottie.model.layer.a aVar) {
        return new t0.d(lottieDrawable, aVar, this, iVar);
    }

    public List<c> b() {
        return this.f71211b;
    }

    public String c() {
        return this.f71210a;
    }

    public boolean d() {
        return this.f71212c;
    }

    public String toString() {
        return "ShapeGroup{name='" + this.f71210a + "' Shapes: " + Arrays.toString(this.f71211b.toArray()) + '}';
    }
}
