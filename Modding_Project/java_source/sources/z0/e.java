package z0;

import android.graphics.Path;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.GradientType;
/* compiled from: GradientFill.java */
/* loaded from: classes2.dex */
public class e implements c {

    /* renamed from: a  reason: collision with root package name */
    private final GradientType f71179a;

    /* renamed from: b  reason: collision with root package name */
    private final Path.FillType f71180b;

    /* renamed from: c  reason: collision with root package name */
    private final y0.c f71181c;

    /* renamed from: d  reason: collision with root package name */
    private final y0.d f71182d;

    /* renamed from: e  reason: collision with root package name */
    private final y0.f f71183e;

    /* renamed from: f  reason: collision with root package name */
    private final y0.f f71184f;

    /* renamed from: g  reason: collision with root package name */
    private final String f71185g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final y0.b f71186h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final y0.b f71187i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f71188j;

    public e(String str, GradientType gradientType, Path.FillType fillType, y0.c cVar, y0.d dVar, y0.f fVar, y0.f fVar2, y0.b bVar, y0.b bVar2, boolean z10) {
        this.f71179a = gradientType;
        this.f71180b = fillType;
        this.f71181c = cVar;
        this.f71182d = dVar;
        this.f71183e = fVar;
        this.f71184f = fVar2;
        this.f71185g = str;
        this.f71186h = bVar;
        this.f71187i = bVar2;
        this.f71188j = z10;
    }

    @Override // z0.c
    public t0.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.i iVar, com.airbnb.lottie.model.layer.a aVar) {
        return new t0.h(lottieDrawable, iVar, aVar, this);
    }

    public y0.f b() {
        return this.f71184f;
    }

    public Path.FillType c() {
        return this.f71180b;
    }

    public y0.c d() {
        return this.f71181c;
    }

    public GradientType e() {
        return this.f71179a;
    }

    public String f() {
        return this.f71185g;
    }

    public y0.d g() {
        return this.f71182d;
    }

    public y0.f h() {
        return this.f71183e;
    }

    public boolean i() {
        return this.f71188j;
    }
}
