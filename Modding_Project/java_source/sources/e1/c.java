package e1;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
/* compiled from: LottieValueCallback.java */
/* loaded from: classes2.dex */
public class c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final b<T> f50746a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private u0.a<?, ?> f50747b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    protected T f50748c;

    public c() {
        this.f50746a = new b<>();
        this.f50748c = null;
    }

    @Nullable
    public T a(b<T> bVar) {
        return this.f50748c;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final T b(float f10, float f11, T t10, T t11, float f12, float f13, float f14) {
        return a(this.f50746a.h(f10, f11, t10, t11, f12, f13, f14));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final void c(@Nullable u0.a<?, ?> aVar) {
        this.f50747b = aVar;
    }

    public c(@Nullable T t10) {
        this.f50746a = new b<>();
        this.f50748c = t10;
    }
}
