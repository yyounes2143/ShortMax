package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
/* compiled from: ContinuationImpl.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b implements rs.c<Object> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f61050a = new b();

    private b() {
    }

    @Override // rs.c
    @NotNull
    public CoroutineContext getContext() {
        throw new IllegalStateException("This continuation is already complete");
    }

    @Override // rs.c
    public void resumeWith(@NotNull Object obj) {
        throw new IllegalStateException("This continuation is already complete");
    }

    @NotNull
    public String toString() {
        return "This continuation is already complete";
    }
}
