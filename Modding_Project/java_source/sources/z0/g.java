package z0;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import t0.p;
import y0.n;
/* compiled from: Repeater.java */
/* loaded from: classes2.dex */
public class g implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f71194a;

    /* renamed from: b  reason: collision with root package name */
    private final y0.b f71195b;

    /* renamed from: c  reason: collision with root package name */
    private final y0.b f71196c;

    /* renamed from: d  reason: collision with root package name */
    private final n f71197d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f71198e;

    public g(String str, y0.b bVar, y0.b bVar2, n nVar, boolean z10) {
        this.f71194a = str;
        this.f71195b = bVar;
        this.f71196c = bVar2;
        this.f71197d = nVar;
        this.f71198e = z10;
    }

    @Override // z0.c
    @Nullable
    public t0.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.i iVar, com.airbnb.lottie.model.layer.a aVar) {
        return new p(lottieDrawable, aVar, this);
    }

    public y0.b b() {
        return this.f71195b;
    }

    public String c() {
        return this.f71194a;
    }

    public y0.b d() {
        return this.f71196c;
    }

    public n e() {
        return this.f71197d;
    }

    public boolean f() {
        return this.f71198e;
    }
}
