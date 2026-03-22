package n0;

import android.view.View;
import coil.size.ViewSizeResolver;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealViewSizeResolver.kt */
@Metadata
/* loaded from: classes2.dex */
public final class f<T extends View> implements ViewSizeResolver<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final T f62720a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f62721b;

    public f(@NotNull T t10, boolean z10) {
        this.f62720a = t10;
        this.f62721b = z10;
    }

    @Override // coil.size.ViewSizeResolver
    public boolean a() {
        return this.f62721b;
    }

    @Override // n0.h
    @Nullable
    public Object b(@NotNull rs.c<? super g> cVar) {
        return ViewSizeResolver.DefaultImpls.h(this, cVar);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (Intrinsics.areEqual(getView(), fVar.getView()) && a() == fVar.a()) {
                return true;
            }
        }
        return false;
    }

    @Override // coil.size.ViewSizeResolver
    @NotNull
    public T getView() {
        return this.f62720a;
    }

    public int hashCode() {
        return (getView().hashCode() * 31) + Boolean.hashCode(a());
    }
}
