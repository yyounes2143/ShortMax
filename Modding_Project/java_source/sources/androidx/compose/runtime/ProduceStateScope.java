package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProduceState.kt */
@Metadata
/* loaded from: classes.dex */
public interface ProduceStateScope<T> extends MutableState<T>, gt.g0 {
    @Nullable
    Object awaitDispose(@NotNull Function0<Unit> function0, @NotNull rs.c<?> cVar);

    @Override // gt.g0
    @NotNull
    /* synthetic */ CoroutineContext getCoroutineContext();
}
