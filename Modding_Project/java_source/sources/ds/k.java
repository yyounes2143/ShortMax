package ds;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StackWalkingFailedFrame.kt */
@Metadata
/* loaded from: classes8.dex */
public final class k implements kotlin.coroutines.jvm.internal.c, rs.c<?> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final k f50587a = new k();

    private k() {
    }

    @Override // kotlin.coroutines.jvm.internal.c
    @Nullable
    public kotlin.coroutines.jvm.internal.c getCallerFrame() {
        return null;
    }

    @Override // rs.c
    @NotNull
    public CoroutineContext getContext() {
        return EmptyCoroutineContext.f61040a;
    }

    @Override // rs.c
    public void resumeWith(@NotNull Object obj) {
        j.f50586a.a();
    }
}
