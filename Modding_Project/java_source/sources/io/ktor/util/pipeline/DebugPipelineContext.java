package io.ktor.util.pipeline;

import at.n;
import ds.c;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DebugPipelineContext.kt */
@Metadata
/* loaded from: classes8.dex */
public final class DebugPipelineContext<TSubject, TContext> extends c<TSubject, TContext> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final List<n<c<TSubject, TContext>, TSubject, rs.c<? super Unit>, Object>> f59314b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final CoroutineContext f59315c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private TSubject f59316d;

    /* renamed from: e  reason: collision with root package name */
    private int f59317e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DebugPipelineContext(@NotNull TContext context, @NotNull List<? extends n<? super c<TSubject, TContext>, ? super TSubject, ? super rs.c<? super Unit>, ? extends Object>> interceptors, @NotNull TSubject subject, @NotNull CoroutineContext coroutineContext) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        Intrinsics.checkNotNullParameter(subject, "subject");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        this.f59314b = interceptors;
        this.f59315c = coroutineContext;
        this.f59316d = subject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(rs.c<? super TSubject> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof io.ktor.util.pipeline.DebugPipelineContext$proceedLoop$1
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.util.pipeline.DebugPipelineContext$proceedLoop$1 r0 = (io.ktor.util.pipeline.DebugPipelineContext$proceedLoop$1) r0
            int r1 = r0.f59321k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59321k = r1
            goto L18
        L13:
            io.ktor.util.pipeline.DebugPipelineContext$proceedLoop$1 r0 = new io.ktor.util.pipeline.DebugPipelineContext$proceedLoop$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f59319i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59321k
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r2 = r0.f59318h
            io.ktor.util.pipeline.DebugPipelineContext r2 = (io.ktor.util.pipeline.DebugPipelineContext) r2
            kotlin.f.b(r7)
            goto L39
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L35:
            kotlin.f.b(r7)
            r2 = r6
        L39:
            int r7 = r2.f59317e
            r4 = -1
            if (r7 != r4) goto L3f
            goto L4a
        L3f:
            java.util.List<at.n<ds.c<TSubject, TContext>, TSubject, rs.c<? super kotlin.Unit>, java.lang.Object>> r4 = r2.f59314b
            int r5 = r4.size()
            if (r7 < r5) goto L4f
            r2.f()
        L4a:
            java.lang.Object r7 = r2.g()
            return r7
        L4f:
            java.lang.Object r4 = r4.get(r7)
            at.n r4 = (at.n) r4
            int r7 = r7 + 1
            r2.f59317e = r7
            java.lang.String r7 = "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.coroutines.SuspendFunction2<io.ktor.util.pipeline.PipelineContext<TSubject of io.ktor.util.pipeline.DebugPipelineContext, TContext of io.ktor.util.pipeline.DebugPipelineContext>, TSubject of io.ktor.util.pipeline.DebugPipelineContext, kotlin.Unit>{ io.ktor.util.pipeline.PipelineKt.PipelineInterceptor<TSubject of io.ktor.util.pipeline.DebugPipelineContext, TContext of io.ktor.util.pipeline.DebugPipelineContext> }"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4, r7)
            java.lang.Object r7 = r2.g()
            r0.f59318h = r2
            r0.f59321k = r3
            java.lang.Object r7 = r4.invoke(r2, r7, r0)
            if (r7 != r1) goto L39
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.util.pipeline.DebugPipelineContext.h(rs.c):java.lang.Object");
    }

    @Override // ds.c
    @Nullable
    public Object a(@NotNull TSubject tsubject, @NotNull rs.c<? super TSubject> cVar) {
        this.f59317e = 0;
        i(tsubject);
        return c(cVar);
    }

    @Override // ds.c
    @Nullable
    public Object c(@NotNull rs.c<? super TSubject> cVar) {
        int i10 = this.f59317e;
        if (i10 < 0) {
            return g();
        }
        if (i10 >= this.f59314b.size()) {
            f();
            return g();
        }
        return h(cVar);
    }

    @Override // ds.c
    @Nullable
    public Object d(@NotNull TSubject tsubject, @NotNull rs.c<? super TSubject> cVar) {
        i(tsubject);
        return c(cVar);
    }

    public void f() {
        this.f59317e = -1;
    }

    @NotNull
    public TSubject g() {
        return this.f59316d;
    }

    @Override // gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.f59315c;
    }

    public void i(@NotNull TSubject tsubject) {
        Intrinsics.checkNotNullParameter(tsubject, "<set-?>");
        this.f59316d = tsubject;
    }
}
