package androidx.lifecycle;

import gt.s0;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineLiveData.kt */
@Metadata
/* loaded from: classes2.dex */
public interface LiveDataScope<T> {
    @Nullable
    Object emit(T t10, @NotNull rs.c<? super Unit> cVar);

    @Nullable
    Object emitSource(@NotNull LiveData<T> liveData, @NotNull rs.c<? super s0> cVar);

    @Nullable
    T getLatestValue();
}
