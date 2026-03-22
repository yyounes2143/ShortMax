package ds;

import at.n;
import io.ktor.util.pipeline.DebugPipelineContext;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PipelineContext.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d {
    @NotNull
    public static final <TSubject, TContext> c<TSubject, TContext> a(@NotNull TContext context, @NotNull List<? extends n<? super c<TSubject, TContext>, ? super TSubject, ? super rs.c<? super Unit>, ? extends Object>> interceptors, @NotNull TSubject subject, @NotNull CoroutineContext coroutineContext, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        Intrinsics.checkNotNullParameter(subject, "subject");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        if (!e.a() && !z10) {
            return new l(subject, context, interceptors);
        }
        return new DebugPipelineContext(context, interceptors, subject, coroutineContext);
    }
}
