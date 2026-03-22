package ds;

import gt.g0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PipelineContext.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class c<TSubject, TContext> implements g0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final TContext f50580a;

    public c(@NotNull TContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f50580a = context;
    }

    @Nullable
    public abstract Object a(@NotNull TSubject tsubject, @NotNull rs.c<? super TSubject> cVar);

    @NotNull
    public final TContext b() {
        return this.f50580a;
    }

    @Nullable
    public abstract Object c(@NotNull rs.c<? super TSubject> cVar);

    @Nullable
    public abstract Object d(@NotNull TSubject tsubject, @NotNull rs.c<? super TSubject> cVar);
}
