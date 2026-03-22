package kt;

import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SharedFlow.kt */
@Metadata
/* loaded from: classes8.dex */
public interface d<T> extends f<T>, c<T> {
    void d();

    @Nullable
    Object emit(T t10, @NotNull rs.c<? super Unit> cVar);

    boolean g(T t10);

    @NotNull
    i<Integer> h();
}
