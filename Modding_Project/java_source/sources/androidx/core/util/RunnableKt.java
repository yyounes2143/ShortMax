package androidx.core.util;

import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
/* compiled from: Runnable.kt */
@Metadata
/* loaded from: classes.dex */
public final class RunnableKt {
    @NotNull
    public static final Runnable asRunnable(@NotNull rs.c<? super Unit> cVar) {
        return new ContinuationRunnable(cVar);
    }
}
