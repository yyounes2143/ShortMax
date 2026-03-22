package io.ktor.util.pipeline;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DebugPipelineContext.kt */
@Metadata
@d(c = "io.ktor.util.pipeline.DebugPipelineContext", f = "DebugPipelineContext.kt", l = {80}, m = "proceedLoop")
/* loaded from: classes8.dex */
public final class DebugPipelineContext$proceedLoop$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59318h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f59319i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DebugPipelineContext<TSubject, TContext> f59320j;

    /* renamed from: k  reason: collision with root package name */
    int f59321k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DebugPipelineContext$proceedLoop$1(DebugPipelineContext<TSubject, TContext> debugPipelineContext, c<? super DebugPipelineContext$proceedLoop$1> cVar) {
        super(cVar);
        this.f59320j = debugPipelineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object h10;
        this.f59319i = obj;
        this.f59321k |= Integer.MIN_VALUE;
        h10 = this.f59320j.h(this);
        return h10;
    }
}
