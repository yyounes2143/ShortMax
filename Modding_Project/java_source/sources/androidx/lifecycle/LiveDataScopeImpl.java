package androidx.lifecycle;

import android.annotation.SuppressLint;
import gt.q0;
import gt.s0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineLiveData.kt */
@Metadata
/* loaded from: classes2.dex */
public final class LiveDataScopeImpl<T> implements LiveDataScope<T> {
    @NotNull
    private final CoroutineContext coroutineContext;
    @NotNull
    private CoroutineLiveData<T> target;

    public LiveDataScopeImpl(@NotNull CoroutineLiveData<T> target, @NotNull CoroutineContext context) {
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(context, "context");
        this.target = target;
        this.coroutineContext = context.plus(q0.c().m());
    }

    @Override // androidx.lifecycle.LiveDataScope
    @SuppressLint({"NullSafeMutableLiveData"})
    @Nullable
    public Object emit(T t10, @NotNull rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(this.coroutineContext, new LiveDataScopeImpl$emit$2(this, t10, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    @Override // androidx.lifecycle.LiveDataScope
    @Nullable
    public Object emitSource(@NotNull LiveData<T> liveData, @NotNull rs.c<? super s0> cVar) {
        return gt.e.g(this.coroutineContext, new LiveDataScopeImpl$emitSource$2(this, liveData, null), cVar);
    }

    @Override // androidx.lifecycle.LiveDataScope
    @Nullable
    public T getLatestValue() {
        return this.target.getValue();
    }

    @NotNull
    public final CoroutineLiveData<T> getTarget$lifecycle_livedata_release() {
        return this.target;
    }

    public final void setTarget$lifecycle_livedata_release(@NotNull CoroutineLiveData<T> coroutineLiveData) {
        Intrinsics.checkNotNullParameter(coroutineLiveData, "<set-?>");
        this.target = coroutineLiveData;
    }
}
