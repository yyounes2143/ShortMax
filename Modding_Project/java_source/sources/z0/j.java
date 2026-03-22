package z0;

import android.graphics.Path;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
/* compiled from: ShapeFill.java */
/* loaded from: classes2.dex */
public class j implements c {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f71204a;

    /* renamed from: b  reason: collision with root package name */
    private final Path.FillType f71205b;

    /* renamed from: c  reason: collision with root package name */
    private final String f71206c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final y0.a f71207d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final y0.d f71208e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f71209f;

    public j(String str, boolean z10, Path.FillType fillType, @Nullable y0.a aVar, @Nullable y0.d dVar, boolean z11) {
        this.f71206c = str;
        this.f71204a = z10;
        this.f71205b = fillType;
        this.f71207d = aVar;
        this.f71208e = dVar;
        this.f71209f = z11;
    }

    @Override // z0.c
    public t0.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.i iVar, com.airbnb.lottie.model.layer.a aVar) {
        return new t0.g(lottieDrawable, aVar, this);
    }

    @Nullable
    public y0.a b() {
        return this.f71207d;
    }

    public Path.FillType c() {
        return this.f71205b;
    }

    public String d() {
        return this.f71206c;
    }

    @Nullable
    public y0.d e() {
        return this.f71208e;
    }

    public boolean f() {
        return this.f71209f;
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.f71204a + '}';
    }
}
