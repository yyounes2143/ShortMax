package kt;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SharedFlow.kt */
@Metadata
/* loaded from: classes8.dex */
public interface f<T> extends b<T> {
    @Override // kt.b
    @Nullable
    Object collect(@NotNull c<? super T> cVar, @NotNull rs.c<?> cVar2);
}
