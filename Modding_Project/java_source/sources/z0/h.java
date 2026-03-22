package z0;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import t0.q;
import y0.o;
/* compiled from: RoundedCorners.java */
/* loaded from: classes2.dex */
public class h implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f71199a;

    /* renamed from: b  reason: collision with root package name */
    private final o<Float, Float> f71200b;

    public h(String str, o<Float, Float> oVar) {
        this.f71199a = str;
        this.f71200b = oVar;
    }

    @Override // z0.c
    @Nullable
    public t0.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.i iVar, com.airbnb.lottie.model.layer.a aVar) {
        return new q(lottieDrawable, aVar, this);
    }

    public o<Float, Float> b() {
        return this.f71200b;
    }

    public String c() {
        return this.f71199a;
    }
}
